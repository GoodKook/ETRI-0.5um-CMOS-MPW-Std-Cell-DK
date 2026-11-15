#!/usr/bin/env python3
"""Reassess the M0-08 blockers using native-view evidence and mapped circuits."""
import argparse
from collections import Counter
import copy
import hashlib
import json
from pathlib import Path
import random
import re
import shutil
import subprocess
import sys

from check_scope import check
from inventory import liberty

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[3]
STEM = 'NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T'
CELLS = ['DFFPOSX1', 'DFFNEGX1', 'DFFSRX1', 'LATCHX1']


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def dump(path, data):
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2)+'\n')


def run(argv, log, expected=0):
    r = subprocess.run(list(map(str, argv)), cwd=REPO, text=True, stdout=subprocess.PIPE,
                       stderr=subprocess.STDOUT, timeout=90)
    log.write_text(r.stdout)
    if r.returncode != expected:
        raise RuntimeError(f'{argv[0]}: exit {r.returncode}, expected {expected}; {log}')
    return dict(argv=list(map(str, argv)), cwd=str(REPO), exit_code=r.returncode, log=log.name)


def native_views(root, out):
    library = root/(STEM+'_std')
    files = sorted(f for f in library.rglob('*') if f.is_file())
    source = {str(f.relative_to(root)): sha(f) for f in files}
    cells = {}
    for name in CELLS:
        cell = cells[name] = {}
        for view, filename in [('schematic', 'sch.oa'), ('symbol', 'symbol.oa'), ('layout', 'layout.oa')]:
            p = library/name/view/filename
            strings = subprocess.check_output(['strings', '-a', str(p)], text=True).splitlines()
            selected = [s for s in strings if re.fullmatch(
                r'(?:22\.50\.\d+|DFF[A-Za-z0-9_]*|LATCH[A-Za-z0-9_]*|[0-9.]+u|CLKB)', s)]
            cell[view] = dict(path=str(p.relative_to(root)), sha256=sha(p),
                 tag=(p.parent/'master.tag').read_text(), printable_metadata=selected,
                 thumbnail=str((p.parent/'thumbnail_128x128.png').relative_to(root)))
    readers = {name: shutil.which(name) for name in ['oa2ascii', 'oaScan', 'virtuoso']}
    dump(out/'native-views.json', dict(library=str(library), total_files=len(files),
        extensions=dict(Counter(f.suffix for f in files)), file_hashes=source,
        cells=cells, readers_on_PATH=readers,
        inspection='Four schematic/symbol/layout native files inventoried; schematic/symbol thumbnails visually inspected by assistant. Strings are metadata, not decoded connectivity.',
        limitations=['No full OA schematic/layout decoding', 'No GDS extraction or LVS',
                     'History names and numeric strings do not prove cell equivalence or a mismatch']))
    return {library/Path(k).relative_to(library.name): v for k, v in source.items()}


def stimulus(async_reset):
    rows, c, d, r, q, previous = [], 0, 0, 1, None, None

    def put(label, **changes):
        nonlocal c, d, r, q, previous
        c, d, r = changes.get('c', c), changes.get('d', d), changes.get('r', r)
        if async_reset and r == 0:
            q = 0
        elif previous == 0 and c == 1:
            q = 0 if r == 0 else None if q is None else ((q << 1) | d) & 255
        rows.append(dict(id=len(rows), label=label, c=c, d=d, r=r, expected=q))
        previous = c

    put('startup')
    put('reset_assert_clock_stopped', r=0)
    put('reset_first_rise', c=1)
    put('reset_fall', c=0)
    put('reset_release_no_capture', r=1)
    rng = random.Random(8008)
    for i in range(160):
        bit = rng.randrange(2)
        # The last falling-edge D is deliberately opposite to the next captured D.
        put(f'{i}_data_before_rise', d=bit)
        put(f'{i}_capture', c=1)
        put(f'{i}_high_change', d=1-bit)
        if i in [17, 71, 119]:
            put(f'{i}_reset_assert_high', r=0)
            put(f'{i}_reset_release_high', r=1)
        put(f'{i}_inactive_fall', c=0)
    return rows


def bench(top, rows):
    lines = ['`timescale 1ns/1ps', 'module tb;', 'reg c,d,r; wire [7:0] q;',
             'integer checks=0, errors=0;',
             f'{top} dut(.clk(c),.rst_n(r),.din(d),.dout(q));', 'initial begin']
    for row in rows:
        lines += [f"c=1'b{row['c']}; d=1'b{row['d']}; r=1'b{row['r']}; #1;"]
        if row['expected'] is not None:
            lines += [f"checks=checks+1; if(q !== 8'd{row['expected']}) begin",
                      f'$display("MISMATCH id={row["id"]} expected={row["expected"]} actual=%h",q);',
                      'errors=errors+1; end']
        lines += ['#9;']
    lines += ['$display("RESULT checks=%0d mismatches=%0d",checks,errors);',
              'if(errors) $fatal(1,"functional mismatch"); $finish; end', 'endmodule']
    return '\n'.join(lines)+'\n'


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--pdk-root', type=Path, default=REPO.parent/'NSPL_05CMOS_PDK_260820')
    p.add_argument('--out', type=Path, default=HERE/'results')
    a = p.parse_args()
    root, out = a.pdk_root.resolve(), a.out.resolve()
    if out != HERE/'results' and Path('/tmp') not in out.parents:
        p.error('--out must be this experiment/results or under /tmp')
    if out == root or root in out.parents:
        p.error('output overlaps PDK')
    out.mkdir(parents=True, exist_ok=True)
    dig = root/(STEM+'_PnR')
    lib = dig/'LIB'/(STEM+'_std_tt.lib')
    rtl = dig/'VERILOG/shift_reg_8bit.v'
    vendor = dig/'VERILOG'/(STEM+'_std.v')
    candidate = HERE.parent/'derived/nspl12t_seq_functional.v'
    inputs = [lib, rtl, vendor, candidate, HERE/'profile.json', HERE/'check_scope.py', Path(__file__).resolve(),
              HERE.parents[1]/'M0-07-pdk-inventory/inventory.py',
              HERE.parent/'results/patch-plan.json', HERE.parent/'results/run.json']
    before = {str(f): sha(f) for f in inputs}
    native_hashes = native_views(root, out)
    profile, library = json.loads((HERE/'profile.json').read_text()), liberty(lib)
    original = vendor.read_text()
    replacements = {m[1]: m[0] for m in re.finditer(r'\bmodule\s+(\w+)\b.*?\bendmodule', candidate.read_text(), re.S)}
    assembled_text = re.sub(r'\bmodule\s+(\w+)\b.*?\bendmodule',
        lambda m: replacements.get(m[1], m[0]), original, flags=re.S)
    assembled = out/'functional-assembled.v'; assembled.write_text(assembled_text)
    # Exact same candidate as the earlier all-cell experiment, not a new patch.
    previous_patch = json.loads((HERE.parent/'results/patch-plan.json').read_text())
    assert sha(assembled) == previous_patch['output_sha256']
    sync = out/'shift_reg_sync8.v'
    sync.write_text('''module shift_reg_sync8(input clk,rst_n,din,output reg [7:0] dout);
always @(posedge clk) if(!rst_n) dout <= 8'b0; else dout <= {dout[6:0],din};
endmodule
''')
    reports, mapped = {}, {}
    for top, source, is_async in [('shift_reg_8bit', rtl, True), ('shift_reg_sync8', sync, False)]:
        script = out/(top+'.ys')
        gate, js = out/(top+'-gate.v'), out/(top+'-gate.json')
        script.write_text(f'''read_liberty -lib {lib}
read_verilog {source}
synth -top {top}
dfflibmap -dont_use DFFNEGX1 -dont_use LATCHX1 -liberty {lib}
abc -liberty {lib}
clean
check -assert
stat
select {top}
write_verilog -selected -noattr {gate}
write_json -selected -noscopeinfo {js}
''')
        synthesis = run(['yosys', '-Q', '-T', '-s', script], out/(top+'-yosys.log'))
        design = json.loads(js.read_text()); mapped[top] = design
        guard = check(design, top, library, profile)
        rows = stimulus(is_async); dump(out/(top+'-stimulus.json'), rows)
        tb = out/(top+'-tb.v'); tb.write_text(bench(top, rows))
        sims = {}
        for kind, sources, expected_exit in [('rtl', [source], 0),
                ('derived', [gate, assembled], 0), ('vendor', [gate, vendor], 1)]:
            name = top+'-'+kind
            compile_run = run(['iverilog', '-g2012', '-s', 'tb', '-o', out/(name+'.vvp'), tb, *sources],
                              out/(name+'-compile.log'))
            simulation = run(['vvp', out/(name+'.vvp')], out/(name+'-simulate.log'), expected_exit)
            log = (out/simulation['log']).read_text()
            m = re.search(r'RESULT checks=(\d+) mismatches=(\d+)', log)
            assert m and (int(m[2]) > 0 if kind == 'vendor' else int(m[2]) == 0)
            sims[kind] = dict(compile=compile_run, run=simulation, checks=int(m[1]), mismatches=int(m[2]))
        reports[top] = dict(synthesis=synthesis, guard=guard, simulations=sims,
            mapped_counts=dict(Counter(c['type'] for c in design['modules'][top]['cells'].values())))
    base = mapped['shift_reg_8bit']; top = 'shift_reg_8bit'
    first = next(k for k,v in base['modules'][top]['cells'].items() if v['type']=='DFFSRX1')
    invalid = {}
    for name, modify in [
        ('set_constant_zero', lambda cell, mod: cell['connections'].update(S=['0'])),
        ('dynamic_set', lambda cell, mod: cell['connections'].update(S=mod['ports']['din']['bits'])),
        ('different_clock', lambda cell, mod: cell['connections'].update(CLK=mod['ports']['din']['bits'])),
        ('negedge_ff', lambda cell, mod: cell.update(type='DFFNEGX1',connections={k:v for k,v in cell['connections'].items() if k not in ['R','S']})),
        ('latch', lambda cell, mod: cell.update(type='LATCHX1',connections={k:v for k,v in cell['connections'].items() if k not in ['R','S']})),
        ('unknown_cell', lambda cell, mod: cell.update(type='UNMAPPED_EXAMPLE')),
    ]:
        design = copy.deepcopy(base); mod = design['modules'][top]
        modify(mod['cells'][first], mod)
        try:
            check(design, top, library, profile)
        except ValueError as e:
            invalid[name] = str(e)
        else:
            raise AssertionError('guard accepted '+name)
    # A real tie-high cell must be accepted, but a multiply-driven top input
    # cannot be made "constant" by attaching a tie-high to it.
    for conflict in [False, True]:
        design = copy.deepcopy(base); mod = design['modules'][top]
        bit = mod['ports']['din']['bits'][0] if conflict else max(
            b for v in mod['cells'].values() for bs in v['connections'].values() for b in bs if isinstance(b,int))+1
        mod['cells'][first]['connections']['S'] = [bit]
        mod['cells']['scope_tie'] = dict(type='TIEHIX1', connections={'Y':[bit]})
        if conflict:
            try:
                check(design,top,library,profile)
            except ValueError as e:
                invalid['multiply_driven_set_input'] = str(e)
            else:
                raise AssertionError('multiply driven tie-high accepted')
        else:
            check(design,top,library,profile)
    earlier = json.loads((HERE.parent/'results/run.json').read_text())
    assert all(sha(Path(k)) == v for k,v in earlier['inputs'].items())
    assert before == {str(f):sha(f) for f in inputs}
    assert all(sha(f)==h for f,h in native_hashes.items())
    tools = {}
    for name, version in [('yosys','-V'),('iverilog','-V'),('vvp','-V')]:
        path = Path(shutil.which(name)).resolve()
        run([name,version],out/('version-'+name+'.log'))
        tools[name] = dict(path=str(path),sha256=sha(path))
    run(['yosys','-Q','-T','-p','help dfflibmap'],out/'help-dfflibmap.log')
    dump(out/'results.json', dict(profile=profile, cases=reports,
        rejected_bad_mappings=invalid, explicit_tie_high_accepted=True,
        current_profile_functional_validation='passed',
        M0_08_scope='functional model handling and criteria for the current synchronous core profile',
        full_sequential_library_qualification='not_claimed',
        timing_physical_and_silicon_validation='not_performed',
        prior_all_cell_failures_and_inputs_unchanged=True))
    dump(out/'run.json', dict(date='2026-11-15',timezone='Asia/Seoul',argv=sys.argv,cwd=str(Path.cwd()),
        inputs=before,tools=tools,artifacts={f.name:sha(f) for f in sorted(out.iterdir()) if f.is_file() and f.name!='run.json'}))
    print(json.dumps(dict(cases={n:dict(mapped=r['mapped_counts'],
        simulation={k:(v['checks'],v['mismatches']) for k,v in r['simulations'].items()}) for n,r in reports.items()},
        rejected_bad_mappings=len(invalid), native_files_unchanged=len(native_hashes)),indent=2))


if __name__ == '__main__':
    main()
