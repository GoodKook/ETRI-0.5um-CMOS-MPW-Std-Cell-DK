"""KLayout-only negative fixtures derived from a completed experiment GDS."""
import os
from pathlib import Path
import pya
out=Path(os.environ['M09_MUTATION_OUT']);out.mkdir(parents=True,exist_ok=True)
src=Path(os.environ['M09_SOURCE_GDS'])
for case in ['missing_master','power_open','power_short']:
    layout=pya.Layout();layout.read(str(src));top=layout.cell('shift_reg_8bit')
    if case=='missing_master':layout.cell('DFFSRX1').clear()
    elif case=='power_open':
        shapes=[s for s in top.shapes(layout.layer(32,0)).each()
                if not s.is_text() and s.bbox().height()>100000 and s.bbox().right<0]
        assert len(shapes)==1,len(shapes)
        shapes[0].delete()
    else:
        top.shapes(layout.layer(32,0)).insert(pya.Box(-5100,400,142700,600))
    layout.write(str(out/(case+'.gds')))
