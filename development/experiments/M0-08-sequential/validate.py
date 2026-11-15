#!/usr/bin/env python3
"""Audit M0-08 evidence, including the failures that MUST remain visible."""
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re
import sys

HERE = Path(__file__).resolve().parent


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def read(path):
    return json.loads(path.read_text())


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--results', type=Path, default=HERE/'results')
    p.add_argument('--compare-results', type=Path)
    p.add_argument('--out', type=Path, default=HERE/'validation')
    a = p.parse_args()
    out = a.out.resolve()
    if out != HERE/'validation' and Path('/tmp') not in out.parents:
        p.error('--out must be this experiment/validation or under /tmp')
    results = a.results.resolve()
    manifest, result = read(results/'run.json'), read(results/'results.json')
    rows, ev = read(results/'stimulus.json'), read(results/'evidence.json')
    runs = result['runs']
    names = ['DFFPOSX1', 'DFFNEGX1', 'DFFSRX1', 'LATCHX1']
    checks = []

    def check(name, condition):
        if not condition:
            raise AssertionError(name)
        checks.append(name)

    for path, digest in manifest['inputs'].items():
        check('input hash '+path, sha(Path(path)) == digest)
    for name, digest in manifest['artifacts'].items():
        check('artifact hash '+name, sha(results/name) == digest)
    check('source preservation', result['source_preservation'] == {
        'selected_inputs_unchanged': True, 'M0_07_original_hashes_unchanged': 322})
    root = Path(manifest['pdk_root'])
    repo = HERE.parents[2]
    with (HERE.parent/'M0-07-pdk-inventory/results/files.csv').open() as f:
        for r in csv.DictReader(f):
            location = root/r['path'][4:] if r['path'].startswith('PDK/') else repo/r['path'][5:]
            check('original rehash '+r['path'], sha(location) == r['sha256'])
    check('all four sequential cells', set(ev) == set(names))
    for old, new in zip(rows, rows[1:]):
        if old['c'] != new['c']:
            check('no accidental timing collision '+new['label'],
                  all(old[k] == new[k] for k in 'drs'))
    labels = {r['label']: r for r in rows}
    # Hand-picked independent expected observations; not generated from HDL.
    for label, cell, bit in [
        ('pos_capture_new_D1', 'DFFPOSX1', 1),
        ('neg_capture_new_D0', 'DFFNEGX1', 0),
        ('latch_tracks_high_D1', 'LATCHX1', 1),
        ('latch_tracks_high_D0', 'LATCHX1', 0),
        ('latch_holds_low_D1', 'LATCHX1', 0),
        ('sr_reset_release_high_hold_zero', 'DFFSRX1', 0),
        ('sr_set_release_high_hold_one', 'DFFSRX1', 1),
        ('sr_reset_rising_still_reset', 'DFFSRX1', 0),
        ('sr_set_rising_still_set', 'DFFSRX1', 1),
    ]:
        check('directed oracle '+label, labels[label]['expected'][cell] == bit)
    check('64 control transitions at both clock levels/from both prior states',
          len([r for r in rows if r['label'].startswith('matrix_') and
               r['label'].endswith('_after')]) == 64)
    check('vendor canonical CLK port rejected', runs['vendor_canonical']['status'] == 'compile_failed')
    for n in names[:3]:
        check('vendor mismatch detected '+n, runs['vendor_with_G_adapter']['by_cell'][n] > 0)
    check('vendor latch logic agrees through explicit G adapter',
          runs['vendor_with_G_adapter']['by_cell']['LATCHX1'] == 0)
    check('derived exact checked count', runs['derived']['checks'] == 4*len(rows)-5)
    check('derived zero mismatches', runs['derived']['mismatch_count'] == 0)
    for name in ['pos_early_sample', 'neg_wrong_edge', 'latch_low_enable',
                 'sr_active_high_reset', 'sr_set_dominates', 'sr_misses_release',
                 'sr_release_samples_D']:
        check('wrong model detected '+name, runs['mutant_'+name]['status'] == 'failed'
              and runs['mutant_'+name]['mismatch_count'] > 0)
    for view in ['cdl', 'pex']:
        r = runs[view]
        check(view+' simultaneous release conflict retained', r['status'] == 'failed' and
              r['mismatch_count'] == 4 and all(m['cell'] == 'DFFSRX1' and
              re.fullmatch(r'matrix_c0_q[01]_00_to_11_(after|data_changes)', m['label']) and
              m['expected'] == 0 and m['actual'] == 1 for m in r['mismatches']))
        check(view+' device model warnings retained',
              bool(r['model_warnings']) and 'unrecognized parameter' in ''.join(r['model_warnings']))
        check(view+' edge collision not qualified',
              runs['collision_'+view]['status'] == 'diagnostic_only_timing_unresolved' and
              runs['collision_'+view]['mismatch_count'] > 0)
        check(view+' 44 release-skew observations', len(runs['skew_'+view]['cases']) == 44)
        check(view+' separated release sanity', all(c['separated_release_match'] is not False
              for c in runs['skew_'+view]['cases']))
    cdl_skew, pex_skew = (runs['skew_'+v]['cases'] for v in ['cdl', 'pex'])
    differences = [dict(phase=c['phase'], d=c['d'], skew_ns=c['skew_ns'],
                       cdl=c['observed'], pex=x['observed'])
                   for c, x in zip(cdl_skew, pex_skew) if c['observed'] != x['observed']]
    check('CDL/PEX near-release differences retained', bool(differences))
    if a.compare_results:
        other = read(a.compare_results/'results.json')['runs']
        for name, r in runs.items():
            for key in ['status', 'checks', 'mismatch_count', 'by_cell']:
                check('replay '+name+' '+key, r.get(key) == other[name].get(key))
        for name in ['stimulus.json', 'collision-stimulus.json', 'evidence.json', 'patch-plan.json']:
            check('replay content '+name, sha(results/name) == sha(a.compare_results/name))
        for view in ['cdl', 'pex']:
            for c, x in zip(runs['skew_'+view]['cases'], other['skew_'+view]['cases']):
                check('replay skew '+view+' '+str(c['id']), c['observed'] == x['observed'] and
                      abs(c['volts']-x['volts']) < 1e-4)
    # Audit archived first attempt against the exact script/model snapshots.
    archive = HERE/'attempt-01'
    archived = read(archive/'run.json')
    for current, saved in [(str(HERE/'run.py'), archive/'run.py.txt'),
                           (str(HERE/'derived/nspl12t_seq_functional.v'),
                            archive/'nspl12t_seq_functional.v')]:
        check('archived input '+saved.name, sha(saved) == archived['inputs'][current])
    qualification = {
        'evidence_run_sha256': sha(results/'run.json'),
        'functional_model_sha256': sha(HERE/'derived/nspl12t_seq_functional.v'),
        'full_sequential_qualification': 'blocked_pending_process_data',
        'functional_reference': 'passed_against_declared_binary_Liberty_contract',
        'source_circuit_comparison': 'failed_4_observations_per_view_retained',
        'first_flow_candidate': {'DFFPOSX1': 'binary inputs, separate timing checks',
            'DFFSRX1': 'S tied to 1; active-low reset only; separate release timing checks'},
        'outside_first_support_profile': ['DFFNEGX1', 'LATCHX1'],
        'unqualified': ['simultaneous R/S release and its later state until reinitialized',
            'CLK/data/control timing collisions', 'unknown CLK/R/S, metastability, power behavior',
            'timing/LVS/characterization/PVT/silicon equivalence'],
        'near_release_CDL_PEX_differences': differences,
    }
    out.mkdir(parents=True, exist_ok=True)
    (out/'checks.json').write_text(json.dumps(dict(
        script_sha256=sha(Path(__file__).resolve()), results=str(results),
        compare_results=str(a.compare_results) if a.compare_results else None,
        checks_passed=len(checks), checks=checks, qualification=qualification),
        ensure_ascii=False, indent=2)+'\n')
    print(json.dumps({'audit_checks_passed': len(checks), 'qualification': qualification},
                     ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
