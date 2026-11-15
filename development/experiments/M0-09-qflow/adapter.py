"""Narrow, fail-closed adapters for observed QFlow/NSPL format issues."""
import hashlib
import re

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def adapt_lef(tech):
    report={}
    for name in ['cells.lef','technology.lef']:
        p=tech/name;raw=p.read_text();s=raw
        p.unlink()  # Replace ONLY the experiment-local symlink, never its target.
        if name=='cells.lef':
            for cell in ['FAX1','HAX1']:
                pat=r'(^MACRO '+cell+r'\n.*?^  PIN S\n\s+DIRECTION )INPUT'
                s,n=re.subn(pat,r'\g<1>OUTPUT',s,flags=re.M|re.S);assert n==1
            changes=['FAX1.S and HAX1.S INPUT -> OUTPUT (Liberty/CDL/Verilog consensus)']
        else:
            for layer in ['NSD','PSD']:
                s,n=re.subn(r'^LAYER '+layer+r'\n.*?^END '+layer+r'\n','',s,flags=re.M|re.S);assert n==1
            s,n=re.subn(r'^VIARULE V01 GENERATE DEFAULT\n.*?^END V01\n','',s,flags=re.M|re.S);assert n==1
            changes=['omit NSD/PSD IMPLANT declarations unsupported by router',
                     'omit POLY1/CONT V01 generated contact rule (not a routing-layer via)',
                     'retain all MET1/2/3, VIA1/2 rules, site, grid and all macro pin/OBS geometry']
        p.write_text(s)
        report[name]=dict(original_sha256=hashlib.sha256(raw.encode()).hexdigest(),derived_sha256=sha(p),changes=changes)
    return report

def power_pins(s):
    """Give generated power terminals area and explicit endpoint membership.
    Preserve the addspacers comb shapes; connectivity is independently checked.
    """
    instances=re.findall(r'^- (\S+) (\S+) \+ PLACED',section(s,'COMPONENTS'),re.M)
    changes=[]
    for net,use in [('VDD','POWER'),('VSS','GROUND')]:
        pat=r'(^- '+net+r' \+ NET '+net+r'\n\s+\+ LAYER MET1 )\( (-?\d+) 0 \) \( (-?\d+) 0 \)'
        s,n=re.subn(pat,r'\g<1>( \2 -100 ) ( \3 100 )',s,flags=re.M);assert n==1
        sec=section(s,'SPECIALNETS')
        pat=r'(^- '+net+r'\n)'
        new,n=re.subn(pat,lambda m:m[0]+f'  ( PIN {net} )\n'+''.join(f'  ( {inst} {net} )\n' for inst,_ in instances)+f'+ USE {use}\n',sec,flags=re.M)
        assert n==1
        s=s.replace(sec,new,1)
        changes.append(dict(net=net,cell_pg_endpoints=len(instances),terminal_height_um=2))
    return s,changes

def section(s,name):
    return re.search(r'(?m)^'+name+r' \d+ ;\n(.*?)^END '+name,s,re.S)[1]

def normalize_def(s):
    """Remove duplicate via declarations and recount sections, preserving payload."""
    changes=[]
    pat=r'(?m)^VIAS (\d+) ;\n(.*?)^END VIAS[^\S\n]*\n'
    blocks=list(re.finditer(pat,s,re.S))
    assert blocks
    assert all(m[2]==blocks[0][2] for m in blocks),'unexpected nonidentical VIAS blocks'
    via_payload=blocks[0][2]
    expected_ends=len(blocks)
    s=re.sub(pat,'',s,flags=re.S)
    # QRouter leaves one orphan END VIAS after its first emitted block.
    orphan=len(re.findall(r'(?m)^END VIAS[^\S\n]*\n',s))
    assert orphan in [0,1]
    s=re.sub(r'(?m)^END VIAS[^\S\n]*\n','',s)
    pos=re.search(r'(?m)^COMPONENTS ',s).start()
    via_block=f'VIAS {len(re.findall(r"(?m)^- ",via_payload))} ;\n'+via_payload+'END VIAS\n\n'
    s=s[:pos]+via_block+s[pos:]
    changes.append(dict(section='VIAS',input_blocks=expected_ends,orphan_ends=orphan,output_blocks=1,
                        identical_duplicate_payload_only=True))
    for name in ['COMPONENTS','PINS','NETS','SPECIALNETS']:
        pat=r'(?m)^'+name+r' (\d+) ;\n(.*?)^END '+name
        m=re.search(pat,s,re.S);assert m
        n=len(re.findall(r'(?m)^- ',m[2]))
        if n!=int(m[1]):
            changes.append(dict(section=name,declared=int(m[1]),actual=n))
            s=s[:m.start()]+m[0].replace(name+' '+m[1],name+' '+str(n),1)+s[m.end():]
    return re.sub(r'\n{3,}', '\n\n', s),changes
