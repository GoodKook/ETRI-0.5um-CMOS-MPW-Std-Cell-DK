#!/usr/bin/env python3
"""Check a fully mapped Yosys JSON netlist against the limited M0-08 profile.

This is a functional mapping guard, not STA, DRC/LVS or a general formal tool.
"""
import argparse
import json
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[1]/'M0-07-pdk-inventory'))
from inventory import liberty  # noqa: E402


def check(netlist, top, library, profile):
    if profile['DFFSRX1_required_constants'] != {'S': '1'}:
        raise ValueError('this profile requires inactive asynchronous set: S=1')
    if not set(profile['allowed_sequential_cells']).issubset({'DFFPOSX1', 'DFFSRX1'}):
        raise ValueError('this guard does not qualify other sequential cell types')
    modules = netlist['modules']
    if set(modules) != {top}:
        raise ValueError('expected one flat top module')
    module = modules[top]
    ports, cells = module['ports'], module['cells']
    clock = ports[profile['clock_port']]['bits']
    reset = ports[profile['active_low_reset_port']]['bits']
    if len(clock) != 1 or len(reset) != 1:
        raise ValueError('clock/reset must be scalar')
    if ports[profile['clock_port']]['direction'] != 'input' or ports[profile['active_low_reset_port']]['direction'] != 'input':
        raise ValueError('clock/reset must be input ports')
    known = library['cells']
    drivers = {}

    def drive(bit, who):
        drivers.setdefault(bit, []).append(who)

    for name, port in ports.items():
        if port['direction'] in ['input', 'inout']:
            for bit in port['bits']:
                drive(bit, ('input', name))
    for instance, cell in cells.items():
        typ = cell['type']
        if typ not in known:
            raise ValueError(f'{instance}: unknown/unmapped cell {typ}')
        pins = known[typ]['pins']
        if set(cell['connections']) != set(pins):
            raise ValueError(f'{instance}: unexpected pin set')
        for name, bits in cell['connections'].items():
            if len(bits) != 1:
                raise ValueError(f'{instance}.{name}: non-scalar cell pin')
            if pins[name]['direction'] == 'output':
                drive(bits[0], ('cell', instance, name))
    if any(len(ds) > 1 for ds in drivers.values()):
        raise ValueError('multiple drivers or tied input port')

    def constant(bit):
        if bit in ['0', '1']:
            return bit
        ds = drivers.get(bit, [])
        if len(ds) == 1 and ds[0][0] == 'cell':
            _, inst, pin = ds[0]
            return profile['constant_driver_cells'].get(cells[inst]['type'], {}).get(pin)
        return None

    sequential = []
    for instance, cell in cells.items():
        typ, con = cell['type'], cell['connections']
        if not known[typ]['sequential']:
            continue
        if typ not in profile['allowed_sequential_cells']:
            raise ValueError(f'{instance}: sequential cell outside profile: {typ}')
        ff = known[typ]['sequential'].get('ff', [{}])[0]
        if ff.get('clocked_on') != 'CLK' or ff.get('next_state') != 'D':
            raise ValueError(f'{instance}: unexpected Liberty edge/data contract')
        if con['CLK'] != clock:
            raise ValueError(f'{instance}: clock is not the top-level clock')
        item = dict(instance=instance, cell=typ, CLK=clock)
        if typ == 'DFFSRX1':
            for pin, value in profile['DFFSRX1_required_constants'].items():
                if constant(con[pin][0]) != value:
                    raise ValueError(f'{instance}.{pin}: must be constant {value}')
            allowed = profile['DFFSRX1_allowed_R']
            if not ((profile['active_low_reset_port'] in allowed and con['R'] == reset)
                    or constant(con['R'][0]) in allowed):
                raise ValueError(f'{instance}.R: unsupported reset source')
            item.update(S='constant 1', R='rst_n' if con['R'] == reset else 'constant 1',
                        dual_control_active_state_reachable=False)
        sequential.append(item)
    if not sequential:
        raise ValueError('expected at least one sequential cell')
    return dict(profile=profile['id'], status='passed', sequential=sequential,
                scope='mapped connectivity/functional profile only; timing and physical checks pending')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('netlist', type=Path)
    p.add_argument('--top', required=True)
    p.add_argument('--liberty', type=Path, required=True)
    p.add_argument('--profile', type=Path, default=HERE/'profile.json')
    a = p.parse_args()
    try:
        result = check(json.loads(a.netlist.read_text()), a.top,
                       liberty(a.liberty), json.loads(a.profile.read_text()))
    except (ValueError, KeyError) as error:
        p.exit(1, str(error)+'\n')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
