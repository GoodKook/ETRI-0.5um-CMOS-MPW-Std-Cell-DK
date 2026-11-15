#!/usr/bin/env python3
"""Inventory the supplied package and inspect tutorial inputs without changing it."""
import argparse
from collections import Counter, defaultdict
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import tempfile


HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
STEM = 'NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T'


def sha(data):
    return hashlib.sha256(data).hexdigest()


def dump(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n')


def inventory(root):
    entries = []
    groups = defaultdict(list)
    selected = {}
    source_extensions = {'.cal', '.rul', '.ict', '.mipt', '.lib', '.scs', '.tf',
                         '.layermap', '.map', '.tcl', '.sdc', '.v', '.cdl', '.itf',
                         '.tluplus', '.gds', '.cellmap', '.C', '.R'}
    source_names = {'cds.lib', 'assura_tech.lib', 'techRuleSets', 'p2lvsfile',
                    'procfile', 'qrcTechFile', 'pin_place', 'core_size_calculation',
                    'ICC2_PIN_SETUP', '.rcx_setup.tpl'}
    for path in sorted(root.rglob('*')):
        if not path.is_file():
            continue
        data = path.read_bytes()
        rel = path.relative_to(root).as_posix()
        item = [rel, len(data), sha(data)]
        entries.append(item)
        groups[rel.split('/')[0]].append(item)
        if path.suffix in source_extensions or path.name in source_names:
            selected[rel] = {'bytes': len(data), 'sha256': item[2]}
            if b'#DECRYPT' in data[:256]:
                selected[rel]['inspection'] = 'protected payload; not decoded'

    def digest(rows):
        # Stable digest of every relative path, byte count and content hash.
        return sha(''.join(json.dumps(row, ensure_ascii=False) + '\n'
                           for row in rows).encode())

    return {
        'file_count': len(entries), 'bytes': sum(row[1] for row in entries),
        'tree_sha256': digest(entries),
        'tree_digest_format': 'SHA256 of sorted JSON [relative_path, size, SHA256] lines, UTF-8',
        'components': {name: {
            'files': len(rows), 'bytes': sum(row[1] for row in rows),
            'extensions': dict(sorted(Counter(Path(row[0]).suffix or '(none)'
                                              for row in rows).items())),
            'tree_sha256': digest(rows),
        } for name, rows in sorted(groups.items())},
        'selected_sources': selected,
        'inspection_scope': 'All files hashed; selected text declarations read. '
                            'OA, NDM, DB, TLU+, qrcTechFile and protected RC payloads '
                            'are not semantically decoded; calibration logs are not cell signoff.',
    }


def declarations(root):
    result = {}
    patterns = re.compile(
        r'read_db|read_parasitic|set_parasitic|read_sdf|read_sdc|create_track|'
        r'create_pg_|tie_cell|max_fanout|reference_subset|synthesize_clock|'
        r'create_stdcell|write_gds|write_verilog|write_parasitic|write_sdf|'
        r'report_analysis|^set_false_path|^create_clock|^\.LIB\s|^\.MODEL\s|'
        r'^#DEFINE|^#IFDEF|^\s*INCLUDE|^LVS POWER|^LVS GROUND|^DEVICE [MN]')
    pnr = root / (STEM + '_PnR')
    paths = list((pnr / 'Util').glob('*.tcl')) + list((pnr / 'SDC').glob('*.sdc'))
    paths += list((root / 'Model_Parameter').glob('*.lib'))
    paths += list((root / 'Calibre').glob('*/*.cal'))
    for path in sorted(paths):
        lines = [{'line': i, 'text': line.strip()}
                 for i, line in enumerate(path.read_text(errors='replace').splitlines(), 1)
                 if patterns.search(line)]
        result[path.relative_to(root).as_posix()] = lines
    return result


def helper_observations(root):
    util = root / (STEM + '_PnR') / 'Util'
    result = {}
    with tempfile.TemporaryDirectory(prefix='nspl-helper-review-') as directory:
        work = Path(directory)
        for name in ['core_size_calculation', 'pin_place', 'ICC2_PIN_SETUP']:
            shutil.copyfile(util / name, work / name)

        def run(name):
            proc = subprocess.run(['bash', name], cwd=work, text=True,
                                  capture_output=True, timeout=20)
            return {'exit_code': proc.returncode, 'stdout': proc.stdout,
                    'stderr': proc.stderr}

        result['missing_area_report'] = run('core_size_calculation')
        (work / 'TOP_MODULE_area.txt').write_text('Total cell area: 2880\n')
        result['synthetic_area_2880'] = run('core_size_calculation')
        setup = (work / 'ICC2_PIN_SETUP').read_text()
        for number, pin in [(1, 'unknown_port'), (2, 'dout[0]'), (3, 'dout[0]')]:
            setup = re.sub(rf'^PIN{number} =.*$', f'PIN{number} = {pin}', setup,
                           flags=re.MULTILINE)
        (work / 'ICC2_PIN_SETUP').write_text(setup)
        result['unknown_and_duplicate_ports'] = run('pin_place')
        result['unknown_and_duplicate_ports']['generated_constraints'] = (
            work / 'pin_setup_file').read_text()
    result['scope'] = ('Original bash helpers copied to a temporary directory; synthetic '
                       'inputs only. No synthesis, placement or pin legality qualification.')
    return result


def rc_declarations(root):
    paths = [root / (STEM + '_PnR/TECH') / (STEM + '_std.itf')]
    paths += sorted((root / 'Assura/QRC').glob('*/*.ict'))
    paths += sorted((root / 'Calibre/PEX/MIPT').glob('*.mipt'))
    result = {}
    for path in paths:
        text = re.sub(r'(?m)^\s*#.*$', '', path.read_text())
        layers = {}
        for name in ['MET1', 'MET2', 'MET3']:
            match = re.search(r'\bCONDUCTOR\s*=?\s*' + name + r'\s*\{([^}]+)\}',
                              text, re.IGNORECASE)
            layers[name] = ' '.join(match[1].split()) if match else None
        result[path.relative_to(root).as_posix()] = layers
    return {'sources': result, 'scope': 'Raw conductor fields retained without '
            'unit conversion or treating ICT resistivity as ITF RPSQ. No RC extraction.'}


def gds_summary(root):
    reader = HERE.parent / 'M0-07-pdk-inventory/gds_inventory.py'
    output = {}
    paths = sorted(root.glob('*.gds')) + sorted((root / (STEM + '_PnR/GDS')).glob('*.gds'))
    with tempfile.TemporaryDirectory(prefix='nspl-gds-review-') as directory:
        for number, path in enumerate(paths):
            dest = Path(directory) / f'{number}.json'
            proc = subprocess.run(['klayout', '-b', '-r', str(reader),
                                   '-rd', 'input=' + str(path),
                                   '-rd', 'output=' + str(dest)],
                                  capture_output=True, text=True, timeout=60)
            if proc.returncode:
                raise RuntimeError(proc.stdout + proc.stderr)
            value = json.loads(dest.read_text())
            output[path.relative_to(root).as_posix()] = {
                'reader': value['reader'], 'dbu_um': value['dbu_um'],
                'cell_count': len(value['cells']), 'top_cells': value['top_cells'],
                'layers': value['layers'],
                'cells': {name: {'bbox_um': cell['bbox_um'],
                                 'children': cell['children'],
                                 'own_shape_count': sum(cell['layers'].values()),
                                 'own_label_count': len(cell['labels'])}
                          for name, cell in value['cells'].items()},
                'scope': 'Geometry/hierarchy read only; no extraction, DRC or LVS.',
            }
    return output


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--pdk-root', type=Path, default=REPO.parent / 'NSPL_05CMOS_PDK_260820')
    parser.add_argument('--out', type=Path, default=HERE / 'results')
    args = parser.parse_args()
    root = args.pdk_root.resolve(strict=True)
    out = args.out.resolve()
    if out != HERE / 'results' and Path('/tmp') not in out.parents:
        parser.error('--out must be this experiment results/ or a directory below /tmp')
    if out == root or root in out.parents:
        parser.error('cannot write inside original PDK')
    out.mkdir(parents=True, exist_ok=True)
    before = inventory(root)
    dump(out / 'inventory.json', before)
    dump(out / 'declarations.json', declarations(root))
    dump(out / 'rc.json', rc_declarations(root))
    dump(out / 'helpers.json', helper_observations(root))
    dump(out / 'gds.json', gds_summary(root))
    pdf = next((REPO / 'docs/ETRI_0p5um_NSPL_260820').glob('05_*.pdf'))
    proc = subprocess.run(['pdftotext', '-layout', str(pdf), '-'],
                          capture_output=True, text=True, check=True, timeout=30)
    pages = [page for page in proc.stdout.split('\f') if page.strip()]
    dump(out / 'tutorial.json', {
        'repo_relative_path': pdf.relative_to(REPO).as_posix(),
        'sha256': sha(pdf.read_bytes()), 'pages': len(pages),
        'page_index': [{'page': i, 'text_sha256': sha(page.encode()),
                        'opening': ' '.join(page.split())[:170]}
                       for i, page in enumerate(pages, 1)],
        'scope': '54-page text reread, cross-checked with supplied executable templates. '
                 'Code images are not fully represented by pdftotext.',
        'supporting_document_hashes': {
            p.name: sha(p.read_bytes()) for p in sorted(pdf.parent.glob('*.pdf'))
        },
    })
    after = inventory(root)
    if before != after:
        raise RuntimeError('PDK package changed during review')
    dump(out / 'preservation.json', {
        'files': before['file_count'], 'tree_sha256': before['tree_sha256'],
        'before_equals_after': True, 'inspection_script_sha256': sha(Path(__file__).read_bytes()),
        'gds_reader_sha256': sha((HERE.parent / 'M0-07-pdk-inventory/gds_inventory.py').read_bytes()),
        'tools': {name: {'path': shutil.which(name),
                         'sha256': sha(Path(shutil.which(name)).read_bytes())}
                  for name in ['python3', 'bash', 'pdftotext', 'klayout']},
        'status': 'inspection completed; not flow/signoff passed',
    })
    print(json.dumps({'files': before['file_count'], 'selected_sources': len(before['selected_sources']),
                      'pdf_pages': len(pages), 'originals_unchanged': True}, ensure_ascii=False))


if __name__ == '__main__':
    main()
