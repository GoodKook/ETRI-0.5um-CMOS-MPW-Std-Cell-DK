#!/usr/bin/env python3
"""Isolated NSPL 12T QFlow compatibility experiment; never writes shared tech."""
import argparse
import hashlib
import csv
from datetime import datetime, timezone
import json
import importlib.util
import re
from collections import Counter
from adapter import adapt_lef, power_pins, normalize_def
import os
from pathlib import Path
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
STEM = 'NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T'
TOP = 'shift_reg_8bit'

def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()

def dump(p, obj):
    p.write_text(json.dumps(obj, indent=2, ensure_ascii=False)+'\n')

def preserve(root):
    files = {}
    for d in [root, REPO/'digital_ETRI', REPO/'digital_ETRI050_m1f', REPO/'digital_ETRI050_m2f', REPO/'tech']:
        for f in d.rglob('*'):
            if f.is_file():
                files[str(f)] = sha(f)
    shared = Path('/usr/local/share/qflow/tech/etri050')
    links = {str(f):dict(target=os.readlink(f) if f.is_symlink() else None, sha256=sha(f))
             for f in shared.iterdir() if f.is_file()}
    home = Path.home()/'ETRI050_DesignKit'
    links[str(home)] = dict(target=os.readlink(home), resolved=str(home.resolve()))
    return dict(files=files, links=links)

def setup(out, dig):
    for d in ['source','synthesis','layout','log','tech']:
        (out/d).mkdir(parents=True)
    tech = out/'tech'
    for name, src in [('cells.lib',dig/'LIB'/(STEM+'_std_tt.lib')),
                      ('cells.lef',dig/'LEF'/(STEM+'_std.lef')),
                      ('technology.lef',dig/'LEF'/(STEM+'_tech.lef')),
                      ('cells.gds',dig/'GDS'/(STEM+'_std.gds')),
                      ('cells.cdl',dig/'CDL'/(STEM+'_std.cdl'))]:
        if not src.exists() and name=='cells.cdl':
            src=next((dig/'CDL').glob('*'))
        (tech/name).symlink_to(src)
    shutil.copyfile(dig/'VERILOG'/f'{TOP}.v',out/'source'/f'{TOP}.v')
    (tech/'nspl12t.sh').write_text('''# Experiment-only NSPL adapter; no timing RC qualification.
set leffile=cells.lef
set techleffile=technology.lef
set libertyfile=cells.lib
set spicefile=cells.cdl
set gdsfile=cells.gds
set flopcell=DFFPOSX1
set flopsetreset=DFFSRX1
set setpin=S
set resetpin=R
set setpininvert=1
set resetpininvert=1
set floppinout=Q
set floppinin=D
set floppinclk=CLK
set bufcell=BUFX2
set bufpin_in=A
set bufpin_out=Y
set clkbufcell=CLKBUFX1
set clkbufpin_in=A
set clkbufpin_out=Y
set inverter=INVX1
set invertpin_in=A
set invertpin_out=Y
set norgate=NOR2X1
set norpin_in1=A
set norpin_in2=B
set norpin_out=Y
set nandgate=NAND2X1
set nandpin_in1=A
set nandpin_in2=B
set nandpin_out=Y
set fillcell=FILLX1
set decapcell=""
set antennacell=""
set antennapin_in=""
set tiehi=TIEHIX1
set tiehipin_out=Y
set tielo=TIELOX1
set tielopin_out=Y
set separator=""
set vddnet=VDD
set gndnet=VSS
set techfile=""
set magicrc=nspl12t.magicrc
set route_layers=3
set addspacers_options="-stripe 8 100 PG"
''')
    (tech/'nspl12t.magicrc').write_text('# No inherited Magic technology; GDS handoff adapter is separate.\n')
    # RC zeros are explicitly unqualified geometry-only placement weights.
    (tech/'nspl12t.par').write_text('''# GrayWolf distances: centimicrons. RC zero = unavailable, NOT a timing model.
RULES
 layer MET1 0 0 horizontal
 layer MET2 0 0 vertical
 layer MET3 0 0 horizontal
 via VIA12 MET1 MET2
 via VIA23 MET2 MET3
 width MET1 100
 width MET2 100
 width MET3 120
 width VIA12 200
 width VIA23 200
 spacing MET1 MET1 200
 spacing MET2 MET2 220
 spacing MET3 MET3 180
 spacing VIA12 VIA23 120
 overhang VIA12 MET1 60
 overhang VIA12 MET2 60
 overhang VIA23 MET2 60
 overhang VIA23 MET3 60
ENDRULES
*vertical_wire_weight : 1.0
*vertical_path_weight : 1.0
*padspacing : variable
*rowSep : 0.0 0
*track.pitch : 0.0
*minimum_pad_space : 360
*gridX : 320
*gridY : 300
*gridOffsetX : 0
*gridOffsetY : 0
*graphics.wait : off
*last_chance.wait : off
*random.seed : 12345
TWMC*chip.aspect.ratio : 1.0
TWSC*feedThruWidth : 320 layer 1
TWSC*do.global.route : on
TWSC*ignore_feeds : true
TWSC*call_row_evener : true
TWSC*even_rows_maximally : true
GENR*row_to_tile_spacing: 1
GENR*flip_alternate_rows : 1
''')
    (out/'project_vars.sh').write_text('''# Physical compatibility experiment; CTS and timing not qualified.
set nocleanup=1
set nobuffers=1
set fanout_options="-l 1000 -c 30"
set graywolf_options="-n"
''')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--pdk-root',type=Path,default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    p.add_argument('--out',type=Path,required=True)
    p.add_argument('--variant',choices=['baseline','fanout-fixed','adapter'],default='adapter')
    a=p.parse_args()
    out=a.out.resolve(); root=a.pdk_root.resolve(); dig=root/(STEM+'_PnR')
    if not (HERE in out.parents or Path('/tmp') in out.parents) or out.exists():
        p.error('--out must be a NEW directory inside this experiment or /tmp')
    inventory=HERE.parent/'M0-07-pdk-inventory/results/files.csv'
    for row in csv.DictReader(inventory.open()):
        alias,rel=row['path'].split('/',1)
        original={'REPO':REPO,'PDK':root}[alias]/rel
        assert sha(original)==row['sha256'],f'M0-07 inventory changed: {original}'
    before=preserve(dig)
    out.mkdir(parents=True)
    dump(out/'preservation-before.json',before)
    commands=[]
    started=datetime.now(timezone.utc).isoformat()
    sources=out/'repro-source';sources.mkdir()
    for f in HERE.glob('*.py'):shutil.copyfile(f,sources/f.name)
    def run(argv,log,cwd=out,expected=0):
        env=dict(os.environ,QFLOW_TECH_DIR=str(out/'tech'),QT_QPA_PLATFORM='offscreen',M09_OUT=str(out))
        command_started=datetime.now(timezone.utc).isoformat()
        try:
            r=subprocess.run(list(map(str,argv)),cwd=cwd,env=env,stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT,text=True,timeout=180)
            code,output=r.returncode,r.stdout
        except subprocess.TimeoutExpired as e:
            code,output=124,(e.stdout or b'').decode() if isinstance(e.stdout,bytes) else (e.stdout or '')
        (out/log).write_text(output)
        item=dict(argv=list(map(str,argv)),cwd=str(cwd),exit_code=code,log=log,
                  started_utc=command_started,ended_utc=datetime.now(timezone.utc).isoformat(),
                  environment={'QFLOW_TECH_DIR':str(out/'tech'),'QT_QPA_PLATFORM':'offscreen','M09_OUT':str(out)})
        commands.append(item); dump(out/'commands.json',commands)
        print(f'{log}: exit {code}',flush=True)
        if code!=expected:
            raise RuntimeError(f'{log}: exit {code}, expected {expected}')
        return output
    result=dict(compatibility_experiment='failed',full_digital_flow='not_validated',
                CTS='not_performed',RC='unqualified',DRC_LVS='not_performed')
    def verify(stage):
        scope=HERE.parent/'M0-08-sequential/scope-review'
        sys.path.insert(0,str(scope))
        from check_scope import check, liberty
        spec=importlib.util.spec_from_file_location('m08_scope_run',scope/'run.py')
        previous=importlib.util.module_from_spec(spec);spec.loader.exec_module(previous)
        netlist=out/'synthesis'/f'{TOP}.rtlnopwr.v'
        saved=out/'synthesis'/f'{stage}.v';shutil.copyfile(netlist,saved)
        js=out/'synthesis'/f'{stage}.json'
        canonical=out/'synthesis'/f'{stage}-canonical.v'
        script=out/'synthesis'/f'{stage}.ys'
        script.write_text(f"read_liberty -lib {out/'tech/cells.lib'}\nread_verilog {saved}\nhierarchy -check -top {TOP}\ncheck -assert\nselect {TOP}\nwrite_json -selected {js}\nwrite_verilog -selected -noattr {canonical}\n")
        run(['yosys','-Q','-T','-s',script],f'verify-{stage}-read.log')
        design=json.loads(js.read_text());lib=liberty(out/'tech/cells.lib')
        guard=check(design,TOP,lib,json.loads((scope/'profile.json').read_text()))
        assembled=out/'tech/functional-assembled.v'
        patch=json.loads((scope.parent/'results/patch-plan.json').read_text())
        assert sha(assembled)==patch['output_sha256']
        tb=out/'source/tb.v'
        tb.write_text(previous.bench(TOP,previous.stimulus(True)))
        sims={}
        for kind,files,exit_code in [('derived',[canonical,assembled],0),
                ('vendor',[canonical,dig/'VERILOG'/(STEM+'_std.v')],1)]:
            exe=out/'synthesis'/f'{stage}-{kind}.vvp'
            run(['iverilog','-g2012','-s','tb','-o',exe,tb,*files],f'verify-{stage}-{kind}-compile.log')
            log=run(['vvp',exe],f'verify-{stage}-{kind}.log',expected=exit_code)
            m=re.search(r'RESULT checks=(\d+) mismatches=(\d+)',log);assert m
            sims[kind]=dict(checks=int(m[1]),mismatches=int(m[2]))
            assert (int(m[2])==0)==(kind=='derived')
        counts=dict(Counter(c['type'] for c in design['modules'][TOP]['cells'].values()))
        assert counts=={'DFFSRX1':8,'TIEHIX1':8}
        # Power-aware QFlow netlist: explicit pg connections on every cell.
        power=(out/'synthesis'/f'{TOP}.rtl.v').read_text()
        pins={pin:re.findall(r'\.'+pin+r'\((\w+)\)',power) for pin in ['VDD','VSS']}
        assert all(v==[k]*16 for k,v in pins.items()),pins
        result[stage]=dict(guard=guard,cell_counts=counts,simulations=sims,
                           explicit_pg_connections={k:len(v) for k,v in pins.items()})
        dump(out/'result.json',result)
    try:
        setup(out,dig)
        # Reconstruct the validated M0-08 model locally, without relying on
        # ignored generated outputs in the earlier experiment directory.
        seq=HERE.parent/'M0-08-sequential'
        vendor=(dig/'VERILOG'/(STEM+'_std.v')).read_text()
        candidate=(seq/'derived/nspl12t_seq_functional.v').read_text()
        replacements={m[1]:m[0] for m in re.finditer(r'\bmodule\s+(\w+)\b.*?\bendmodule',candidate,re.S)}
        assembled=re.sub(r'\bmodule\s+(\w+)\b.*?\bendmodule',
                         lambda m:replacements.get(m[1],m[0]),vendor,flags=re.S)
        model=out/'tech/functional-assembled.v';model.write_text(assembled)
        assert sha(model)==json.loads((seq/'results/patch-plan.json').read_text())['output_sha256']
        if a.variant=='baseline':
            pv=out/'project_vars.sh';pv.write_text(pv.read_text().replace('set fanout_options="-l 1000 -c 30"','set nofanout=1'))
        if a.variant=='adapter':dump(out/'lef-adapter.json',adapt_lef(out/'tech'))
        for name,args in [('qflow',['--version']),('yosys',['-V']),('graywolf',['-v']),
                          ('qrouter',['-v','0','-h']),('magic',['--version']),('klayout',['-v']),('iverilog',['-V'])]:
            # GrayWolf has no harmless -v; version is recorded from its placement banner.
            if name=='graywolf':continue
            run([name,*args],f'version-{name}.log')
        run(['yosys','-Q','-T','-p',f"read_liberty -lib {out/'tech/cells.lib'}; stat"],'read-cells.log')
        for stage in ['synthesize','place','route']:
            run(['qflow','-T','nspl12t',stage,TOP],f'qflow-{stage}.log')
            verify(stage)
            if stage=='synthesize':
                for kind,files in [('rtl',[out/'source'/f'{TOP}.v'])]:
                    exe=out/'synthesis/rtl.vvp'
                    run(['iverilog','-g2012','-s','tb','-o',exe,out/'source/tb.v',*files],'verify-rtl-compile.log')
                    assert 'mismatches=0' in run(['vvp',exe],'verify-rtl.log')
        if a.variant in ['adapter','fanout-fixed']:
            raw=(out/'layout'/f'{TOP}.def').read_text()
            if a.variant=='fanout-fixed':
                (out/'layout/handoff.def').write_text(raw)
                run(['klayout','-b','-r',HERE/'gds_check.py'],'raw-gds-import.log')
                assert not (out/'gds-error.json').exists(),'unadapted DEF rejected by KLayout; see raw-gds-import.log'
            fixed,changes=normalize_def(raw)
            dump(out/'def-adapter.json',changes)
            fixed,changes=power_pins(fixed)
            dump(out/'power-adapter.json',changes)
            (out/'layout/handoff.def').write_text(fixed)
            run(['klayout','-b','-r',HERE/'gds_check.py'],'gds-check.log')
            assert not (out/'gds-error.json').exists()
            gds=json.loads((out/'gds-check.json').read_text())
            assert gds['status']=='passed'
            route=(out/'log/route.log').read_text()
            assert 'Final: No failed routes!' in route
            assert not re.search(r'encountered [1-9]\d* errors',route)
            assert not (out/'layout/failed.out').exists() or not (out/'layout/failed.out').stat().st_size
            result.update(compatibility_experiment='passed',GDS=gds,
                scope='cell read -> synthesis -> placement -> routing -> KLayout GDS assembly; limited M0-09 only')
    except Exception as e:
        result['failure']=str(e)
        raise
    finally:
        dump(out/'result.json',result)
        after=preserve(dig)
        dump(out/'preservation.json',dict(unchanged=before==after,files=len(before['files']),links=before['links']))
        assert before==after,'original/shared input changed'
        dump(out/'run.json',dict(argv=sys.argv,cwd=str(Path.cwd()),date='2026-11-15',timezone='Asia/Seoul',
             started_utc=started,ended_utc=datetime.now(timezone.utc).isoformat(),inventory_snapshot=sha(inventory),
             source_hashes={f.name:sha(f) for f in HERE.glob('*.py')},
             prerequisite_hashes={str(f.relative_to(REPO)):sha(f) for f in [inventory,
                 HERE.parent/'M0-08-sequential/scope-review/profile.json',
                 HERE.parent/'M0-08-sequential/scope-review/check_scope.py',
                 HERE.parent/'M0-08-sequential/scope-review/run.py',
                 HERE.parent/'M0-08-sequential/derived/nspl12t_seq_functional.v',
                 HERE.parent/'M0-08-sequential/results/patch-plan.json']},
             qflow_installation_hashes={str(f):sha(f) for d in ['/usr/local/share/qflow/scripts','/usr/local/share/qflow/bin'] for f in Path(d).iterdir() if f.is_file()},
             tools={name:dict(path=shutil.which(name),sha256=sha(Path(shutil.which(name)).resolve())) for name in ['qflow','yosys','graywolf','qrouter','magic','klayout','iverilog']},commands=commands,
             artifacts={str(f.relative_to(out)):sha(f) for f in out.rglob('*') if f.is_file() and not f.is_symlink() and f.name!='run.json'}))

if __name__=='__main__':
    main()
