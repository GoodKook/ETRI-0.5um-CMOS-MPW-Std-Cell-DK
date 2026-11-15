#!/usr/bin/env python3
"""Audit existing actual runs, error rejection, replay and original preservation."""
import argparse
import csv
import importlib.util
import json
from pathlib import Path
import re
import subprocess
import sys
from boundary import check
from run import HERE,REPO,dump,sha

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--work',type=Path,default=HERE/'results')
    p.add_argument('--replay',type=Path,required=True)
    p.add_argument('--install-replay',type=Path,required=True)
    p.add_argument('--pdk-root',type=Path,default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    a=p.parse_args();w=a.work.resolve();q=a.replay.resolve();pdk=a.pdk_root.resolve()
    report={}
    names=['cts.v','cts.def','preroute.def','qrouter-input.def','partial-routed.def','boundary.json',
           'annotation-probe/canonical.v','annotation-probe/fixture-complete.spef',
           'annotation-probe/clock-profile.json','annotation-probe/validation.json',
           'patterns/patterns.def','patterns/patterns.v','patterns/patterns.odb']
    report['independent_replay']={n:dict(sha256=sha(w/n),byte_equal=sha(w/n)==sha(q/n)) for n in names}
    assert all(v['byte_equal'] for v in report['independent_replay'].values())
    report['replay_cwd']='/tmp'
    report['independent_install_binary_equal']=sha(a.install_replay/'usr/bin/openroad')==json.loads((w/'run.json').read_text())['binary_sha256']
    assert report['independent_install_binary_equal']
    report['snapshot_matches_current']={n:sha(w/'repro-source'/n)==sha(HERE/n) for n in
        ['run.py','flow.tcl','extract.tcl','verify.py','sta.tcl','annotation.py','def_adapter.py','boundary.py']}
    assert all(report['snapshot_matches_current'].values())
    before=(w/'preroute.def').read_text();adapted=(w/'qrouter-input.def').read_text();routed=(w/'partial-routed.def').read_text()
    data=json.loads((w/'annotation-probe/mapped.json').read_text());check(before,adapted,routed,data)
    mutations={
        'DEF-unit-mismatch':(before,adapted,routed.replace('UNITS DISTANCE MICRONS 1000','UNITS DISTANCE MICRONS 100')),
        'clock-endpoint-rename':(before,adapted,routed.replace('( _16_ CLK )','( stale_ff CLK )')),
        'PG-path-change':(before,re.sub(r'(\+ ROUTED MET2 2000 \( )(\d+)',lambda m:m[1]+str(int(m[2])+10),adapted,count=1),routed),
    }
    report['boundary_negative_cases']={}
    for label,(b,c,d) in mutations.items():
        try:check(b,c,d,data)
        except AssertionError as e:report['boundary_negative_cases'][label]=str(e)
        else:raise AssertionError('accepted '+label)
    report['annotation_CLI']={}
    for label,expected in [('complete',0),('missing-clock-net',1),('renamed-clock-pin',1)]:
        cmd=[sys.executable,str(HERE/'annotation.py'),'--mapped-json',str(w/'annotation-probe/mapped.json'),
             '--spef',str(w/f'annotation-probe/fixture-{label}.spef')]
        r=subprocess.run(cmd,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
        (w/f'annotation-CLI-{label}.log').write_text(r.stdout)
        assert (r.returncode==0)==(expected==0)
        report['annotation_CLI'][label]=dict(argv=cmd,exit_code=r.returncode)
    pkg=HERE.parent/'pdk-package-review'
    spec=importlib.util.spec_from_file_location('m010_package_review',pkg/'review.py')
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    current=module.inventory(pdk);baseline=json.loads((pkg/'results/inventory.json').read_text())
    assert current['tree_sha256']==baseline['tree_sha256']
    report['PDK_package_unchanged']=dict(file_count=current['file_count'],tree_sha256=current['tree_sha256'],matches_previous_review=True)
    rows=list(csv.DictReader((HERE.parent/'M0-07-pdk-inventory/results/files.csv').open()))
    for row in rows:
        alias,rel=row['path'].split('/',1); f={'REPO':REPO,'PDK':pdk}[alias]/rel
        assert sha(f)==row['sha256'],str(f)
    report['M0_07_original_files_unchanged']=len(rows)
    old=subprocess.check_output(['git','show','HEAD:development/ROADMAP.md'],cwd=REPO,text=True)
    new=(REPO/'development/ROADMAP.md').read_text()
    fixed=[f'M0-{i:02}' for i in range(1,10)]
    for task in fixed:
        assert re.search(r'(?m)^\| '+task+r' \|.*$',old)[0]==re.search(r'(?m)^\| '+task+r' \|.*$',new)[0]
    report['completed_roadmap_rows_preserved']=fixed
    task_row=re.search(r'(?m)^\| M0-10 \|.*$',new)[0]
    task_status=task_row.split('|')[3].strip()
    assert task_status in ['대기','이관'], 'unfinished physical verification must not be marked complete'
    report['M0_10_roadmap_status']=task_status
    outcome=json.loads((w/'result.json').read_text())
    assert outcome['POST_STA']=='blocked' and outcome['RC']=='blocked'
    assert not (w/'final.v').exists() and not (w/'estimated.spef').exists()
    report['blocked_outputs_not_published_as_final']=True
    report['scope']='development audit passed; design route/RC/POST-STA remain blocked'
    dump(w/'validation.json',report)
    print(w/'validation.json')

if __name__=='__main__':main()
