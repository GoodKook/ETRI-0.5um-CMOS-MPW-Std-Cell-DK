"""Flat scalar-cell SPEF endpoint/RC graph checks and explicitly synthetic fixture.

This checks annotation integrity, never RC technology accuracy or routed geometry.
"""
from collections import defaultdict, Counter
import math
import re

TOP='shift_reg_8bit'

def design(data):
    m=data['modules'][TOP]; nets=defaultdict(set); drivers={}; names={}
    for name,n in m['netnames'].items():
        if not n.get('hide_name'):
            for i,b in enumerate(n['bits']):
                if isinstance(b,int): names.setdefault(b,name if len(n['bits'])==1 else f'{name}[{i}]')
    for name,p in m['ports'].items():
        for i,b in enumerate(p['bits']):
            port=name if len(p['bits'])==1 else f'{name}[{i}]'
            names[b]=port; nets[b].add(('P',port,'I' if p['direction']=='input' else 'O'))
            if p['direction']=='input': drivers[b]=('P',port)
    for inst,c in m['cells'].items():
        for pin,bits in c['connections'].items():
            assert len(bits)==1 and isinstance(bits[0],int),f'unsupported scalar/constant connection {inst}/{pin}'
            b=bits[0]; d=c['port_directions'][pin]
            nets[b].add(('I',inst+':'+pin,'I' if d=='input' else 'O'))
            if d=='output':
                assert b not in drivers, 'multiple drivers'
                drivers[b]=('I',inst+':'+pin)
    assert set(nets)==set(drivers),'undriven net'
    assert all(len(n)>1 for n in nets.values()),'unconnected signal'
    assert len(set(names[b] for b in nets))==len(nets),'ambiguous net names'
    return {names[b]:terms for b,terms in nets.items()},m

def clock_profile(data):
    nets,m=design(data); cells=m['cells']; drivers={}
    for inst,c in cells.items():
        for pin,b in c['connections'].items():
            if c['port_directions'][pin]=='output': drivers[b[0]]=(inst,pin)
    top=m['ports']['clk']['bits'][0]; paths={}; cbits={top}
    for inst,c in cells.items():
        if c['type']!='DFFSRX1': continue
        b=c['connections']['CLK'][0]; seen=set(); path=[]; polarity=0
        while b!=top:
            assert b not in seen,'clock cycle'; seen.add(b); cbits.add(b)
            ni,pin=drivers[b]; nc=cells[ni]
            assert nc['type'] in ['CLKBUFX2','CLKBUFX4','INVX8'] and pin=='Y','unexpected clock driver'
            polarity^=nc['type']=='INVX8'
            path.append([ni,nc['type']]); b=nc['connections']['A'][0]
        assert path and polarity==0,'ideal or inverted sink clock'
        sr=c['connections']['S'][0]; si,sp=drivers[sr]
        assert cells[si]['type']=='TIEHIX1' and sp=='Y','S must remain inactive'
        assert c['connections']['R']==m['ports']['rst_n']['bits'],'reset changed'
        paths[inst]=path
    assert len(paths)==8
    counts=Counter(c['type'] for c in cells.values())
    return dict(sinks=8,paths=paths,cell_counts=dict(counts),buffer_depths=sorted({len(p) for p in paths.values()}),
                clock_net_count=len(cbits),positive_edge_preserved=True,S_inactive=True)

def fixture(data):
    """Synthetic 1-ohm/1-fF star per net, solely for annotation checker tests."""
    nets,_=design(data)
    out=['*SPEF "IEEE 1481-1998"','*DESIGN "shift_reg_8bit"','*DATE "annotation-fixture"',
         '*VENDOR "M0-10 synthetic fixture"','*PROGRAM "annotation.py"','*VERSION "1"',
         '*DESIGN_FLOW "PIN_CAP NONE"','*DIVIDER /','*DELIMITER :','*BUS_DELIMITER [ ]',
         '*T_UNIT 1 NS','*C_UNIT 1 FF','*R_UNIT 1 OHM','*L_UNIT 1 HENRY','*PORTS']
    for terms in nets.values():
        out += [f'{name} {d}' for kind,name,d in sorted(terms) if kind=='P']
    for name,terms in sorted(nets.items()):
        ts=sorted(terms); out += [f'*D_NET {name} {len(ts)}','*CONN']
        out += [f'*{kind} {pin} {d}' for kind,pin,d in ts]
        out += ['*CAP']+[f'{i+1} {pin} 1' for i,(_,pin,_) in enumerate(ts)]
        out += ['*RES']+[f'{i} {ts[0][1]} {pin} 1' for i,(_,pin,_) in enumerate(ts[1:],1)]+['*END']
    return '\n'.join(out)+'\n'

def audit(data,spef):
    expected,_=design(data); mapping={}
    assert '*DESIGN "shift_reg_8bit"' in spef,'wrong SPEF design'
    for block in re.findall(r'(?ms)^\*NAME_MAP\s*\n(.*?)(?=^\*[A-Z_]|\Z)',spef):
        mapping.update(re.findall(r'(?m)^(\*\d+) (\S+)',block))
    def expand(token):
        parts=token.split(':')
        return ':'.join(mapping.get(p,p) for p in parts).replace('\\[','[').replace('\\]',']')
    units={k:re.search(r'(?m)^\*'+k+r'_UNIT (\S+) (\S+)',spef).groups() for k in ['R','C']}
    assert units['R'][1] in ['OHM','KOHM'] and units['C'][1] in ['PF','FF'], 'unsupported SPEF units'
    assert all(math.isfinite(float(scale)) and float(scale)>0 for scale,unit in units.values())
    observed={}; rows={}
    for m in re.finditer(r'(?ms)^\*D_NET (\S+) (\S+)\s*\n(.*?)^\*END',spef):
        name=expand(m[1]);assert name not in observed,'duplicate D_NET'
        total=float(m[2]); assert math.isfinite(total) and total>0,'nonpositive/nonfinite C'
        block=m[3]; sec=re.search(r'(?ms)^\*CONN\s*\n(.*?)(?=^\*CAP)',block);assert sec
        term_list=[(kind,expand(pin),d) for kind,pin,d in re.findall(r'(?m)^\*(P|I) (\S+) ([IOB])',sec[1])]
        terms=set(term_list);assert len(terms)==len(term_list),'duplicate SPEF endpoint'
        observed[name]=terms
        caps=re.search(r'(?ms)^\*CAP\s*\n(.*?)(?=^\*RES)',block); assert caps
        cv=[]
        for line in caps[1].splitlines():
            if not line.strip(): continue
            parts=line.split(); assert len(parts) in [3,4]
            value=float(parts[-1]);assert math.isfinite(value) and value>=0
            cv.append(value)
        assert abs(sum(cv)-total)<=max(1e-8,total*1e-5),'C total mismatch (grounded fixture scope)'
        res=re.search(r'(?ms)^\*RES\s*\n(.*)',block); assert res
        graph=defaultdict(set); rr=[]
        for line in res[1].splitlines():
            if not line.strip():continue
            _,a,b,r=line.split();a,b=expand(a),expand(b);r=float(r)
            assert math.isfinite(r) and r>=0
            graph[a].add(b);graph[b].add(a);rr.append(r)
        assert rr and sum(rr)>0,'no positive route R'
        todo=[next(iter(graph))];seen=set()
        while todo:
            n=todo.pop()
            if n not in seen:seen.add(n);todo.extend(graph[n]-seen)
        assert seen==set(graph),'disconnected RC graph'
        assert {p for _,p,_ in terms}<=seen,'terminal missing from RC graph'
        rows[name]=dict(endpoints=len(terms),resistors=len(rr),R_sum=sum(rr),C_total=total)
    assert expected==observed,dict(missing_nets=sorted(set(expected)-set(observed)),extra_nets=sorted(set(observed)-set(expected)),
        endpoint_mismatches=[n for n in expected.keys()&observed.keys() if expected[n]!=observed[n]])
    return dict(status='passed',scope='annotation integrity only; no RC accuracy/geometry qualification',nets=len(rows),
                endpoints=sum(len(t) for t in observed.values()),units=units,details=rows)

if __name__=='__main__':
    import argparse,json
    from pathlib import Path
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--mapped-json',type=Path,required=True)
    p.add_argument('--spef',type=Path,required=True)
    a=p.parse_args()
    print(json.dumps(audit(json.loads(a.mapped_json.read_text()),a.spef.read_text()),indent=2))
