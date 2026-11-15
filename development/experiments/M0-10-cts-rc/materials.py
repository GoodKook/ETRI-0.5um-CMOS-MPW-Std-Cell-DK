#!/usr/bin/env python3
"""Read supplied CTS/RC provenance without modifying or decrypting PDK files."""
import argparse
import hashlib
import gzip
import json
from pathlib import Path
import re
import shutil
from run import HERE,REPO,DIG,dump,sha

def collect(pdk):
    dig=pdk/DIG
    import sys
    sys.path.insert(0,str(HERE.parent/'M0-07-pdk-inventory'))
    from inventory import liberty
    lib=liberty(next((dig/'LIB').glob('*.lib')))
    cts={}
    lef=next((dig/'LEF').glob('*std.lef')).read_text()
    for name in ['CLKBUFX2','CLKBUFX4','INVX8']:
        c=lib['cells'][name];cts[name]=dict(liberty=c,LEF_present=bool(re.search(r'^MACRO '+name+r'$',lef,re.M)))
    items={}
    paths=[*sorted((dig/'TECH').glob('*.itf')),*sorted((dig/'TLU').glob('*')),
           *sorted((dig/'Util').glob('*.tcl'))]
    for corner in ['typical','best','worst']:
        d=pdk/'Assura/QRC'/corner
        paths += [*sorted(d.glob('*.ict')),d/'p2lvsfile',d/'qrcTechFile']
    paths += [*sorted((pdk/'Calibre/PEX/MIPT').glob('*')),
              *sorted((pdk/'Calibre/PEX/LPE_LIB').glob('*')),
              *sorted((pdk/'Calibre/PEX').glob('*.cal'))]
    for p in paths:
        if not p.is_file():continue
        raw=p.read_bytes();item=dict(bytes=len(raw),sha256=sha(p),available=True)
        if p.suffix=='.itf':
            item['metal_fields']={n:body.strip() for n,body in re.findall(r'CONDUCTOR (MET\d)\s*\{([^}]+)\}',raw.decode())}
            item['via_fields']={n:body.strip() for n,body in re.findall(r'VIA (VIA\d)\s*\{([^}]+)\}',raw.decode())}
            item['unit_status']='no explicit unit declaration; um/ohm interpretation corroborated by LEF, MIPT/LPE and sheet_res; no validated conversion'
        elif p.suffix=='.ict':
            s=raw.decode();item['metal_fields']={n:body.strip() for n,body in re.findall(r'(?m)^conductor (MET\d)\s*\{([^}]+)\}',s)}
            item['process']=re.search(r'process (\S+)\s*\{',s)[1]
            item['temp_reference']=re.search(r'temp_reference (\S+)',s)[1]
            item['unit_status']='field resistivity is NOT assumed to mean bulk ohm*um; reconcile with p2lvs sheet_res'
        elif p.name=='p2lvsfile':
            item['sheet_res']={n:float(v) for n,v in re.findall(r'pro_layer=(MET\d).*?sheet_res=([\d.]+)',raw.decode())}
            item['via_fields']=re.findall(r'ext_cont=(VIA\d) res=([\d.]+) unit_area=([\d.]+)',raw.decode())
        elif p.suffix=='.mipt':
            s=raw.decode();item['cap_unit']=re.search(r'cap_unit\s*=\s*(\w+)',s)[1]
            item['process']=re.search(r'(?m)^process\s*=\s*(\S+)',s)[1]
            item['date']=re.search(r'(?m)^date\s*=\s*"([^"]+)"',s)[1]
            item['metal_fields']={n:body.strip() for n,body in re.findall(r'conductor\s*=\s*(MET\d)\s*\{([^}]+)\}',s)}
        elif p.suffix in ['.C','.R']:
            item['protected']=raw.lstrip().startswith(b'#DECRYPT')
            item['reader_status']='hash only' if item['protected'] else 'text headers/tables exist; not translated or executed'
        elif p.name=='qrcTechFile' or p.suffix=='.tluplus':
            item['reader_status']='opaque compiled tool input; not converted/executed'
        items[str(p.relative_to(pdk))]=item
    files=[]
    for rel in ['scripts/opensta.sh','scripts/qrouter.sh','scripts/yosys.sh','scripts/graywolf.sh','bin/vlogFanout','bin/rc2dly']:
        p=Path('/usr/local/share/qflow')/rel
        if p.is_file():files.append(dict(path=str(p),sha256=sha(p)))
    for rel in ['Tools/qflow-1.4.100_etri050/src/vlogFanout.c','Tools/qrouter/lef.c','Tools/qrouter/delays.c','Tools/qrouter/def.c','Tools/qrouter/output.c']:
        p=REPO/rel
        if p.is_file():files.append(dict(path=str(p),sha256=sha(p)))
    all_files=[p for p in pdk.rglob('*') if p.is_file()]
    gz_files=[p for p in all_files if p.suffix=='.gz']; gz_spef=[]
    for p in gz_files:
        with gzip.open(p,'rb') as h:
            if b'*SPEF' in h.read(1024):gz_spef.append(str(p.relative_to(pdk)))
    calibration={}
    for corner in ['typical','best','worst']:
        d=pdk/'Assura/QRC'/corner
        calibration[corner]={ext:len(list(d.rglob('*'+ext))) for ext in ['.dat.gz','.dat2d','.dat3d','.mdl','.net_ascii']}
    return dict(date='2026-11-15 Asia/Seoul',cts_cells=cts,sources=items,qflow_evidence=files,
       reference_artifact_scan=dict(files=len(all_files),named_spef_or_sdf=[str(p.relative_to(pdk)) for p in all_files if p.suffix.lower() in ['.spef','.sdf']],
           gzip_headers_checked=len(gz_files),gzip_spef_headers=gz_spef,assura_calibration_raw_present=calibration,
           limitation='filename and gzip header scan, not a proof that arbitrary compiled artifacts cannot contain RC data; calibration tables/models are present but their column semantics/conversion are unvalidated'),
       commercial_reference_tools={t:shutil.which(t) for t in ['calibre','qrc','quantus','FasterCap','fastcap']},
       rc_material_status='present',open_source_conversion='not_validated',cell_PEX_used_for_interconnect=False,
       selected_handoff='SPEF; no parallel SDF requirement',
       missing_evidence=['qualified NSPL OpenRCX rules or reproducible stack->solver->rules conversion',
          'reference/calibration SPEF for same process revision and named RC corner',
          'held-out geometry comparisons including ground/coupling C, wire/via R and actual routed design',
          'numerical acceptance tolerances justified by reference accuracy; not a fitted-to-pass STA target'])

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--pdk-root',type=Path,default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    p.add_argument('--out',type=Path,default=HERE/'materials.json')
    a=p.parse_args();dump(a.out,collect(a.pdk_root.resolve()))

if __name__=='__main__':main()
