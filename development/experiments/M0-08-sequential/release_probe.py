"""Finite R/S release-skew experiment. Numerical observations, not signoff."""
import csv
import re


def run(view, source, ports, model, out, command):
    skews = [-20, -5, -1, -0.5, -0.1, 0, 0.1, 0.5, 1, 5, 20]
    cases = [dict(phase=c, d=d, skew_ns=skew)
             for c in [0, 1] for d in [0, 1] for skew in skews]
    waves = {k: [(0, v)] for k, v in dict(c=0, d=0, r=0, s=1).items()}

    def edge(key, time, value):
        points = waves[key]
        if points[-1][1] != value:
            points.extend([(time, points[-1][1]), (time+1, value)])

    for i, case in enumerate(cases):
        t = 200*i
        edge('r', t, 0); edge('s', t, 1)
        edge('c', t+40, case['phase']); edge('d', t+40, case['d'])
        edge('s', t+80, 0)  # both active, Q forced to reset independently of D
        # Negative skew releases R first; positive skew releases S first.
        edge('r', t+120+case['skew_ns']/2, 1)
        edge('s', t+120-case['skew_ns']/2, 1)
        case.update(id=i, sample_ns=t+170)
    data, deck = out/f'skew-{view}.dat', out/f'skew-{view}.cir'
    text = ['M0-08 DFFSRX1 release skew: not a calibrated timing model',
            f'.lib "{model}" MOS', f'.include "{source}"', '.temp 25', 'VP vdd 0 5']
    for k, points in waves.items():
        text += [f'V{k} {k} 0 PWL(']
        text += [f'+ {t}n {5*v}' for t, v in points]
        text += ['+)']
    nets = dict(CLK='c', D='d', R='r', S='s', Q='q', VDD='vdd', VSS='0')
    text += ['XSR '+' '.join(nets[p] for p in ports)+' DFFSRX1', 'CL q 0 0.05p',
             '.control', f'tran 0.2n {200*len(cases)}n 0 0.2n',
             f'wrdata {data} v(q)', 'quit', '.endc', '.end']
    deck.write_text('\n'.join(text)+'\n')
    execution = command(['ngspice', '-b', deck], out/f'skew-{view}.log')
    assert execution['exit_code'] == 0 and data.exists()
    samples = [list(map(float, line.split())) for line in data.read_text().splitlines()]
    assert samples[-1][0] >= (200*len(cases)-1)*1e-9
    j = 0
    for case in cases:
        t = case['sample_ns']*1e-9
        while j+1 < len(samples) and samples[j+1][0] < t:
            j += 1
        a, b = samples[j], samples[j+1]
        v = a[1]+(t-a[0])/(b[0]-a[0])*(b[1]-a[1])
        bit = 0 if v <= 1 else 1 if v >= 4 else 'indeterminate'
        # Only widely separated releases are sanity-checked here. Near zero,
        # every measured result remains diagnostic, with no timing conclusion.
        expected = int(case['skew_ns'] < 0) if abs(case['skew_ns']) >= 5 else None
        case.update(volts=v, observed=bit, separated_release_expected=expected,
                    separated_release_match=None if expected is None else bit == expected)
    with (out/f'skew-{view}-checks.csv').open('w', newline='') as f:
        writer = csv.DictWriter(f, cases[0]); writer.writeheader(); writer.writerows(cases)
    assert all(c['separated_release_match'] is not False for c in cases)
    return dict(run=execution, cases=cases, status='diagnostic_only_timing_unresolved',
                model_warnings=re.findall(r'unrecognized parameter[^\n]+',
                                          (out/execution['log']).read_text()),
                conditions=dict(voltage_V=5, temp_C=25, ramp_ns=1, output_load_pF=0.05,
                                skew_definition='R_rise_start - S_rise_start'))
