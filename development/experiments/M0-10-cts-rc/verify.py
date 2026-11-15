#!/usr/bin/env python3
"""Exercise clock connectivity, function and OpenSTA annotation failure detection.

SPEF files created here are software fixtures, NEVER physical extraction outputs.
"""
import argparse
import copy
import importlib.util
import json
import os
from pathlib import Path
import re
import shutil
import sys
from annotation import audit, clock_profile, fixture
from run import HERE, REPO, DIG, dump, run, sha

def verify(work,pdk):
    out=work/'annotation-probe'; out.mkdir(exist_ok=False)
    shutil.copyfile(work/'cells.lib',out/'cells.lib')
    shutil.copyfile(work/'constraints.sdc',out/'constraints.sdc')
    shutil.copyfile(HERE/'sta.tcl',out/'sta.tcl')
    shutil.copyfile(work/'cts.v',out/'candidate.v')
    (out/'read.ys').write_text('''read_liberty -lib cells.lib
read_verilog candidate.v
hierarchy -check -top shift_reg_8bit
check -assert
select shift_reg_8bit
write_json -selected mapped.json
write_verilog -selected -noattr canonical.v
''')
    run(['yosys','-Q','-T','-s','read.ys'],out,'yosys')
    data=json.loads((out/'mapped.json').read_text()); profile=clock_profile(data)
    dump(out/'clock-profile.json',profile)
    # Reuse the exact M0-08 validated function model and stimuli, now with CTS.
    seq=HERE.parent/'M0-08-sequential'; scope=seq/'scope-review'
    sys.path[:0]=[str(scope),str(HERE.parent/'M0-07-pdk-inventory')]
    spec=importlib.util.spec_from_file_location('m08_probe',scope/'run.py')
    previous=importlib.util.module_from_spec(spec);spec.loader.exec_module(previous)
    vendor=next((pdk/DIG/'VERILOG').glob('*std.v')).read_text()
    candidate=(seq/'derived/nspl12t_seq_functional.v').read_text()
    replacements={m[1]:m[0] for m in re.finditer(r'\bmodule\s+(\w+)\b.*?\bendmodule',candidate,re.S)}
    assembled=re.sub(r'\bmodule\s+(\w+)\b.*?\bendmodule',lambda m:replacements.get(m[1],m[0]),vendor,flags=re.S)
    (out/'functional.v').write_text(assembled)
    assert sha(out/'functional.v')==json.loads((seq/'results/patch-plan.json').read_text())['output_sha256']
    (out/'tb.v').write_text(previous.bench('shift_reg_8bit',previous.stimulus(True)))
    run(['iverilog','-g2012','-s','tb','-o','gate.vvp','tb.v','canonical.v','functional.v'],out,'compile')
    log=run(['vvp','gate.vvp'],out,'simulate'); assert 'RESULT checks=650 mismatches=0' in log
    # Synthetic fixtures verify annotation coverage only. No RC from cell PEX.
    spef=fixture(data); (out/'fixture-complete.spef').write_text(spef)
    coverage=audit(data,spef); dump(out/'fixture-audit.json',coverage)
    inverted=copy.deepcopy(data)
    inverted['modules']['shift_reg_8bit']['cells']['clkbuf_0_clk']['type']='INVX8'
    try:clock_profile(inverted)
    except AssertionError:pass
    else:raise AssertionError('accepted an inverted sink clock')
    (out/'prects.ys').write_text((out/'read.ys').read_text().replace('candidate.v',str(work/'input.v')).replace('mapped.json','prects.json').replace('canonical.v','prects.v'))
    run(['yosys','-Q','-T','-s','prects.ys'],out,'yosys-prects')
    prects=json.loads((out/'prects.json').read_text())
    for label,action in [('ideal-clock',lambda:clock_profile(prects)),('stale-netlist',lambda:audit(prects,spef))]:
        try:action()
        except AssertionError:pass
        else:raise AssertionError('accepted '+label)
    leaf=next(n for n in re.findall(r'(?m)^\*D_NET (\S+)',spef) if 'leaf' in n)
    variants={
        'complete':spef,
        'missing-clock-net':re.sub(r'(?ms)^\*D_NET '+re.escape(leaf)+r' .*?^\*END\n','',spef),
        'renamed-clock-pin':spef.replace('clkbuf_0_clk:A','missing_clkbuf:A'),
        'missing-resistor':re.sub(r'(?m)^1 clkbuf_0_clk:A (\S+) 1\n','',spef),
        'zero-resistance':re.sub(r'(?m)^(\d+ \S+ \S+) 1$',r'\1 0',spef),
    }
    results={}
    for name,s in variants.items():
        (out/f'fixture-{name}.spef').write_text(s)
        try: audit(data,s); status='accepted'
        except (AssertionError,ValueError,KeyError) as e: status='rejected'; reason=str(e)
        if name=='complete':assert status=='accepted'
        else: assert status=='rejected',f'failed to reject {name}'
        results[name]=dict(structural_guard=status)
        if name in ['complete','missing-clock-net','renamed-clock-pin']:
            env=dict(os.environ,M10_NETLIST='canonical.v',M10_SPEF=f'fixture-{name}.spef')
            log=run(['sta','-no_init','-exit','sta.tcl'],out,'sta-'+name,env)
            assert 'M10_STA_SCRIPT_COMPLETED' in log
            unannotated=int(re.search(r'Found (\d+) unannotated drivers\.',log)[1])
            partial=int(re.search(r'Found (\d+) partially unannotated drivers\.',log)[1])
            assert (unannotated,partial)=={'complete':(0,0),'missing-clock-net':(1,0),'renamed-clock-pin':(0,1)}[name]
            results[name]['opensta_log']='sta-'+name+'.log'
            results[name]['unannotated_drivers']=unannotated
            results[name]['partially_unannotated_drivers']=partial
            results[name]['warnings']=re.findall(r'(?m)^Warning.*',log)
            if name=='complete':
                pins=re.findall(r'(?m)^CLOCK_PIN (\S+) RISE_ARRIVAL (\S+) FALL_ARRIVAL (\S+) RISE_SLEW (\S+) FALL_SLEW (\S+)',log)
                assert len(pins)==8 and all(float(v)>0 for row in pins for v in row[1:]),'clock not propagated'
                checks={t:sorted(set(re.findall(r'Endpoint: (\S+) \('+t+r' check',log))) for t in ['recovery','removal']}
                assert all(len(v)==8 for v in checks.values()),'reset checks omitted'
                dump(out/'fixture-timing.json',dict(scope='synthetic annotation fixture only; no physical skew/slew qualification',
                     clock_pins=pins,reset_checks=checks,violation_present='VIOLATED' in log,
                     propagated_clock=True,physical_skew_slew='not_validated'))
    dump(out/'validation.json',dict(scope='software fixture only; not extracted RC or POST-STA',clock_profile=profile,
         functional_log='simulate.log',annotation=coverage,negative_cases=results,
         rejected_clock_or_pairing_cases=['inverted clock','ideal clock','stale pre-CTS netlist'],
         final_routed_RC='blocked',qualified_POST_STA='blocked'))
    return out

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--work',type=Path,required=True)
    p.add_argument('--pdk-root',type=Path,default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    a=p.parse_args();print(verify(a.work.resolve(),a.pdk_root.resolve()))

if __name__=='__main__':main()
