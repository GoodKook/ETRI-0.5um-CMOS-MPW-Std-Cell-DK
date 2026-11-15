#!/usr/bin/env python3
"""Acquire missing M0-08 references and extract already-supplied evidence.

No PDK/model edits, no commercial tools, no changes to the earlier experiments.
Public downloads require --fetch-public and must match the recorded SHA-256.
"""
import argparse
import csv
import hashlib
import io
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tarfile
import urllib.request
import zipfile

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[3]
sys.path.insert(0, str(HERE.parents[1]/'M0-07-pdk-inventory'))
from inventory import attrs, clean, groups  # noqa: E402

STEM = 'NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T'
CELLS = ['DFFPOSX1', 'DFFNEGX1', 'DFFSRX1', 'LATCHX1']


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def dump(name, value):
    (HERE/name).write_text(json.dumps(value, ensure_ascii=False, indent=2)+'\n')


def command(argv, log):
    p = subprocess.run(list(map(str, argv)), cwd=HERE, text=True,
                       stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=90)
    (HERE/log).write_text(p.stdout)
    assert p.returncode == 0, (argv, log, p.returncode)
    return p.stdout


def numeric_call(body, name):
    match = re.search(r'\b'+name+r'\s*\((.*?)\)\s*;', body, re.S)
    return [float(x) for x in re.findall(r'-?\d+(?:\.\d*)?(?:[eE][-+]?\d+)?', match[1])]


def legacy_bsim_materials(downloads):
    """Extract only named documentation members; never extract archive paths."""
    work = HERE/'work'; work.mkdir(exist_ok=True)
    native = work/'bsim32-manual'; native.mkdir(exist_ok=True)
    ordered = ['cover', 'b3v32_toc']+['chapter'+str(i) for i in range(1, 10)]+[
        'appd_'+c for c in 'abcd']
    members = []
    with zipfile.ZipFile(downloads/'berkeley-bsim32.zip') as z:
        packed = z.read('ftpv32/Mod_doc/b3v32manu.tar.Z')
        p = subprocess.run(['gzip', '-dc'], input=packed, capture_output=True, check=True)
        with tarfile.open(fileobj=io.BytesIO(p.stdout)) as tar:
            for name in ordered:
                data = tar.extractfile(name+'.prn').read()
                (native/(name+'.prn')).write_bytes(data)
                members.append(dict(member=name+'.prn', sha256=hashlib.sha256(data).hexdigest()))
        notes = ['ftpv32/Mod_doc/b3v32doc.ps', 'ftpv32/Mod_doc/Diode',
                 'ftpv32/license/licen', 'ftpv32/Readme']
        for name in notes:
            (native/Path(name).name).write_bytes(z.read(name))
    output = downloads/'bsim32-manual-derived.pdf'
    command(['gs', '-dSAFER', '-dBATCH', '-dNOPAUSE', '-sDEVICE=pdfwrite',
             '-dOmitInfoDate=true', '-dOmitID=true', '-sOutputFile='+str(output),
             *[native/(n+'.prn') for n in ordered]], 'bsim32-convert.log')
    update = downloads/'bsim32-update-derived.pdf'
    command(['ps2pdf', '-dSAFER', native/'b3v32doc.ps', update], 'bsim32-update-convert.log')
    with zipfile.ZipFile(downloads/'berkeley-bsim324.zip') as z:
        for source, name in [('ftpv324/bugfix/bugfix_3v324.pdf', 'bsim324-bugfix.pdf'),
                             ('ftpv324/tech_note/technical_note.pdf', 'bsim324-technical-note.pdf')]:
            (downloads/name).write_bytes(z.read(source))
    return {'manual': output.name, 'sha256': sha(output), 'original_manual_members': members,
            'scope': 'Reference equations; no replacement of NSPL process card or VERSION value',
            'source_archive': 'berkeley-bsim32.zip',
            'diode_update_note': (native/'Diode').read_text(),
            'conversion': 'gzip -dc; named tar members; Ghostscript pdfwrite, original archives intact'}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--pdk-root', type=Path, default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    p.add_argument('--fetch-public', action='store_true')
    a = p.parse_args()
    root = a.pdk_root.resolve(); digital = root/(STEM+'_PnR')
    downloads = HERE/'downloads'; downloads.mkdir(exist_ok=True)
    source_records = []
    for item in json.loads((HERE/'public-sources.json').read_text()):
        target = downloads/item['filename']
        if not target.exists() and a.fetch_public:
            with urllib.request.urlopen(item['url'], timeout=45) as response:
                data = response.read()
            assert hashlib.sha256(data).hexdigest() == item['sha256'], item['filename']
            target.write_bytes(data)
        if not target.exists():
            raise SystemExit('Missing '+str(target)+': rerun with --fetch-public or place verified download here')
        assert sha(target) == item['sha256'], 'download changed: '+item['filename']
        source_records.append(dict(**item, bytes=target.stat().st_size, acquired_date='2026-11-15'))
    legacy = legacy_bsim_materials(downloads)
    local = {}

    def take(path):
        path = path.resolve()
        key = 'PDK/'+str(path.relative_to(root)) if path.is_relative_to(root) else 'REPO/'+str(path.relative_to(REPO))
        local[key] = dict(sha256=sha(path), bytes=path.stat().st_size)
        if path.suffix.lower() in ['.gz', '.gds', '.oa', '.png']:
            return ''
        return path.read_text(errors='replace')

    libpath = digital/'LIB'/(STEM+'_std_tt.lib')
    raw = take(libpath); text = clean(raw)
    _, library = next(groups(text, 'library'))
    templates = {n: attrs(b) for n, b in groups(library, 'lu_table_template')}
    cell_bodies = dict(groups(library, 'cell'))
    tables, all_tables = [], []
    for cell in CELLS:
        for pin, pb in groups(cell_bodies[cell], 'pin'):
            for _, tb in groups(pb, 'timing'):
                for kind in ['rise_constraint', 'fall_constraint', 'cell_rise', 'cell_fall',
                             'rise_transition', 'fall_transition']:
                    for template, table in groups(tb, kind):
                        ix, iy = numeric_call(table, 'index_1'), numeric_call(table, 'index_2')
                        values = numeric_call(table, 'values')
                        assert len(values) == len(ix)*len(iy)
                        entry = dict(cell=cell, pin=pin, **attrs(tb), kind=kind, template=template,
                            variables=templates[template], index_1=ix, index_2=iy,
                            values=[values[i:i+len(iy)] for i in range(0, len(values), len(iy))],
                            minimum=min(values), maximum=max(values))
                        all_tables.append(entry)
                        if cell == 'DFFSRX1' and pin in ['R', 'S']:
                            tables.append(entry)
    assert len(tables) == 8
    dump('liberty-tables.json', dict(attributes=attrs(library), templates=templates,
         characterization_engine=re.search(r'Spice engine\s*:\s*([^\n]+)', raw)[1].strip(),
         characterization_tool=re.findall(r'Liberty models generated by ([^\n]+)', raw),
         generated_dates=re.findall(r'File generated on ([^\n]+)', raw), tables=all_tables))
    rows = [dict(pin=t['pin'], related_pin=t['related_pin'], timing_type=t['timing_type'],
        constraint=t['kind'], variable_1=t['variables']['variable_1'],
        variable_2=t['variables']['variable_2'], index_1_ns=json.dumps(t['index_1']),
        index_2_ns=json.dumps(t['index_2']), min_ns=t['minimum'], max_ns=t['maximum'],
        when=t.get('when', '(absent)')) for t in tables]
    with (HERE/'dffsr-constraints.csv').open('w', newline='') as f:
        writer = csv.DictWriter(f, rows[0]); writer.writeheader(); writer.writerows(rows)
    models = {}
    for path in sorted((root/'Model_Parameter').iterdir()):
        if path.is_file():
            s = take(path)
            models[path.name] = dict(sections=re.findall(r'^\s*(?:\.LIB|section)\s+([\w]+)\s*$', s, re.M|re.I),
                header_dates=re.findall(r'Date\s*:\s*([^\n]+)', s),
                models=re.findall(r'^\s*(?:\.MODEL|model)\s+(nmos4|pmos4)\s+([^\n]+)', s, re.M|re.I))
    scs_models = take(root/'Model_Parameter/05cmos_model_241213.scs')
    assert 'n=1.013' in scs_models and 'fc=0.999' in scs_models
    dump('process-model-files.json', models)
    circuit = {}
    for n in CELLS:
        ps = take(digital/'PEX'/(n+'.pex.netlist'))
        circuit[n] = dict(pex_created=re.findall(r'^\* Created:\s*(.*)', ps, re.M)[:2],
            pex_program=re.findall(r'^\* Program\s*(.*)', ps, re.M)[:1],
            pex_version=re.findall(r'^\* Version\s*(.*)', ps, re.M)[:1],
            native_views=[])
        for file in sorted((root/(STEM+'_std')/n).rglob('*')):
            if file.is_file():
                take(file)
                circuit[n]['native_views'].append(str(file.relative_to(root)))
    take(digital/'CDL'/(STEM+'_std.cdl'))
    take(digital/'VERILOG'/(STEM+'_std.v'))
    take(digital/'GDS'/(STEM+'_std.gds'))
    for part in ['LVS/lvs_header.cal', 'LVS/NSPL_0p5um_Analog_CMOS_2P3M_5V_V1.1_LVS.cal',
                 'PEX/pex_header.cal', 'PEX/NSPL_0p5um_Analog_CMOS_2P3M_5V_V1.1_PEX.cal']:
        take(root/'Calibre'/part)
    filelist = sorted(str(f.relative_to(root)) for f in root.rglob('*') if f.is_file())
    report_paths = [f for f in filelist if Path(f).suffix.lower() in ['.rpt', '.rep', '.sum', '.log']]
    dump('pdk-search.json', dict(root=str(root), entries_including_file_symlinks=len(filelist),
        sorted_filelist_sha256=hashlib.sha256('\n'.join(filelist).encode()).hexdigest(),
        report_path_counts={'qrc_field_solver': sum(f.startswith('Assura/QRC/') for f in report_paths),
                            'other': sum(not f.startswith('Assura/QRC/') for f in report_paths)},
        reports_outside_qrc=[f for f in report_paths if not f.startswith('Assura/QRC/')],
        characterization_named_files=[f for f in filelist if re.search(
            r'(siliconsmart|finesim|characterization|charac|state.?table|truth.?table)', f, re.I)],
        circuit=circuit,
        limitation='Filename inventory plus selected text; no decoding of native OA or binary DB/NDM'))
    # Bind the source parameter registry to the archive actually present here.
    archive = REPO/'Tools/ngspice-47.tar.gz'; take(archive)
    source_evidence = []
    source_files = ['src/spicelib/devices/bsim3v32/b3v32.c',
                    'src/spicelib/devices/bsim3v32/b3v32set.c', 'src/spicelib/parser/inpdomod.c']
    with tarfile.open(archive) as tar:
        for name in source_files:
            src = REPO/'Tools/ngspice-47'/name; s = take(src)
            data = tar.extractfile('ngspice-47/'+name).read()
            assert hashlib.sha256(data).hexdigest() == sha(src)
            source_evidence.append(dict(member='ngspice-47/'+name, sha256=sha(src), matches_archive=True))
    registry = (REPO/'Tools/ngspice-47'/source_files[0]).read_text()
    keys = re.findall(r'\bIOP\s*\(\s*"([^"]+)"', registry)
    assert 'nj' in keys and 'n' not in keys and 'fc' not in keys
    dump('ngspice-source.json', dict(archive_sha256=sha(archive), files=source_evidence,
         registry={k: k in keys for k in ['acm', 'version', 'n', 'nj', 'fc']},
         scope='Code/archived source match; not proof the installed binary was rebuilt from this exact archive'))
    work = HERE/'work'
    deck = work/'mos-reader.cir'
    model = root/'Model_Parameter/05cmos_model_260210.lib'
    deck.write_text(f'''M0-08 original MOS card reader probe, not a transient qualification
.lib "{model}" MOS
.temp 25
Vd d 0 2.5
Vg g 0 2.5
Vp p 0 5
M1 d g 0 0 nmos4 W=3u L=0.5u
M2 d g p p pmos4 W=6u L=0.5u
.control
op
showmod m1 m2
quit
.endc
.end
''')
    probe = {}
    for mode in ['default', 'hsa']:
        args = ['ngspice', '-n']+(['-D', 'ngbehavior=hsa'] if mode == 'hsa' else [])+['-b', deck]
        log = command(args, 'mos-reader-'+mode+'.log')
        ignored = re.findall(r'unrecognized parameter \(([^)]+)\) - ignored', log)
        nj = re.search(r'^\s*nj\s+([^\n]+)', log, re.M)
        assert ignored == ['n', 'fc', 'n', 'fc'] and nj
        assert nj[1].split() == ['1', '1']
        probe[mode] = dict(argv=list(map(str, args)), ignored=ignored,
                           effective_nj=list(map(float, nj[1].split())), exit_code=0)
    dump('mos-reader.json', dict(deck_sha256=sha(deck), runs=probe,
         scope='Parser and effective-parameter observation only; no N->NJ or FC rewrite is endorsed'))
    # Documents are indexed by actual PDF page, without copying the PDK PDFs.
    documents = [downloads/'ngspice-47-manual.pdf', downloads/'bsim32-manual-derived.pdf',
                 downloads/'bsim32-update-derived.pdf', downloads/'bsim324-bugfix.pdf',
                 downloads/'bsim324-technical-note.pdf', REPO/'Tutorials/_References_/liberty07_03.pdf']
    documents += sorted((REPO/'docs/ETRI_0p5um_NSPL_260820').glob('*.pdf'))
    index = []
    for i, doc in enumerate(documents):
        if doc.is_relative_to(REPO) and not doc.is_relative_to(HERE):
            take(doc)
        dest = work/f'doc-{i}.txt'
        command(['pdftotext', '-layout', doc, dest], 'pdftotext.log')
        pages = dest.read_text(errors='replace').split('\f')
        hits = []
        for number, page in enumerate(pages, 1):
            terms = [t for t in ['DFFSRX1', 'SiliconSmart', 'FineSim', 'non_seq_hold',
                'non_seq_setup', '7.6.3.3', '12.11.10', 'NJ', 'FC', 'junction diode']
                if t.lower() in page.lower()]
            if terms:
                hits.append(dict(pdf_page=number, terms=terms))
        index.append(dict(path=str(doc.relative_to(REPO)), sha256=sha(doc),
                          pdf_pages=len(pages)-(not pages[-1].strip()), hits=hits))
    dump('document-index.json', index)
    # Ready-to-fill supplier cases retain exactly the previous experiment's
    # actions and observed circuit values. Responses belong in a separate copy.
    resultdir = HERE.parent/'results'
    actions = json.loads(take(resultdir/'stimulus.json'))
    readbacks = {}
    for view in ['cdl', 'pex']:
        data = take(resultdir/f'spice-{view}-checks.csv')
        readbacks[view] = {int(r['id']): r['actual'] for r in csv.DictReader(io.StringIO(data))
                           if r['cell'] == 'DFFSRX1'}
    cases = []
    for row in actions:
        m = re.fullmatch(r'matrix_c([01])_q([01])_([01])([01])_to_([01])([01])_after', row['label'])
        if not m:
            continue
        phase, prepare, r0, s0, r1, s1 = map(int, m.groups())
        cases.append(dict(case_id=row['label'], observation_id=row['id'], CLK=phase, D=row['d'],
            Q_prepare=prepare, Q_before_ideal=actions[row['id']-1]['expected']['DFFSRX1'],
            R_before=r0, S_before=s0, R_after=r1, S_after=s1,
            ideal_Q=row['expected']['DFFSRX1'], cdl_Q=readbacks['cdl'][row['id']],
            pex_Q=readbacks['pex'][row['id']],
            supplier_allowed='', supplier_Q='', supplier_allowed_skew_R50_minus_S50_ns='',
            supplier_conditions='', supplier_revision_ref=''))
    assert len(cases) == 64
    with (HERE/'request-state-cases.csv').open('w', newline='') as f:
        writer = csv.DictWriter(f, cases[0]); writer.writeheader(); writer.writerows(cases)
    # The original run/input hashes must still be valid after collecting.
    earlier = json.loads((HERE.parent/'results/run.json').read_text())
    assert all(sha(Path(k)) == h for k, h in earlier['inputs'].items())
    assert all(sha(root/k[4:] if k.startswith('PDK/') else REPO/k[5:]) == v['sha256']
               for k, v in local.items())
    tools = {}
    for name, flag in [('ngspice', '--version'), ('gs', '--version'), ('pdftotext', '-v')]:
        binary = Path(shutil.which(name)).resolve()
        tools[name] = dict(path=str(binary), sha256=sha(binary),
                           version=command([binary, flag], 'version-'+name+'.log').splitlines()[:10])
    dump('acquisition.json', dict(date='2026-11-15', timezone='Asia/Seoul', cwd=str(Path.cwd()),
         argv=sys.argv, script_sha256=sha(Path(__file__).resolve()), public=source_records,
         legacy_bsim=legacy, local_sources=local, tools=tools,
         original_M0_08_inputs_unchanged=True,
         artifacts={f.name: sha(f) for f in sorted(HERE.iterdir()) if f.is_file()
                    and f.name not in ['acquisition.json', 'README.md']}))
    print(json.dumps(dict(local_sources=len(local), public_archives_or_pdfs=len(source_records),
        constraint_tables=len(tables), parser_modes=list(probe),
        original_M0_08_inputs_unchanged=True), indent=2))


if __name__ == '__main__':
    main()
