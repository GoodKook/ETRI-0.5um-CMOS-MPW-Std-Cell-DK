"""KLayout batch: strict DEF import, original-cell merge and geometric connectivity.
Invoked by run.py. This checks conductor connectivity, not transistor LVS or DRC.
"""
import hashlib
import json
import os
from pathlib import Path
import re
import pya

OUT=Path(os.environ['M09_OUT'])
TOP='shift_reg_8bit'

def dump(name,obj):
    (OUT/name).write_text(json.dumps(obj,indent=2)+'\n')

def section(s,name):
    return re.search(r'(?m)^'+name+r' \d+ ;\n(.*?)^END '+name,s,re.S)[1]

def main():
    o=pya.LoadLayoutOptions();c=o.lefdef_config
    c.lef_files=[str(OUT/'tech/technology.lef'),str(OUT/'tech/cells.lef')]
    c.read_lef_with_def=False
    c.macro_layout_files=[str(OUT/'tech/cells.gds')]
    c.macro_resolution_mode=2
    c.dbu=0.001
    m=pya.LayerMap()
    for name,number in [('MET1',32),('VIA1',33),('MET2',34),('VIA2',35),('MET3',36),
                        ('MET1.LABEL',42),('MET2.LABEL',44),('MET3.LABEL',46),('OUTLINE',235)]:
        m.map(pya.LayerInfo(name),number,pya.LayerInfo(number,0))
    for purpose in ['routing','special_routing','via_geometry','pins']:
        setattr(c,purpose+'_suffix','')
        setattr(c,purpose+'_datatype',0)
    c.produce_cell_outlines=False
    c.produce_obstructions=False
    c.produce_blockages=False
    c.produce_lef_pins=False
    c.produce_lef_labels=False
    c.create_other_layers=False
    c.instance_property_name='instance_name'
    c.layer_map=m
    o.lefdef_config=c
    layout=pya.Layout()
    layout.read(str(OUT/'layout/handoff.def'),o)
    top=layout.cell(TOP)
    assert top and layout.dbu==.001
    output=OUT/'layout'/f'{TOP}.gds'
    layout.write(str(output))
    # Read the actual handoff back; all further checks use the saved GDS.
    verify_input=os.environ.get('M09_VERIFY_GDS',str(output))
    final=pya.Layout();final.read(verify_input);top=final.cell(TOP)
    source=pya.Layout();source.read(str(OUT/'tech/cells.gds'))
    assert final.dbu==source.dbu==.001
    ds=(OUT/'layout/handoff.def').read_text()
    comps=re.findall(r'^- (\S+) (\S+) \+ PLACED \( (-?\d+) (-?\d+) \) (\w+) ;',section(ds,'COMPONENTS'),re.M)
    units=int(re.search(r'UNITS DISTANCE MICRONS (\d+)',ds)[1])
    lef=(OUT/'tech/cells.lef').read_text()
    macros={m[1]:m[2] for m in re.finditer(r'^MACRO (\w+)\n(.*?)^END \1\s*$',lef,re.M|re.S)}
    cells={}
    for name in sorted({c[1] for c in comps}):
        a=source.cell(name);b=final.cell(name)
        assert a and b and not b.is_empty(),f'missing cell geometry {name}'
        equal=True;counts={}
        for li in source.layer_indices():
            info=source.get_info(li);lj=final.find_layer(info)
            assert lj is not None
            ra=pya.Region(a.begin_shapes_rec(li));rb=pya.Region(b.begin_shapes_rec(lj))
            equal &= (ra^rb).is_empty()
            ta=sorted((s.text.string,str(s.text.trans)) for s in a.shapes(li).each() if s.is_text())
            tb=sorted((s.text.string,str(s.text.trans)) for s in b.shapes(lj).each() if s.is_text())
            equal &= ta==tb
            counts[str(info)]=dict(polygons=ra.count(),texts=len(ta))
        assert equal,f'changed library cell {name}'
        cells[name]=dict(source_geometry_and_text_equal=True,layers=counts)
    insts=[i for i in top.each_inst() if i.cell.name in {v[1] for v in comps}]; assert len(insts)==len(comps)
    actual=sorted((i.cell.name,str(i.trans)) for i in insts)
    expected=[];transforms={};grid_bad=[]
    for inst,cell,x,y,ori in comps:
        w,h=map(float,re.search(r'SIZE ([\d.]+) BY ([\d.]+)',macros[cell]).groups())
        x,y=int(x)/units,int(y)/units
        if any(abs(v/.01-round(v/.01))>1e-6 for v in [x,y,w,h]):grid_bad.append(inst)
        W,H=round(w/.001),round(h/.001);X,Y=round(x/.001),round(y/.001)
        tr={'N':pya.Trans(0,False,X,Y),'S':pya.Trans(2,False,X+W,Y+H),
            'FS':pya.Trans(0,True,X,Y+H),'FN':pya.Trans(2,True,X+W,Y)}[ori]
        transforms[inst]=(cell,tr);expected.append((cell,str(tr)))
    assert sorted(expected)==actual,'DEF/GDS instance transform mismatch'
    assert not grid_bad
    # The placement phase is fixed by the router track origin, not global (0,0).
    assert all(abs((int(x)/units-1.6)/3.2-round((int(x)/units-1.6)/3.2))<1e-6
               and abs((int(y)/units-1.5)/36-round((int(y)/units-1.5)/36))<1e-6
               for _,_,x,y,_ in comps),'site/row phase mismatch'
    new_geometry_grid_bad=[]
    for cell in final.each_cell():
        if cell.name in cells:continue  # Original geometry was compared exactly above.
        for li in final.layer_indices():
            for shape in cell.shapes(li).each():
                if shape.is_text():continue
                for point in shape.polygon.each_point_hull():
                    if point.x%10 or point.y%10:new_geometry_grid_bad.append([cell.name,str(point)])
    assert not new_geometry_grid_bad,'new geometry off 0.01 um grid'
    actual_labels={shape.text.string for li in final.layer_indices() for shape in top.shapes(li).each() if shape.is_text()}
    expected_labels={'clk','rst_n','din','VDD','VSS'}|{f'dout[{j}]' for j in range(8)}
    assert actual_labels==expected_labels,(actual_labels,expected_labels)
    # Flat conductor graph from actual GDS polygons, with explicit VIA1/VIA2 bridges.
    polygons={n:list(pya.Region(top.begin_shapes_rec(final.layer(n,0))).merged().each()) for n in [32,33,34,35,36]}
    nodes={};parent={};regions={}
    for layer,ps in polygons.items():
        for j,poly in enumerate(ps):
            k=(layer,j);parent[k]=k;regions[k]=pya.Region(poly);nodes.setdefault(layer,[]).append(k)
    def find(a):
        while a!=parent[a]:parent[a]=parent[parent[a]];a=parent[a]
        return a
    def union(a,b):parent[find(a)]=find(b)
    def intersects(a,b):return not (a&b).is_empty()
    for via,lo,hi in [(33,32,34),(35,34,36)]:
        for k in nodes[via]:
            for metal in [lo,hi]:
                for v in nodes[metal]:
                    if intersects(regions[k],regions[v]):union(k,v)
    pinregions={}
    for inst,(cell,tr) in transforms.items():
        for pm in re.finditer(r'^  PIN (\S+)\n(.*?)^  END \1\s*$',macros[cell],re.M|re.S):
            r=pya.Region()
            for rect in re.findall(r'RECT ([\d.-]+) ([\d.-]+) ([\d.-]+) ([\d.-]+)',pm[2]):
                r.insert(pya.Box(*[round(float(v)/.001) for v in rect]).transformed(tr))
            pinregions[(inst,pm[1])]=(32,r)
    for pm in re.finditer(r'^- (\S+) \+ NET \S+\n(.*?);',section(ds,'PINS'),re.M|re.S):
        b=re.search(r'LAYER MET(\d) \( (-?\d+) (-?\d+) \) \( (-?\d+) (-?\d+) \)',pm[2])
        p=re.search(r'PLACED \( (-?\d+) (-?\d+) \) N',pm[2]);x,y=int(p[1]),int(p[2])
        r=pya.Region(pya.Box(*[round(v/units/.001) for v in [int(b[2])+x,int(b[3])+y,int(b[4])+x,int(b[5])+y]]))
        pinregions[('PIN',pm[1])]=(30+2*int(b[1]),r)
    nets={}
    for sec in ['NETS','SPECIALNETS']:
        for nm in re.finditer(r'^- (\S+)\s*\n(.*?);',section(ds,sec),re.M|re.S):
            name=nm[1];terminals=re.findall(r'\( (\S+) (\S+) \)',nm[2].split('+')[0])
            if terminals:nets.setdefault(name,[]).extend(terminals)
    assert len(nets)==21 and set(nets['VDD'])=={('PIN','VDD')}|{(inst,'VDD') for inst in transforms}
    assert set(nets['VSS'])=={('PIN','VSS')}|{(inst,'VSS') for inst in transforms}
    # Compare DEF signal endpoints independently with the final mapped JSON.
    mapped=json.loads((OUT/'synthesis/route.json').read_text())['modules'][TOP]
    expected_endpoints={}
    for inst,cell in mapped['cells'].items():
        assert cell['type']==transforms[inst][0]
        for pin,bits in cell['connections'].items():expected_endpoints[(inst,pin)]=bits[0]
    for port,entry in mapped['ports'].items():
        for j,bit in enumerate(entry['bits']):expected_endpoints[('PIN',port if len(entry['bits'])==1 else f'{port}[{j}]')]=bit
    actual_endpoints=[]
    for name,terms in nets.items():
        if name in ['VDD','VSS']:continue
        assert len({expected_endpoints[term] for term in terms})==1,f'DEF/netlist signal mismatch: {name}'
        actual_endpoints.extend(terms)
    assert len(actual_endpoints)==len(set(actual_endpoints))
    assert set(actual_endpoints)==set(expected_endpoints),'DEF/netlist endpoint coverage mismatch'
    connections={};opens=[];shorts=[];owners={}
    for name,terms in nets.items():
        ids=set();missing=[]
        for term in terms:
            layer,reg=pinregions[term]
            found={find(k) for k in nodes[layer] if intersects(regions[k],reg)}
            if len(found)!=1:missing.append(dict(terminal=term,components=len(found)))
            ids.update(found)
        if len(ids)!=1 or missing:opens.append(dict(net=name,components=len(ids),missing=missing))
        for root in ids:owners.setdefault(root,[]).append(name)
        connections[name]=dict(terminals=len(terms),components=len(ids),missing=missing)
    shorts=[names for names in owners.values() if len(names)>1]
    report=dict(gds=verify_input,dbu_um=final.dbu,top_cells=[c.name for c in final.top_cells()],
        cells=cells,instance_count=len(insts),def_instances_preserved=True,manufacturing_grid_um=.01,
        instance_grid_violations=grid_bad,new_geometry_grid_violations=new_geometry_grid_bad,
        placement_site_um=[3.2,36],placement_phase_um=[1.6,1.5],top_pin_labels=sorted(actual_labels),
        def_vs_final_netlist_endpoints='passed',signal_endpoints=len(expected_endpoints),power_endpoints=34,geometry_components={str(n):len(ps) for n,ps in polygons.items()},
        nets=connections,opens=opens,shorts=shorts,
        connectivity_scope='MET1/VIA1/MET2/VIA2/MET3 polygons vs all DEF endpoints; no devices, DRC or analog extraction',
        status='passed' if not opens and not shorts else 'failed')
    dump('gds-check.json',report)
    assert not opens and not shorts, f'conductor connectivity: {len(opens)} opens, {len(shorts)} shorts'
    print(json.dumps(report,indent=2))

try:main()
except Exception as e:
    dump('gds-error.json',dict(error=str(e)))
    raise
