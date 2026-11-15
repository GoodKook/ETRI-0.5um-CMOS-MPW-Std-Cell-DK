#!/usr/bin/env python3
"""Isolated CTS / routed LEF-RC / annotation experiment. No POST-STA pass claim."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
DIG = 'NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR'

def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()

def dump(p, x):
    p.write_text(json.dumps(x, indent=2, ensure_ascii=False)+'\n')

def preservation(pdk):
    roots = [pdk, REPO/'digital_ETRI', REPO/'digital_ETRI050_m1f', REPO/'digital_ETRI050_m2f', REPO/'tech']
    files = {str(p): sha(p) for root in roots for p in sorted(root.rglob('*')) if p.is_file()}
    shared = Path('/usr/local/share/qflow/tech/etri050')
    links = {str(p): [os.readlink(p) if p.is_symlink() else None, sha(p)] for p in shared.iterdir() if p.is_file()}
    h = Path.home()/'ETRI050_DesignKit'
    links[str(h)] = [os.readlink(h), str(h.resolve())]
    return dict(files=files, links=links)

def run(cmd, out, name, env=None, check=True):
    r = subprocess.run([str(v) for v in cmd], cwd=out, env=env, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,timeout=180)
    (out/(name+'.log')).write_text(r.stdout)
    with (out/'commands.jsonl').open('a') as f:
        f.write(json.dumps(dict(cwd=str(out),argv=[str(v) for v in cmd],returncode=r.returncode,log=name+'.log'))+'\n')
    if check and r.returncode:
        raise RuntimeError(f'{name}: exit {r.returncode}; see {out}/{name}.log')
    return r.stdout

def prepare(out, pdk):
    dig = pdk/DIG
    inputs = {}
    # Start from original LEF. Keep IMPLANT; omit only unsupported device via.
    tech = next((dig/'LEF').glob('*tech.lef'))
    cells = next((dig/'LEF').glob('*std.lef'))
    lib = next((dig/'LIB').glob('*.lib'))
    for p in [tech,cells,lib,*sorted((dig/'Util').glob('*.tcl')),
              *sorted((dig/'TECH').glob('*.itf')),*sorted((dig/'TLU').glob('*')),
              *sorted((pdk/'Assura/QRC/typical').glob('*.ict')),
              pdk/'Assura/QRC/typical/p2lvsfile',
              *sorted((pdk/'Calibre/PEX/MIPT').glob('*')),
              *sorted((pdk/'Calibre/PEX/LPE_LIB').glob('*'))]:
        inputs[str(p.relative_to(pdk))] = sha(p)
    shutil.copyfile(lib,out/'cells.lib')
    s = cells.read_text()
    for c in ['FAX1','HAX1']:
        s,n = re.subn(r'(^MACRO '+c+r'\n.*?^  PIN S\n\s+DIRECTION )INPUT',r'\g<1>OUTPUT',s,flags=re.M|re.S)
        assert n == 1
    (out/'cells.lef').write_text(s)
    # Deliberately simple parallel plate C to ground; NO coupling/fringe model.
    # RPSQ from digital ITF; um geometry as corroborated by LEF/MIPT LPE units.
    # This is an experiment-only estimate, NOT a validated ICT/MIPT conversion.
    s = tech.read_text()
    s,n = re.subn(r'(?m)^VIARULE V01 GENERATE DEFAULT\n.*?^END V01\n','',s,flags=re.S)
    assert n == 1  # DRT-0129: POLY1 device via, unused by standard-cell routes.
    rc = {}
    for layer,rsq,h in [('MET1',0.08,0.6),('MET2',0.08,2.0),('MET3',0.05,3.1)]:
        ca = 8.8541878128e-6*4/h  # pF / um^2, epsilon_0 * ER / h
        pat = r'(?m)(^LAYER '+layer+r'\n.*?)(^END '+layer+r'\n)'
        s,n = re.subn(pat,lambda m: m[1]+f'  RESISTANCE RPERSQ {rsq} ;\n  CAPACITANCE CPERSQDIST {ca:.12g} ;\n'+m[2],s,flags=re.S)
        assert n == 1
        rc[layer] = dict(R_ohm_per_square=rsq,C_pF_per_um2=ca,assumed_ground_height_um=h,ER=4)
    # Explicit default vias, geometrically identical to V12/V23 GENERATE.
    vias=''
    for lo,cut,hi in [('MET1','VIA1','MET2'),('MET2','VIA2','MET3')]:
        vias+=f'VIA M10_{cut} DEFAULT\n  LAYER {lo} ;\n    RECT -1 -1 1 1 ;\n  LAYER {cut} ;\n    RECT -0.4 -0.4 0.4 0.4 ;\n  LAYER {hi} ;\n    RECT -1 -1 1 1 ;\nEND M10_{cut}\n'
    assert s.count('END LIBRARY')==1
    s=s.replace('END LIBRARY',vias+'END LIBRARY')
    (out/'technology.lef').write_text(s)
    # Use the already verified unbuffered functional netlist, then route afresh.
    src = REPO/'development/experiments/M0-09-qflow/results/synthesis/route.v'
    s = src.read_text()
    for net,value in [('VDD','1'),('VSS','0')]:
        assert len(re.findall(r'\b'+net+r'\b',s)) == 1, 'only unused power aliases may be omitted'
        s,n = re.subn(r"(?m)^wire "+net+r" = 1'b"+value+r";\n",'',s)
        assert n == 1
    (out/'input.v').write_text(s)
    inputs[str(src.relative_to(REPO))] = sha(src)
    sdc = next(p for p in (dig/'SDC').glob('*') if 'shift' in p.name)
    s = sdc.read_text()
    # Preserve the vendor timing budgets; expose reset recovery/removal instead
    # of silently inheriting its blanket reset false path.
    s,n = re.subn(r'(?m)^set_false_path -from \[get_ports rst_n\]\s*$', '# M0-10: reset checks retained; no false path',s)
    assert n == 1
    s += '\nset_input_transition 0.1 [get_ports {clk rst_n}]\n'
    (out/'constraints.sdc').write_text(s)
    inputs[str(sdc.relative_to(pdk))] = sha(sdc)
    shutil.copyfile(HERE/'flow.tcl',out/'flow.tcl')
    shutil.copyfile(HERE/'extract.tcl',out/'extract.tcl')
    s = (out/'technology.lef').read_text()
    for layer in ['NSD','PSD']:
        s,n = re.subn(r'(?m)^LAYER '+layer+r'\n.*?^END '+layer+r'\n','',s,flags=re.S)
        assert n == 1
    (out/'qrouter.lef').write_text(s)
    (out/'route.cfg').write_text('''verbose 1
read_lef qrouter.lef
read_lef cells.lef
layers 3
via stack all
vdd VDD
gnd VSS
read_def qrouter-input.def
ignore VDD VSS
priority clk clknet_0_clk clknet_1_0__leaf_clk clknet_1_1__leaf_clk
qrouter::standard_route qrouter-raw.def false
quit
''')
    dump(out/'inputs.json',dict(originals=inputs,derived={p.name:sha(p) for p in out.iterdir() if p.is_file()},rc_status='estimated',rc=rc,
         limitations=['No calibrated extraction rules','Parallel plate ground C only; no coupling/fringe','ITF via R not yet included in LEF estimate','Not a qualified RC corner']))

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--pdk-root',type=Path,default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    p.add_argument('--out',type=Path,default=HERE/'results')
    p.add_argument('--openroad-root',type=Path,default=REPO/'.cache/M0-10/openroad')
    a = p.parse_args(); out=a.out.resolve(); root=a.openroad_root.resolve(); pdk=a.pdk_root.resolve()
    if not (out.is_relative_to(HERE) or out.is_relative_to(Path('/tmp'))):
        p.error('output must be inside this experiment or /tmp')
    out.mkdir(parents=True,exist_ok=False)
    before = preservation(pdk)
    dump(out/'preservation-before.json',dict(files=len(before['files']),
         digest=hashlib.sha256(json.dumps(before,sort_keys=True).encode()).hexdigest(),shared_links=before['links']))
    env = os.environ.copy()
    env['LD_LIBRARY_PATH'] = ':'.join([str(root/'opt/or-tools/lib'),str(root/'usr/lib/x86_64-linux-gnu'),env.get('LD_LIBRARY_PATH','')])
    exe=root/'usr/bin/openroad'
    source=out/'repro-source';source.mkdir()
    for f in HERE.iterdir():
        if f.suffix in ['.py','.tcl']:shutil.copyfile(f,source/f.name)
    dump(out/'run.json',dict(date=datetime.now(timezone.utc).isoformat(),openroad=str(exe),binary_sha256=sha(exe),
         scripts={p.name:sha(p) for p in HERE.glob('*.py')},flow_sha256=sha(HERE/'flow.tcl'),LD_LIBRARY_PATH=env['LD_LIBRARY_PATH']))
    result=dict(cts='not_executed',route='not_executed',RC='blocked',POST_STA='blocked',
                SDF='not_selected',SPEF='selected; physical extraction not validated')
    try:
        run([exe,'-version'],out,'version-openroad',env)
        for tool,args in [('sta',['-version']),('yosys',['-V']),('qrouter',['-h']),('iverilog',['-V']),('vvp',['-V']),('klayout',['-v'])]:
            binary=Path(shutil.which(tool));result.setdefault('tools',{})[tool]=dict(path=str(binary),sha256=sha(binary))
            run([tool,*args],out,'version-'+tool,check=False)
        prepare(out,pdk)
        run([exe,'-no_init','-exit','flow.tcl'],out,'openroad',env)
        result['cts']='topology_generated'
        from verify import verify
        verify(out,pdk)
        result['CTS_function_and_clock_trace']='passed; 8 sinks / positive polarity / inactive S'
        result['annotation_harness']='passed on synthetic fixtures only'
        # Test the native router with proper default via geometry; do not erase OBS.
        (out/'direct-route.tcl').write_text('''read_lef technology.lef
read_lef cells.lef
read_liberty cells.lib
read_db preroute.odb
read_sdc constraints.sdc
set_wire_rc -signal -layer MET2
set_wire_rc -clock -layer MET3
set_routing_layers -signal MET1-MET3 -clock MET1-MET3
global_route
detailed_route -output_drc direct-drc.rpt -verbose 0
write_def direct-final.def
''')
        run([exe,'-no_init','-exit','direct-route.tcl'],out,'direct-route',env,check=False)
        # Probe OpenRCX against M0-09's complete routed DEF, independently of
        # the failed CTS route. A calibrated NSPL model has NOT been supplied.
        known=REPO/'development/experiments/M0-09-qflow/results/layout/handoff.def'
        (out/'rcx-probe.tcl').write_text(f'''read_lef technology.lef
read_lef cells.lef
read_def {{{known}}}
define_process_corner -ext_model_index 0 estimated_LEF
extract_parasitics -lef_rc
write_spef rcx-probe.spef
''')
        run([exe,'-no_init','-exit','rcx-probe.tcl'],out,'rcx-probe',env,check=False)
        result['RCX_probe']='executed; inspect rcx-probe.log; no qualified model'
        from def_adapter import to_qrouter, from_qrouter
        s,changes=to_qrouter((out/'preroute.def').read_text())
        (out/'qrouter-input.def').write_text(s)
        dump(out/'qrouter-input-adapter.json',changes)
        log=run(['qrouter','-nog','-noc','-s','route.cfg'],out,'qrouter')
        s,changes=from_qrouter((out/'qrouter-raw.def').read_text())
        (out/'partial-routed.def').write_text(s)
        dump(out/'def-adapter.json',changes)
        from boundary import check
        dump(out/'boundary.json',check((out/'preroute.def').read_text(),(out/'qrouter-input.def').read_text(),s,
             json.loads((out/'annotation-probe/mapped.json').read_text())))
        if 'No failed routes!' not in log and not re.search(r'Final: Failed net routes: 0\b',log):
            raise RuntimeError('QRouter did not report all routes complete (exit 0 is insufficient)')
        (out/'routed.def').write_text(s)
        run([exe,'-no_init','-exit','extract.tcl'],out,'extract',env)
        result['route']='router_reports_complete; geometry not yet validated'
        result['RC']='estimated; not qualified'
    except Exception as e:
        result['failure']=str(e)
        if result['cts']=='topology_generated':result['route']='failed_or_incomplete'
    finally:
        after=preservation(pdk)
        dump(out/'preservation.json',dict(unchanged=before==after,file_count=len(before['files']),shared_links_unchanged=before['links']==after['links']))
        dump(out/'result.json',result)
        assert before == after, 'original/shared data changed'
    print(json.dumps(result,ensure_ascii=False,indent=2))
    # Even a future estimated extraction must not return a POST-STA pass.
    sys.exit(2 if result['cts']=='topology_generated' else 1)

if __name__=='__main__':
    main()
