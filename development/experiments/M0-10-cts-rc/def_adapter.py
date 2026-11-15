"""Translate a deliberately narrow OpenDB DEF dialect to QRouter's parser."""
import re

def to_qrouter(s):
    changes={}
    # QRouter uses one global zero-phase lattice despite per-layer TRACKS.
    # Match the phase proven in M0-09: place origins x=1.6 mod3.2,
    # y=1.5 mod36. Translate every instance, terminal and PG conductor together.
    # The die is enlarged to retain the translated IO rectangles.
    s,n=re.subn(r'DIEAREA \( 0 0 \) \( 320000 288000 \)', 'DIEAREA ( 0 0 ) ( 326400 294000 )',s)
    assert n==1
    s,n=re.subn(r'(\+ (?:PLACED|FIXED) \( )(\d+) (\d+)( \))',lambda m:m[1]+str(int(m[2])+1600)+' '+str(int(m[3])+1500)+m[4],s)
    changes['translated_instances_and_terminals']=n
    s,n=re.subn(r'(?m)^(ROW \S+ core )(\d+) (\d+)',lambda m:m[1]+str(int(m[2])+1600)+' '+str(int(m[3])+1500),s)
    changes['translated_rows']=n
    m=re.search(r'(?ms)^SPECIALNETS \d+ ;\n(.*?)^END SPECIALNETS',s);assert m
    sec=re.sub(r'\( (\d+) (\d+) \)',lambda m:'( '+str(int(m[1])+1600)+' '+str(int(m[2])+1500)+' )',m[0])
    s=s[:m.start()]+sec+s[m.end():]
    changes['rigid_translation_um']=[1.6,1.5]
    assert 'NONDEFAULTRULE' not in s, 'QRouter cannot preserve CTS NDR'
    # Non-preferred track declarations are unsupported; retain preferred grids.
    s,changes['nonpreferred_track_declarations']=re.subn(
        r'(?m)^TRACKS (?:X .* LAYER MET[13]|Y .* LAYER MET2) ;\n','',s)
    assert changes['nonpreferred_track_declarations']==3
    s,n=re.subn(r'(?m)^(TRACKS [XY] )\d+( DO \d+ STEP \d+ LAYER MET[123] ;)',r'\g<1>0\2',s)
    assert n==3
    changes['routing_lattice_phase_um']=0
    # QRouter discards BPin rectangles and treats PLACED as a point tap.
    # Make the experiment's freely placed signal IOs actual grid points.
    m=re.search(r'(?ms)^PINS \d+ ;\n(.*?)^END PINS',s);assert m
    entries=re.split(r'(?m)(?=^\s*- )',m[1]); signal_moves=[]
    for i,e in enumerate(entries):
        n=re.match(r'\s*- (\S+) ',e)
        if n and n[1] not in ['VDD','VSS']:
            def snap(p):
                x,y=int(p[2]),int(p[3]); xx,yy=round(x/3200)*3200,round(y/3000)*3000
                signal_moves.append([n[1],[x,y],[xx,yy]])
                return p[1]+str(xx)+' '+str(yy)+p[4]
            entries[i]=re.sub(r'(\+ PLACED \( )(\d+) (\d+)( \))',snap,e)
    s=s[:m.start(1)]+''.join(entries)+s[m.end(1):]
    changes['signal_io_grid_moves_dbu']=signal_moves
    pat=r'(?m)^\s*- (\S+) \+ VIARULE (V12|V23) \+ CUTSIZE 800 800\s+\+ LAYERS (MET[12]) (VIA[12]) (MET[23])\s+\+ CUTSPACING 800 800\s+\+ ENCLOSURE 600 600 600 600\s*;'
    def via(m):
        name,rule,bot,cut,top=m.groups()
        assert (rule,bot,cut,top) in [('V12','MET1','VIA1','MET2'),('V23','MET2','VIA2','MET3')]
        return f'- {name}\n+ RECT {bot} ( -1000 -1000 ) ( 1000 1000 )\n+ RECT {cut} ( -400 -400 ) ( 400 400 )\n+ RECT {top} ( -1000 -1000 ) ( 1000 1000 ) ;'
    s,changes['parameterized_vias_to_identical_rectangles']=re.subn(pat,via,s)
    assert changes['parameterized_vias_to_identical_rectangles'] in [1,2]
    # Every generated BTerm has precisely one PORT. No multipart pin flattening.
    pins=re.search(r'(?ms)^PINS \d+ ;\n(.*?)^END PINS',s)[1]
    entries=re.split(r'(?m)^\s*- ',pins)[1:]
    assert len(entries)==13 and all(e.count('+ PORT')==1 for e in entries)
    s,changes['single_port_keyword']=re.subn(r'\+ PORT\s*\n','',s)
    s,changes['special_pin_keyword']=re.subn(r' \+ SPECIAL','',s)
    s,changes['shape_hints_geometry_unchanged']=re.subn(r' \+ SHAPE (?:STRIPE|FOLLOWPIN)','',s)
    # emit_routes() tests for ';' before parsing the net name on each line.
    # Put every semicolon and net header on separate lines (QFlow's dialect).
    m=re.search(r'(?ms)^NETS \d+ ;\n(.*?)^END NETS',s);assert m
    sec=re.sub(r'(?m)^\s*- (\S+) ',r'- \1\n  ',m[1])
    sec=sec.replace(' ;','\n;')
    s=s[:m.start(1)]+sec+s[m.end(1):]
    return s,changes

def from_qrouter(s):
    # Same duplicate-via defect observed in M0-09, with arbitrary indentation.
    pat=r'(?ms)^VIAS \d+ ;\n(.*?)^END VIAS[^\S\n]*\n'
    blocks=list(re.finditer(pat,s)); assert blocks
    assert all(m[1]==blocks[0][1] for m in blocks)
    payload=blocks[0][1]
    s=re.sub(pat,'',s)
    s=re.sub(r'(?m)^END VIAS[^\S\n]*\n','',s)
    pos=re.search(r'(?m)^COMPONENTS ',s).start()
    s=s[:pos]+f'VIAS {len(re.findall(r"(?m)^\s*- ",payload))} ;\n'+payload+'END VIAS\n'+s[pos:]
    for sec in ['COMPONENTS','PINS','NETS','SPECIALNETS']:
        pat=r'(?ms)^'+sec+r' \d+ ;\n(.*?)^END '+sec
        m=re.search(pat,s);assert m
        n=len(re.findall(r'(?m)^\s*- ',m[1]))
        s=s[:m.start()]+re.sub(r'^'+sec+r' \d+',sec+' '+str(n),m[0],count=1)+s[m.end():]
    return s,dict(duplicate_via_blocks=len(blocks),sections_recounted=True)
