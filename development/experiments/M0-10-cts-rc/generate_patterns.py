#!/usr/bin/env python3
"""Generate actual OpenRCX calibration geometries; do not invent reference RC."""
import argparse
import os
from pathlib import Path
import re
import shutil
from run import HERE, REPO, dump, run, sha

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--work',type=Path,default=HERE/'results')
    p.add_argument('--openroad-root',type=Path,default=REPO/'.cache/M0-10/openroad')
    a=p.parse_args();work=a.work.resolve();root=a.openroad_root.resolve()
    out=work/'patterns';out.mkdir(exist_ok=False)
    shutil.copyfile(HERE/'patterns.tcl',out/'patterns.tcl')
    env=dict(os.environ,LD_LIBRARY_PATH=f'{root}/opt/or-tools/lib:{root}/usr/lib/x86_64-linux-gnu')
    run([root/'usr/bin/openroad','-no_init','-exit','patterns.tcl'],out,'generate',env)
    s=(out/'patterns.def').read_text()
    dump(work/'patterns.json',dict(status='geometry_generated',command_directory=str(out),
        source_technology_sha256=sha(work/'technology.lef'),
        artifacts={n:dict(bytes=(out/n).stat().st_size,sha256=sha(out/n)) for n in ['patterns.def','patterns.v','patterns.odb']},
        nets=int(re.search(r'(?m)^NETS (\d+)',s)[1]),
        reference_extraction='not_executed',rules_generation='blocked until reference extraction and comparison',
        calibration_accuracy='not_validated',scope='pattern geometry only; tool banner measurements are not extracted RC results'))
    print(work/'patterns.json')

if __name__=='__main__':main()
