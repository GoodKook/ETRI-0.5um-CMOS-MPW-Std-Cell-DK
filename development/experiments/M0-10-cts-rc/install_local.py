#!/usr/bin/env python3
"""Download pinned public packages and extract locally; no sudo/apt install."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import urllib.request

REPO = Path(__file__).resolve().parents[3]
PACKAGES = [
    ('openroad.deb', 'https://vaultlink.precisioninno.com/api/releases/26Q2-1164-g08f67ee5ec/openroad_26Q2-1164-g08f67ee5ec_amd64-ubuntu-24.04.deb/download',
     'f3f1eeaa18f327503f72cc45dcef5b1514ec2e89726ec53b4553bf4f951168a3'),
    ('tcl-tclreadline_2.3.8-2build2_amd64.deb', 'https://archive.ubuntu.com/ubuntu/pool/universe/t/tclreadline/tcl-tclreadline_2.3.8-2build2_amd64.deb',
     '7f61dca1a7f55c445babfd2c718ff5359de8a61288125089c1c8a9e788c11f00'),
    ('libqt5charts5_5.15.13-1_amd64.deb', 'https://archive.ubuntu.com/ubuntu/pool/universe/q/qtcharts-opensource-src/libqt5charts5_5.15.13-1_amd64.deb',
     'ecbe66ccf9ad309f0874c12c0cb15a888b4de61933ea175543753a03b5209fd5')]

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cache',type=Path,default=REPO/'.cache/M0-10')
    p.add_argument('--offline',action='store_true')
    a=p.parse_args(); cache=a.cache.resolve()
    if not (cache.is_relative_to(REPO/'.cache') or cache.is_relative_to(Path('/tmp'))):
        p.error('cache must be inside repo/.cache or /tmp')
    cache.mkdir(parents=True,exist_ok=True)
    root=cache/'openroad'
    for name,url,expected in PACKAGES:
        dest=cache/name
        if not dest.exists():
            if a.offline:
                raise FileNotFoundError(dest)
            with urllib.request.urlopen(url,timeout=60) as r:
                dest.write_bytes(r.read())
        actual=hashlib.sha256(dest.read_bytes()).hexdigest()
        if actual != expected:
            raise ValueError(f'checksum mismatch: {dest}')
        subprocess.run(['dpkg-deb','-x',str(dest),str(root)],check=True)
    (cache/'acquisition.json').write_text(json.dumps(dict(packages=PACKAGES,method='dpkg-deb -x; process-local LD_LIBRARY_PATH; no system installation'),indent=2)+'\n')
    print(root)

if __name__=='__main__':
    main()
