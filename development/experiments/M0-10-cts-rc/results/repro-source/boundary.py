"""Independently compare DEF declarations across the experimental boundary.

Routing declarations are not proof of physical connectivity or a final netlist.
"""
import re
from annotation import design

def section(s,name):
    m=re.search(r'(?ms)^'+name+r' \d+ ;\n(.*?)^END '+name,s);assert m,name
    return m[1]

def components(s):
    return {inst:(cell,int(x),int(y),ori) for inst,cell,x,y,ori in re.findall(
        r'(?m)^\s*- (\S+) (\S+).*?\+ (?:PLACED|FIXED) \( (\d+) (\d+) \) (\w+) ;',section(s,'COMPONENTS'))}

def nets(s):
    entries=re.findall(r'(?ms)^\s*- (\S+) (.*?);',section(s,'NETS'))
    # A net header may be followed directly by a newline.
    if not entries:
        entries=re.findall(r'(?ms)^\s*- (\S+)\s+(.*?);',section(s,'NETS'))
    return {n:set(re.findall(r'\( (\S+) (\S+) \)',body.split('+')[0])) for n,body in entries}

def check(before,adapted,routed,data):
    for s in [before,adapted,routed]:
        assert re.search(r'UNITS DISTANCE MICRONS (\d+)',s)[1]=='1000','DEF unit changed'
        assert 'DESIGN shift_reg_8bit ;' in s
    a,b,c=map(components,[before,adapted,routed])
    assert len(a)==len(b)==len(c)==19 and a.keys()==b.keys()==c.keys()
    assert all((cell,x+1600,y+1500,ori)==b[n] for n,(cell,x,y,ori) in a.items()),'instance translation changed'
    assert b==c,'router changed placement/master'
    ns,mod=design(data)
    expected={name:{('PIN',p) if k=='P' else tuple(p.rsplit(':',1)) for k,p,d in ts} for name,ts in ns.items()}
    for s in [before,adapted,routed]: assert nets(s)==expected,'DEF/CTS netlist names or endpoints differ'
    # Check original PG conductor paths after the declared rigid translation.
    pg=section(before,'SPECIALNETS')
    pg=re.sub(r'\( (\d+) (\d+) \)',lambda m:f'( {int(m[1])+1600} {int(m[2])+1500} )',pg)
    pg=re.sub(r' \+ SHAPE (?:STRIPE|FOLLOWPIN)','',pg)
    assert ' '.join(pg.split())==' '.join(section(adapted,'SPECIALNETS').split()),'PG geometry changed unexpectedly'
    return dict(status='passed',scope='logical declarations, instance transform, PG paths and units only; geometry not validated',
        components=len(c),signal_nets=len(expected),signal_endpoints=sum(len(ts) for ts in expected.values()),
        instance_translation_um=[1.6,1.5],DEF_units_per_um=1000,
        final_routed_netlist_available=False,final_geometry='blocked by incomplete routes')
