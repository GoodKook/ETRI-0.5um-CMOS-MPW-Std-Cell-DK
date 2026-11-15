"""Run inside KLayout: klayout -b -r gds_inventory.py -rd input=... -rd output=..."""
import json
import pya

layout = pya.Layout()
layout.read(input)


def box_um(box):
    if box.empty():
        return None
    return [round(v * layout.dbu, 9) for v in (box.left, box.bottom, box.right, box.top)]


cells = {}
for cell in layout.each_cell():
    labels, layers, boundaries = [], {}, []
    for index in layout.layer_indices():
        info = layout.get_info(index)
        shapes = cell.shapes(index)
        count = shapes.size()
        if not count:
            continue
        key = f"{info.layer}/{info.datatype}"
        layers[key] = count
        for shape in shapes.each():
            if shape.is_text():
                labels.append({"name": shape.text.string, "layer": key,
                               "xy_um": [round(shape.text.x * layout.dbu, 9),
                                         round(shape.text.y * layout.dbu, 9)]})
            elif info.layer == 235 and info.datatype == 0:
                boundaries.append(box_um(shape.bbox()))
    cells[cell.name] = {"bbox_um": box_um(cell.bbox()), "layers": layers,
                        "labels": sorted(labels, key=lambda x: (x["name"], x["layer"], x["xy_um"])),
                        "prBoundary_boxes_um": boundaries,
                        "children": sorted(layout.cell(i).name for i in cell.each_child_cell())}
with open(output, "w") as stream:
    json.dump({"status": "read", "reader": "KLayout " + pya.Application.instance().version(),
               "dbu_um": layout.dbu, "top_cells": sorted(c.name for c in layout.top_cells()),
               "layers": sorted(str(layout.get_info(i)) for i in layout.layer_indices()),
               "cells": cells}, stream, indent=2, sort_keys=True)
    stream.write("\n")
