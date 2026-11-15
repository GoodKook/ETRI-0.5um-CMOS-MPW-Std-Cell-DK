#!/usr/bin/env python3
"""Recheck handoff and show that missing masters and power defects are rejected."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
from adapter import normalize_def

HERE=Path(__file__).resolve().parent

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--results',type=Path,default=HERE/'results')
    p.add_argument('--out',type=Path,required=True)
    p.add_argument('--compare-results',type=Path)
    a=p.parse_args();source=a.results.resolve();out=a.out.resolve()
    if out.exists() or not (Path('/tmp') in out.parents or HERE in out.parents):p.error('use a NEW directory here or under /tmp')
    out.mkdir(parents=True)
    before={str(f.relative_to(source)):sha(f) for f in source.rglob('*') if f.is_file()}
    def run(script,env,log,expected_exit=0):
        r=subprocess.run(['klayout','-b','-r',str(script)],env=dict(os.environ,QT_QPA_PLATFORM='offscreen',**env),
                         stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,timeout=90)
        log.write_text(r.stdout);assert r.returncode==expected_exit,(r.returncode,expected_exit,str(log))
    run(HERE/'mutate_gds.py',dict(M09_SOURCE_GDS=str(source/'layout/shift_reg_8bit.gds'),M09_MUTATION_OUT=str(out)),out/'mutate.log')
    checks={}
    for case,expected in [('unchanged',None),('missing_master','missing cell geometry'),
                          ('power_open','conductor connectivity'),('power_short','conductor connectivity')]:
        dest=out/case;dest.mkdir();(dest/'layout').mkdir()
        for name in ['tech','synthesis']:(dest/name).symlink_to(source/name,target_is_directory=True)
        (dest/'layout/handoff.def').symlink_to(source/'layout/handoff.def')
        env=dict(M09_OUT=str(dest))
        if case!='unchanged':env['M09_VERIFY_GDS']=str(out/(case+'.gds'))
        run(HERE/'gds_check.py',env,dest/'check.log',1 if expected else 0)
        if expected:
            message=json.loads((dest/'gds-error.json').read_text())['error']
            assert expected in message,(case,message)
            checks[case]=dict(injected_error_rejected=True,message=message)
        else:
            assert not (dest/'gds-error.json').exists()
            assert json.loads((dest/'gds-check.json').read_text())['status']=='passed'
            checks[case]=dict(status='passed')
    raw=(source/'layout/shift_reg_8bit.def').read_text()
    normalized,_=normalize_def(raw)
    assert normalize_def(normalized)[0]==normalized
    # Conflicting via geometries must never be silently merged.
    corrupt=raw.replace('RECT VIA1 ( -40 -40 )','RECT VIA1 ( -30 -40 )',1)
    try:normalize_def(corrupt)
    except AssertionError:checks['conflicting_via']=dict(injected_error_rejected=True)
    else:raise AssertionError('conflicting via accepted')
    checks['normalizer_idempotent']=True
    after={str(f.relative_to(source)):sha(f) for f in source.rglob('*') if f.is_file()}
    assert before==after
    checks['source_results_unchanged']=True
    if a.compare_results:
        other=a.compare_results.resolve()
        for rel in ['layout/handoff.def','tech/cells.lef','tech/technology.lef']:
            assert sha(source/rel)==sha(other/rel),rel
        for rel in ['gds-check.json']:
            left=json.loads((source/rel).read_text());right=json.loads((other/rel).read_text())
            left.pop('gds');right.pop('gds');assert left==right,rel
        left=json.loads((source/'result.json').read_text());right=json.loads((other/'result.json').read_text())
        for stage in ['synthesize','place','route']:assert left[stage]==right[stage],stage
        checks['independent_replay']=dict(status='passed',path=str(other),
            compared=['handoff DEF','derived LEFs','GDS geometry/labels/connections report','three stage guards/counts/functional checks'],
            binary_gds_timestamp_excluded=True)
    (out/'checks.json').write_text(json.dumps(checks,indent=2)+'\n')
    print(json.dumps(checks,indent=2))
if __name__=='__main__':main()
