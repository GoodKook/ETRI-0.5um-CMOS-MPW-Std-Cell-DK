#!/usr/bin/env python3
"""Read-only, bounded NSPL/KHU view inventory. No PDK rewriting or tool installation.

Parsers deliberately cover the supplied scalar cell libraries, not general HDL/LEF.
Unparsed binary views and semantic checks are explicitly unknown, never passes.
"""
import argparse
import csv
import hashlib
import itertools
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
PDK_NAME = "NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR"
PREFIX = "NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T"


def sha(path):
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def clean(text):
    # Preserve strings containing comment-like text.
    return re.sub(r'"(?:\\.|[^"\\])*"|/\*.*?\*/|//[^\n]*',
                  lambda m: m[0] if m[0].startswith('"') else " ", text, flags=re.S)


def groups(text, kind):
    pattern = re.compile(r"\b" + kind + r"\s*\(([^()]*)\)\s*\{")
    for match in pattern.finditer(text):
        depth, quoted, escaped = 1, False, False
        end = match.end()
        while end < len(text) and depth:
            c = text[end]
            if escaped:
                escaped = False
            elif quoted and c == "\\":
                escaped = True
            elif c == '"':
                quoted = not quoted
            elif not quoted:
                depth += (c == "{") - (c == "}")
            end += 1
        if depth:
            raise ValueError(f"Unclosed {kind}: {match[1]}")
        yield match[1].strip().strip('"'), text[match.end():end - 1]


def attrs(text):
    # Only attributes at this brace depth; do not inherit timing/group attributes.
    flat, depth, quoted = [], 0, False
    for c in text:
        if c == '"':
            quoted = not quoted
        if not quoted and c == "{":
            depth += 1
        if depth == 0:
            flat.append(c)
        if not quoted and c == "}":
            depth -= 1
    return {k: v.strip().strip('"') for k, v in
            re.findall(r'\b(\w+)\s*:\s*("[^"\n]*"|[^;{}]+)\s*;', "".join(flat))}


def liberty(path):
    text = clean(path.read_text())
    name, body = next(groups(text, "library"))
    cells = {}
    for cell, cb in groups(body, "cell"):
        pins = {p: attrs(pb) for p, pb in groups(cb, "pin")}
        power = {p: attrs(pb) for p, pb in groups(cb, "pg_pin")}
        seq = {kind: [{"state": n, **attrs(b)} for n, b in groups(cb, kind)]
               for kind in ("ff", "latch")}
        cells[cell] = {"attributes": attrs(cb), "pins": pins, "power": power,
                       "sequential": {k: v for k, v in seq.items() if v}}
    return {"name": name, "attributes": attrs(body), "cells": cells,
            "capacitive_load_unit": re.findall(r"capacitive_load_unit\s*\(([^)]+)\)", body)}


def lef(path):
    text = re.sub(r"#[^\n]*", "", path.read_text())
    def field(body, key):
        m = re.search(r"\b" + key + r"\s+([^;]+);", body)
        return m[1].strip() if m else None
    def named(kind, source):
        return re.findall(r"^\s*" + kind + r"\s+(\S+)[^\n]*\n(.*?)^\s*END\s+\1\s*$", source, re.M | re.S)
    cells = {}
    for name, body in named("MACRO", text):
        pins = {}
        for pin, pb in named("PIN", body):
            pins[pin] = {"direction": field(pb, "DIRECTION"), "use": field(pb, "USE"),
                         "layers": sorted(set(re.findall(r"\bLAYER\s+(\S+)", pb))),
                         "rects": re.findall(r"\bRECT\s+([^;]+);", pb)}
        obs = body.split("OBS", 1)[1] if re.search(r"\bOBS\b", body) else ""
        cells[name] = {"pins": pins, "obs_layers": sorted(set(re.findall(r"\bLAYER\s+(\S+)", obs))),
                       **{k.lower(): field(body, k) for k in
                       ("CLASS", "SIZE", "SITE", "ORIGIN", "SYMMETRY")}}
    header = text.split("MACRO", 1)[0]
    layers = {n: {k.lower(): field(b, k) for k in
              ("TYPE", "DIRECTION", "PITCH", "OFFSET", "WIDTH", "SPACING", "RESISTANCE", "CAPACITANCE")}
              for n, b in named("LAYER", header) if field(b, "TYPE")}
    sites = {n: {k.lower(): field(b, k) for k in ("SIZE", "CLASS", "SYMMETRY")}
             for n, b in named("SITE", header)}
    return {"cells": cells, "layers": layers, "sites": sites,
            "grid_um": field(header, "MANUFACTURINGGRID"),
            "database_units_per_um": field(header, "DATABASE MICRONS")}


def verilog(path):
    text = clean(path.read_text())
    cells = {}
    for match in re.finditer(r"\bmodule\s+(\w+)\s*(?:\((.*?)\))?\s*;(.*?)\bendmodule", text, re.S):
        name, header, body = match.groups()
        pins = {}
        for declaration in re.finditer(r"\b(input|output|inout)\b(.*?)(?=\b(?:input|output|inout)\b|;|\);|$)",
                                       (header or "") + ");\n" + body, re.S):
            part = re.sub(r"\b(?:wire|reg|signed)\b", "", declaration[2]).strip().rstrip(", \n")
            if "[" in part:
                raise ValueError(f"Vector declaration outside scalar parser: {name}")
            for pin in part.split(","):
                pin = pin.strip()
                if pin:
                    if not re.fullmatch(r"\w+", pin):
                        raise ValueError(f"Unsupported port {name}: {pin}")
                    pins[pin] = declaration[1]
        cells[name] = {"pins": pins, "empty_wrapper": not pins,
                       "assigns": re.findall(r"\bassign\s+([^;]+);", body),
                       "events": re.findall(r"\balways\s*@\s*\((.*?)\)", body, re.S)}
    return {"cells": cells, "timescales": sorted(set(re.findall(r"`timescale\s+([^\n]+)", text)))}


def spice(path):
    text = re.sub(r"\n\s*\+", " ", path.read_text())
    cells = {}
    for match in re.finditer(r"^\s*\.subckt\s+(\S+)\s*([^\n]*)\n(.*?)^\s*\.ends[^\n]*", text, re.M | re.S | re.I):
        name, pins, body = match.groups()
        pininfo = dict(re.findall(r"(\w+):([IOB])\b", " ".join(re.findall(r"^\*\.PININFO[^\n]*", body, re.M | re.I))))
        cells[name] = {"port_order": pins.split(), "pininfo": pininfo,
                       "mos_models": sorted(set(re.findall(r"^M\S+\s+(?:\S+\s+){4}(\S+)", body, re.M | re.I)))}
    return {"cells": cells}


def table(path, rows, fields):
    with path.open("w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for row in rows:
            w.writerow({k: (json.dumps(row[k], ensure_ascii=False, sort_keys=True)
                            if isinstance(row.get(k), (list, dict)) else row.get(k, "")) for k in fields})


def dump(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2, sort_keys=True) + "\n")


def run(cmd, log, cwd):
    try:
        p = subprocess.run([str(x) for x in cmd], cwd=cwd, capture_output=True, text=True, timeout=120)
        log.write_text("$ " + " ".join(str(x) for x in cmd) + "\n" + p.stdout + p.stderr)
        return p.returncode, p.stdout
    except (OSError, subprocess.TimeoutExpired) as e:
        log.write_text(str(e) + "\n")
        return None, ""


def bool_verilog(expr):
    # Liberty boolean subset in these files, including implicit AND: (A B).
    tokens = re.findall(r"[A-Za-z_]\w*|[01]|[()!~&*+|^]", expr)
    if re.sub(r"\s+", "", "".join(tokens)) != re.sub(r"\s+", "", expr):
        raise ValueError("Unsupported boolean syntax: " + expr)
    result, prev = [], None
    for token in tokens:
        end = prev is not None and (re.fullmatch(r"\w+", prev) or prev == ")")
        start = re.fullmatch(r"\w+", token) or token in ("(", "!", "~")
        if end and start:
            result.append("&")
        result.append({"!": "~", "+": "|", "*": "&", "0": "1'b0", "1": "1'b1"}.get(token, token))
        prev = token
    return " ".join(result)


def simulate(lib, models, out):
    results = []
    for model_name, (path, model) in models.items():
        lines = ["`timescale 1ns/1ps", "module tb;"]
        blocks = []
        for index, (name, cell) in enumerate(sorted(lib.get("cells", {}).items())):
            pins = cell["pins"]
            inputs = sorted(p for p, a in pins.items() if a.get("direction") == "input")
            outputs = sorted(p for p, a in pins.items() if a.get("direction") == "output")
            if cell["sequential"] or not outputs or any(a.get("direction") == "inout" for a in pins.values()):
                continue
            if name not in model["cells"] or set(model["cells"][name]["pins"]) != set(pins):
                continue
            exprs = {p: a["function"] for p, a in pins.items() if p in outputs and "function" in a}
            if len(exprs) != len(outputs) or any(set(re.findall(r"[A-Za-z_]\w*", ex)) - set(inputs) for ex in exprs.values()):
                continue
            b = [f"begin : c{index}", "integer errors;", "errors=0;"]
            prefix = f"c{index}_"
            for p in inputs:
                lines.append(f"reg {prefix}{p};")
            for p in outputs:
                lines.append(f"wire {prefix}{p};")
            lines.append(f"{name} u{index}(" + ",".join(f".{p}({prefix}{p})" for p in inputs + outputs) + ");")
            for bits in itertools.product((0, 1), repeat=len(inputs)):
                b.extend(f"{prefix}{p}=1'b{v};" for p, v in zip(inputs, bits))
                b.append("#100;")
                for p, expr in exprs.items():
                    e = bool_verilog(expr)
                    if pins[p].get("three_state"):
                        e = f"({bool_verilog(pins[p]['three_state'])}) ? 1'bz : ({e})"
                    e = re.sub(r"\b[A-Za-z_]\w*\b", lambda m: prefix + m[0] if m[0] in inputs else m[0], e)
                    b.append(f"if ({prefix}{p} !== ({e})) begin errors=errors+1; "
                             f'$display("MISMATCH {name}.{p} inputs={bits} actual=%b expected=%b", {prefix}{p}, ({e})); end')
            b.append(f'$display("RESULT {name} %0d {2 ** len(inputs)}",errors); end')
            blocks.append("\n".join(b))
        lines.extend(["initial begin", *blocks, "$finish; end", "endmodule"])
        tb = out / f"comb-{model_name}.v"
        tb.write_text("\n".join(lines) + "\n")
        executable = out / f"comb-{model_name}.vvp"
        rc, _ = run(["iverilog", "-s", "tb", "-o", executable, tb, path], out / f"compile-{model_name}.log", out)
        if rc != 0 and shutil.which("iverilog"):
            # Original zero-delay MUX declares a continuously assigned reg Y.
            # Record the Verilog failure and an explicit SystemVerilog retry.
            rc, _ = run(["iverilog", "-g2012", "-s", "tb", "-o", executable, tb, path], out / f"compile-sv-{model_name}.log", out)
        if rc != 0:
            results.append({"model": model_name, "cell": "*", "status": "unknown", "reason": "iverilog unavailable/compile failure"})
            continue
        rc, stdout = run(["vvp", executable], out / f"simulate-{model_name}.log", out)
        for name, errors, vectors in re.findall(r"^RESULT (\w+) (\d+) (\d+)$", stdout, re.M):
            results.append({"model": model_name, "cell": name, "status": "pass" if int(errors) == 0 and rc == 0 else "mismatch",
                            "errors": int(errors), "vectors": int(vectors), "scope": "2-state inputs; outputs include Z; no timing/signoff"})
        executable.unlink(missing_ok=True)
    return results


def technology(digital, parsed, out):
    """Extract explicit declarations; do not infer RC conversion or DRC coverage."""
    maps = {}
    for line in (digital / f"MAP/{PREFIX}_std.map").read_text().splitlines():
        words = line.split()
        if len(words) == 4 and words[2].isdigit() and words[3].isdigit():
            maps[words[0]] = f"{words[2]}/{words[3]}"
    itf_text = (digital / f"TECH/{PREFIX}_std.itf").read_text()
    itf = {kind: {name: dict(re.findall(r"(\w+)\s*=\s*([^\s}]+)", body))
                  for name, body in re.findall(r"\b" + kind + r"\s+(\w+)\s*\{([^}]+)\}", itf_text)}
           for kind in ("CONDUCTOR", "DIELECTRIC", "VIA")}
    magic_text = (REPO / "tech/SCN3ME_SUBM.30.ETRI.tech").read_text()
    magic, section, style, layer = [], None, None, None
    for line in magic_text.splitlines():
        words = line.split("#", 1)[0].split()
        if not words:
            continue
        if words[0] in ("cifoutput", "cifinput"):
            section = words[0]
        elif words[0] == "end":
            section = None
        elif section:
            if words[0] == "style":
                style = " ".join(words[1:])
            elif words[0] == "layer":
                layer = " ".join(words[1:])
            elif words[0] == "calma":
                magic.append({"section": section, "style": style, "layer_expression": layer,
                              "calma": " ".join(words[1:])})
    tf_text = (digital / f"TECH/{PREFIX}_icc2.tf").read_text()
    tf_units = dict(re.findall(r'^\s*(unit\w+|\w+Precision|gridResolution)\s*=\s*([^\n]+)', tf_text, re.M))
    unit_rows, layer_rows = [], []
    for name, data in parsed.items():
        lib = data.get("liberty", {})
        tech = data.get("techlef", data.get("lef", {}))
        unit_rows.append({"library": name, "liberty_units": {k: v for k, v in lib.get("attributes", {}).items() if "unit" in k},
                          "liberty_cap_unit": lib.get("capacitive_load_unit"),
                          "pvt": {k: v for k, v in lib.get("attributes", {}).items() if k.startswith("nom_")},
                          "lef_dbu_per_um": tech.get("database_units_per_um"), "manufacturing_grid_um": tech.get("grid_um"),
                          "sites": tech.get("sites"), "gds_dbu_um": data.get("gds", {}).get("dbu_um"),
                          "verilog_timescale": data.get("verilog", {}).get("timescales"),
                          "cdl_units": "SPICE suffixes; no standalone direction/unit declaration in old extracted SPICE"})
        for layer_name, layer in tech.get("layers", {}).items():
            candidate = {"metal1": "MET1", "metal2": "MET2", "metal3": "MET3", "via1": "VIA1", "via2": "VIA2", "cc": "CONT"}.get(layer_name, layer_name)
            layer_rows.append({"library": name, "layer": layer_name, **layer,
                               "candidate_12t": candidate if candidate in maps else "unknown",
                               "12t_map_gds_drawing": maps.get(candidate),
                               "12t_map_gds_label": maps.get(candidate + "TXT"),
                               "itf_conductor": itf["CONDUCTOR"].get(candidate),
                               "mapping_status": "name/declared map only; no connectivity/RC equivalence"})
    table(out / "units-sites.csv", unit_rows, list(unit_rows[0]))
    table(out / "layers.csv", layer_rows, list(layer_rows[0]))
    table(out / "magic-layer-map.csv", magic, list(magic[0]))
    dump(out / "technology.json", {"stream_map": maps, "itf": itf, "icc2_tf_units": tf_units,
                                   "itf_units": "No explicit unit declarations; values retained verbatim; conversion unverified",
                                   "icc2_label_map": (digital / f"MAP/{PREFIX}_icc2_label.map").read_text(),
                                   "cadence_grid_declaration": re.findall(r"mfgGridResolution\(\s*\(\s*([0-9.]+)", (digital / f"TECH/{PREFIX}_std.tf").read_text())})
    qflow = (REPO / "tech/etri050.sh").read_text()
    assignments = dict(re.findall(r'^\s*set\s+(\w+)\s*=\s*("[^"]*"|[^\s;]+)', qflow, re.M))
    aliases = []
    for key in ("leffile", "spicefile", "libertyfile", "gdsfile", "techfile", "magicrc"):
        value = assignments[key].strip('"')
        if key == "techfile":
            value += ".tech"
        p = Path("/usr/local/share/qflow/tech/etri050") / value
        aliases.append({"key": key, "value": value, "system_path": str(p), "exists": p.is_file(),
                        "symlink": os.readlink(p) if p.is_symlink() else None,
                        "resolved": str(p.resolve()), "sha256": sha(p) if p.is_file() else None})
    dump(out / "config-references.json", {"qflow_assignments": assignments, "observed_system_aliases": aliases,
                                         "magicrc_lines": {str(p.relative_to(REPO)): p.read_text().splitlines() for p in
                                                           (REPO / "tech/etri050.magicrc", REPO / "digital_ETRI/khu_etri050.magicrc")},
                                         "graywolf_parameters": (REPO / "tech/etri050.par").read_text().splitlines(),
                                         "lvs_setup": (REPO / "tech/etri050_setup.tcl").read_text().splitlines(),
                                         "note": "read only; environment aliases are observations, not relocatable defaults"})


def classify(name, libcell, physical):
    if name.startswith("PAD"):
        return "io-or-other"
    if (physical.get("class") or "").endswith("SPACER") or (not libcell.get("pins") and (libcell or name.startswith("FILL"))):
        return "physical-only"
    if name.startswith("TIE"):
        return "functional-constant"
    if libcell.get("sequential"):
        return "functional-sequential"
    if (physical.get("class") or "").startswith("PAD") or any(a.get("direction") == "inout" for a in libcell.get("pins", {}).values()):
        return "io-or-other"
    return "functional-combinational" if libcell else "unclassified"


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--pdk-root", type=Path, default=Path(os.environ.get("NSPL_PDK_ROOT", REPO.parent / "NSPL_05CMOS_PDK_260820")))
    ap.add_argument("--out", type=Path, required=True)
    args = ap.parse_args()
    pdk, out = args.pdk_root.resolve(), args.out.resolve()
    digital = pdk / PDK_NAME
    if not digital.is_dir():
        ap.error(f"PDK digital directory missing: {digital}")
    source_dirs = [digital, REPO / "tech", *(REPO / n for n in ("digital_ETRI", "digital_ETRI050_m1f", "digital_ETRI050_m2f", "digital_osu050"))]
    if any(out == p or p in out.parents for p in [pdk, *source_dirs]):
        ap.error("Output must be separate from all original library/technology directories")
    out.mkdir(parents=True, exist_ok=True)
    sources = sorted({p for d in source_dirs for p in d.rglob("*") if p.is_file()})
    sources += [REPO / "Tutorials/2-9_Lab7_FIR_PE/Makefile"]
    def relative(p):
        return "PDK/" + str(p.relative_to(pdk)) if p.is_relative_to(pdk) else "REPO/" + str(p.relative_to(REPO))
    before = {relative(p): sha(p) for p in sources}
    file_rows = [{"path": relative(p), "bytes": p.stat().st_size, "sha256": before[relative(p)]} for p in sources]
    table(out / "files.csv", file_rows, ["path", "bytes", "sha256"])
    libraries = {"nspl12t": {"liberty": digital / f"LIB/{PREFIX}_std_tt.lib",
                             "lef": digital / f"LEF/{PREFIX}_std.lef",
                             "techlef": digital / f"LEF/{PREFIX}_tech.lef",
                             "verilog": digital / f"VERILOG/{PREFIX}_std.v",
                             "cdl": digital / f"CDL/{PREFIX}_std.cdl",
                             "gds": digital / f"GDS/{PREFIX}_std.gds"}}
    for directory in ("digital_ETRI", "digital_ETRI050_m1f", "digital_ETRI050_m2f"):
        base = REPO / directory
        libraries[directory] = {"liberty": base / "khu_etri05_stdcells.lib", "lef": base / "etri050_stdcells.lef",
                               "verilog": base / "khu_etri05_stdcells.v", "functional_verilog": base / "khu_etri05_stdcells_func.v",
                               "original_verilog": base / "khu_etri05_stdcells.v.org", "cdl": base / "khu_etri050_stdcells.spice",
                               "gds": base / "khu_etri050_stdcells.gds2", "via_lef": base / "etri050_stdcells_Via_Rule.lef"}
    libraries["digital_osu050"] = {"lef": REPO / "digital_osu050/iit_stdcells.lef", "cdl": REPO / "digital_osu050/iit_stdcells.spice",
                                   "gds": REPO / "digital_osu050/iit_stdcells.gds2",
                                   "alternate_gds": REPO / "digital_osu050/iit_stdcells.mag.gds2"}
    libraries["osu050_9t"] = {"lef": REPO / "digital_osu050/osu050_stdcells_9T.lef",
                              "gds": REPO / "digital_osu050/osu05_stdcells_9T.gds2"}
    parsed, view_rows, cell_rows, pin_rows, issues, sim_rows, model_pins, coverage = {}, [], [], [], [], [], [], []
    def issue(library, cell, kind, detail):
        issues.append({"library": library, "cell": cell, "kind": kind, "detail": detail})
    for name, views in libraries.items():
        data, models = {}, {}
        for view, path in views.items():
            row = {"library": name, "view": view, "path": relative(path), "exists": path.is_file(),
                   "sha256": sha(path) if path.is_file() else "", "semantic_equivalence": "unknown"}
            if not path.is_file():
                row.update(status="missing", required_tool="source data")
            else:
                try:
                    if view == "liberty":
                        data[view] = liberty(path)
                    elif "lef" in view:
                        data[view] = lef(path)
                    elif "verilog" in view:
                        data[view] = verilog(path)
                        models[name + "-" + view] = (path, data[view])
                    elif view == "cdl":
                        data[view] = spice(path)
                    elif "gds" in view:
                        stem = f"gds-{name}" + ("" if view == "gds" else "-" + view)
                        target = out / f"{stem}.json"
                        target.unlink(missing_ok=True)
                        rc, _ = run(["klayout", "-b", "-r", HERE / "gds_inventory.py", "-rd", f"input={path}", "-rd", f"output={target}"],
                                    out / f"{stem}.log", out)
                        if rc != 0 or not target.exists():
                            raise ValueError("KLayout unavailable/read failed; see GDS log")
                        data[view] = json.loads(target.read_text())
                    row.update(status="read", cell_count=len(data[view].get("cells", {})), required_tool="")
                except (ValueError, OSError, StopIteration) as e:
                    row.update(status="unknown", error=str(e), required_tool="KLayout" if "gds" in view else "format-specific reader")
            view_rows.append(row)
        # Required absence must be visible even when no candidate file exists.
        for view in ("liberty", "lef", "verilog", "cdl", "gds"):
            if view not in views:
                view_rows.append({"library": name, "view": view, "exists": False, "status": "missing",
                                  "semantic_equivalence": "unknown", "required_tool": "source data"})
        lib = data.get("liberty", {}).get("cells", {})
        phys = data.get("lef", {}).get("cells", {})
        tech = data.get("techlef", data.get("lef", {}))
        vv = data.get("verilog", {}).get("cells", {})
        cdl = data.get("cdl", {}).get("cells", {})
        gds = data.get("gds", {}).get("cells", {})
        names = set().union(*(set(d.get("cells", {})) for d in data.values()))
        for cell in sorted(names):
            lc, pc = lib.get(cell, {}), phys.get(cell, {})
            kind = classify(cell, lc, pc)
            expected = set(lc.get("pins", {}))
            power = {p for p, a in pc.get("pins", {}).items() if a.get("use") in ("POWER", "GROUND")}
            row = {"library": name, "cell": cell, "kind": kind, "liberty": cell in lib, "lef": cell in phys,
                   "verilog": cell in vv, "cdl": cell in cdl, "gds": cell in gds,
                   "signal_pins": sorted(expected), "power_pins": sorted(power), "lef_size_um": pc.get("size"),
                   "site": pc.get("site"), "liberty_area": lc.get("attributes", {}).get("area"),
                   "function": {p: a.get("function") for p, a in lc.get("pins", {}).items() if a.get("direction") == "output"},
                   "sequential": lc.get("sequential", {}), "gds_bbox_um": gds.get(cell, {}).get("bbox_um"),
                   "gds_boundary_um": gds.get(cell, {}).get("prBoundary_boxes_um", []), "semantic_equivalence": "unknown"}
            cell_rows.append(row)
            if cell in lib:
                for view, cells in (("lef", phys), ("verilog", vv), ("cdl", cdl), ("gds", gds)):
                    if cell not in cells and not (kind == "physical-only" and view in ("verilog", "cdl")):
                        issue(name, cell, "missing-cell", view)
            if cell in lib and cell in phys:
                actual = set(pc["pins"]) - power
                if expected != actual:
                    issue(name, cell, "signal-pin-set", {"liberty": sorted(expected), "lef": sorted(actual)})
                for view, actual in (("verilog", set(vv[cell]["pins"]) if cell in vv else None),
                                     ("cdl", set(cdl[cell]["port_order"]) - power if cell in cdl else None)):
                    if actual is not None and expected != actual:
                        issue(name, cell, "signal-pin-set", {"view": view, "liberty": sorted(expected), "actual": sorted(actual)})
                if cell in cdl and set(cdl[cell]["port_order"]) != set(pc["pins"]):
                    issue(name, cell, "cdl-lef-port-set", {"cdl": cdl[cell]["port_order"], "lef": sorted(pc["pins"])})
                if lc.get("power") and set(lc["power"]) != power:
                    issue(name, cell, "power-pin-set", {"liberty": sorted(lc["power"]), "lef": sorted(power)})
            if pc.get("size") and pc.get("site") in tech.get("sites", {}):
                size = [float(x) for x in pc["size"].split(" BY ")]
                site = [float(x) for x in tech["sites"][pc["site"]]["size"].split(" BY ")]
                if any(abs(v / s - round(v / s)) > 1e-6 for v, s in zip(size, site)):
                    issue(name, cell, "site-size-nonintegral", {"size_um": size, "site_um": site})
                if lc.get("attributes", {}).get("area") and abs(float(lc["attributes"]["area"]) - size[0]*size[1]) > 1e-4:
                    issue(name, cell, "liberty-area-vs-lef-product", {"liberty_area": lc["attributes"]["area"], "lef_um2": size[0]*size[1], "area_unit_semantics": "not explicitly declared"})
            if tech.get("grid_um"):
                grid = float(tech["grid_um"])
                offgrid = []
                for pin, pp in pc.get("pins", {}).items():
                    for rect in pp["rects"]:
                        coords = [float(x) for x in rect.split()]
                        if any(abs(x/grid-round(x/grid)) > 1e-6 for x in coords):
                            offgrid.append({"pin": pin, "rect": rect})
                if offgrid:
                    issue(name, cell, "lef-pin-off-manufacturing-grid", {"grid_um": grid, "rectangles": offgrid})
            allpins = set(lc.get("pins", {})) | set(lc.get("power", {})) | set(pc.get("pins", {})) | set(cdl.get(cell, {}).get("port_order", [])) | set(vv.get(cell, {}).get("pins", {}))
            labels = gds.get(cell, {}).get("labels", [])
            for pin in sorted(allpins):
                lp = lc.get("pins", {}).get(pin, {})
                pp = pc.get("pins", {}).get(pin, {})
                vp = vv.get(cell, {}).get("pins", {}).get(pin)
                cp = cdl.get(cell, {}).get("pininfo", {}).get(pin)
                directions = {v for v in (lp.get("direction"), (pp.get("direction") or "").lower() or None, vp,
                                          {"I": "input", "O": "output", "B": "inout"}.get(cp)) if v}
                if len(directions) > 1:
                    issue(name, cell, "pin-direction", {"pin": pin, "directions": sorted(directions)})
                pg = lc.get("power", {}).get(pin, {})
                if pg and ((pp.get("use") == "POWER" and pg.get("pg_type") != "primary_power") or
                           (pp.get("use") == "GROUND" and pg.get("pg_type") != "primary_ground")):
                    issue(name, cell, "power-role", {"pin": pin, "liberty": pg, "lef": pp})
                pin_rows.append({"library": name, "cell": cell, "pin": pin, "liberty_direction": lp.get("direction"),
                                 "liberty_pg_type": pg.get("pg_type"), "lef_direction": pp.get("direction"), "lef_use": pp.get("use"),
                                 "lef_layers": pp.get("layers"), "lef_rects": pp.get("rects"), "verilog_direction": vp,
                                 "cdl_direction": cp or "unknown", "cdl_index": cdl[cell]["port_order"].index(pin) if pin in cdl.get(cell, {}).get("port_order", []) else None,
                                 "gds_label_layers": sorted(set(x["layer"] for x in labels if x["name"] == pin)),
                                 "gds_connectivity": "unknown"})
            if cell in phys and cell in gds:
                found = {x["name"] for x in labels}
                if set(pc["pins"]) - found:
                    issue(name, cell, "gds-missing-label", sorted(set(pc["pins"]) - found))
                for label in labels:
                    pin = label["name"]
                    if pin in pc.get("pins", {}):
                        x, y = label["xy_um"]
                        boxes = [[float(v) for v in r.split()] for r in pc["pins"][pin]["rects"]]
                        if boxes and not any(a-1e-6 <= x <= c+1e-6 and b-1e-6 <= y <= d+1e-6 for a,b,c,d in boxes):
                            issue(name, cell, "gds-label-outside-lef-pin", label)
                if row["gds_boundary_um"] and pc.get("size"):
                    size = [float(x) for x in pc["size"].split(" BY ")]
                    for box in row["gds_boundary_um"]:
                        if any(abs(a - b) > 1e-6 for a, b in zip(size, [box[2]-box[0], box[3]-box[1]])):
                            issue(name, cell, "gds-boundary-size", {"lef": size, "gds": box})
        if "liberty" in data:
            simulation = simulate(data["liberty"], models, out)
            sim_rows.extend(simulation)
            for model_name, (_, model) in models.items():
                checked = {r["cell"]: r for r in simulation if r["model"] == model_name}
                for cell, lc in lib.items():
                    reason = ""
                    if cell in checked:
                        status = checked[cell]["status"]
                    elif not lc["pins"]:
                        status, reason = "not-required", "no logic pins (power/NC pad or physical-only filler)"
                    elif lc["sequential"]:
                        status, reason = "unknown", "sequential event/control behavior belongs to M0-08"
                    elif cell not in model["cells"]:
                        status, reason = "unknown", "cell missing in this model"
                    elif set(lc["pins"]) != set(model["cells"][cell]["pins"]):
                        status, reason = "unknown", "pin names differ; no implicit rename"
                    else:
                        status, reason = "unknown", "inout/state expression or compilation not covered"
                    coverage.append({"library": name, "model": model_name, "cell": cell, "status": status, "reason": reason})
        for view, item in data.items():
            if "verilog" in view:
                for cell, body in item["cells"].items():
                    for pin, direction in body["pins"].items():
                        model_pins.append({"library": name, "view": view, "cell": cell, "pin": pin, "direction": direction})
        parsed[name] = data
    technology(digital, parsed, out)
    # PEX interfaces are distinct from design-level routed parasitics.
    pex = {relative(p): spice(p) for p in sorted((digital / "PEX").glob("*.pex.netlist"))}
    dump(out / "pex.json", pex)
    for path, data in pex.items():
        source = pdk / path.removeprefix("PDK/")
        view_rows.append({"library": "nspl12t", "view": "cell-pex", "path": path, "exists": True, "sha256": sha(source),
                          "status": "interface-read", "cell_count": len(data["cells"]), "semantic_equivalence": "unknown",
                          "required_tool": "Netgen/ngspice with validated MOS models for circuit comparison; not routed-design SPEF"})
        for cell, body in data["cells"].items():
            reference = parsed["nspl12t"]["cdl"]["cells"].get(cell)
            if reference and set(reference["port_order"]) != set(body["port_order"]):
                issue("nspl12t", cell, "pex-port-set", {"path": path, "ports": body["port_order"], "cdl": reference["port_order"]})
    for row in sim_rows:
        if row["status"] != "pass":
            issue(row["model"], row["cell"], "functional-" + row["status"], row)
    # Proprietary/ancillary files: existence and hashing do not establish readability.
    for p in sorted(digital.rglob("*")):
        if p.is_file() and (p.suffix in (".db", ".tluplus") or "NDM" in p.parts):
            tool = ".db binary reader absent; provider ASCII Liberty export for open-source path" if p.suffix == ".db" else "TLU+ reader absent; provider export to documented open RC data"
            if "NDM" in p.parts:
                tool = "NDM reader absent; provider export to LEF/GDS/Liberty"
            view_rows.append({"library": "nspl12t", "view": "binary-" + p.parent.name, "path": relative(p), "exists": True,
                              "sha256": sha(p), "status": "unknown", "semantic_equivalence": "unknown", "required_tool": tool})
        elif p.is_file() and p.parent.name in ("TECH", "MAP"):
            view_rows.append({"library": "nspl12t", "view": p.suffix.removeprefix("."), "path": relative(p), "exists": True,
                              "sha256": sha(p), "status": "declarations-read", "semantic_equivalence": "unknown",
                              "required_tool": "open-source technology/RC adapter and round-trip/DRC validation (M0-09/10)"})
    dump(out / "inventory.json", parsed)
    table(out / "views.csv", view_rows, ["library", "view", "path", "exists", "sha256", "status", "cell_count", "semantic_equivalence", "required_tool", "error"])
    table(out / "cells.csv", cell_rows, list(cell_rows[0]))
    table(out / "pins.csv", pin_rows, list(pin_rows[0]))
    table(out / "issues.csv", issues, ["library", "cell", "kind", "detail"])
    table(out / "function-checks.csv", sim_rows, ["model", "cell", "status", "vectors", "errors", "scope", "reason"])
    table(out / "function-coverage.csv", coverage, ["library", "model", "cell", "status", "reason"])
    table(out / "model-pins.csv", model_pins, ["library", "view", "cell", "pin", "direction"])
    # Cross-family name proposals, explicitly not replacement authorization.
    old = parsed["digital_ETRI"]
    new = parsed["nspl12t"]
    rename = {"DFFSR": "DFFSRX1", "LATCH": "LATCHX1", "CLKBUF1": "CLKBUFX1", "CLKBUF2": "CLKBUFX2", "CLKBUF3": "CLKBUFX4"}
    cross = []
    for cell in sorted(set(old["liberty"]["cells"]) | set(old["lef"]["cells"])):
        targets = [f"FILLX{i}" for i in range(1, 5)] if cell == "FILL" else [rename.get(cell, cell)]
        for target in targets:
            a, b = old["liberty"]["cells"].get(cell, {}), new["liberty"]["cells"].get(target, {})
            pa, pb = old["lef"]["cells"].get(cell, {}), new["lef"]["cells"].get(target, {})
            cross.append({"old_cell": cell, "candidate_12t": target if b or pb else "missing",
                          "old_signals": sorted(a.get("pins", {})), "new_signals": sorted(b.get("pins", {})),
                          "old_size_um": pa.get("size"), "new_size_um": pb.get("size"),
                          "pin_names_equal": set(a.get("pins", {})) == set(b.get("pins", {})) if a and b else "unknown",
                          "replacement_equivalence": "unknown; independent libraries"})
    table(out / "cross-library.csv", cross, list(cross[0]))
    comparison = []
    for name in ("digital_ETRI050_m1f", "digital_ETRI050_m2f", "digital_osu050"):
        for cell in sorted(set(old["lef"]["cells"]) | set(parsed[name]["lef"]["cells"])):
            a, b = old["lef"]["cells"].get(cell, {}), parsed[name]["lef"]["cells"].get(cell, {})
            comparison.append({"reference": "digital_ETRI", "variant": name, "cell": cell, "size_equal": a.get("size") == b.get("size"),
                               "pin_geometry_equal": a.get("pins") == b.get("pins"), "reference_size_um": a.get("size"), "variant_size_um": b.get("size"),
                               "meaning": "parsed LEF geometry only; no LVS/timing equivalence"})
    table(out / "variants.csv", comparison, list(comparison[0]))
    macro_layers = []
    for name, data in parsed.items():
        for cell, pc in data.get("lef", {}).get("cells", {}).items():
            gc = data.get("gds", {}).get("cells", {}).get(cell, {})
            macro_layers.append({"library": name, "cell": cell,
                                 "lef_pin_layers": sorted(set(l for p in pc["pins"].values() for l in p["layers"])),
                                 "lef_obstruction_layers": pc["obs_layers"], "gds_direct_layers": sorted(gc.get("layers", {})),
                                 "note": "OBS may be conservative blockage; layer presence alone does not establish geometry equivalence"})
    table(out / "macro-layers.csv", macro_layers, list(macro_layers[0]))
    after = {relative(p): sha(p) for p in sources}
    changed = [p for p in before if before[p] != after[p]]
    code_hashes = {p.name: sha(p) for p in HERE.glob("*.py")}
    metadata = {"date_kst": "2026-11-15", "python": sys.version, "repo": str(REPO), "pdk_root": str(pdk),
                "argv": sys.argv, "source_file_count": len(sources), "sources_unchanged": not changed, "changed_sources": changed,
                "code_sha256": code_hashes, "tools": {}}
    for tool, option in (("klayout", "-v"), ("iverilog", "-V"), ("vvp", "-V")):
        metadata["tools"][tool] = {"path": shutil.which(tool)}
        if metadata["tools"][tool]["path"]:
            metadata["tools"][tool]["sha256"] = sha(Path(metadata["tools"][tool]["path"]))
        rc, stdout = run([tool, option], out / f"version-{tool}.log", out)
        metadata["tools"][tool].update(exit_code=rc, version_stdout=stdout.splitlines()[:3])
    dump(out / "run.json", metadata)
    summaries = ["# Generated inventory summary", "", "Existence/readability is separate from semantic equivalence (unknown unless scoped check listed).", "",
                 "| Library | Liberty | LEF | Verilog | CDL/SPICE | GDS |", "|---|---:|---:|---:|---:|---:|"]
    for name, data in parsed.items():
        summaries.append("| " + name + " | " + " | ".join(str(len(data[v]["cells"])) if v in data else "unknown/missing" for v in ("liberty", "lef", "verilog", "cdl", "gds")) + " |")
    summaries += ["", f"Source files hashed before/after: {len(sources)}; unchanged: {not changed}.",
                  f"Combinational checks: {len(sim_rows)}; mismatches: {sum(r['status']=='mismatch' for r in sim_rows)}; unknown: {sum(r['status']=='unknown' for r in sim_rows)}.",
                  f"Issues: {len(issues)} (see issues.csv; structural and functional findings, not a signoff score)."]
    (out / "summary.md").write_text("\n".join(summaries) + "\n")
    cell_md = ["# 12T cell interfaces", "", "I=input, O=output, B=inout. Port names are case-sensitive. All 38 have LEF and GDS.",
               "All cells have VDD/VSS in Liberty pg_pin, LEF and GDS labels; CDL omits fillers. GDS connectivity unknown.", "",
               "| Cell | Kind | Liberty signals | Verilog signals | LEF differences | CDL | LEF size (um) |",
               "|---|---|---|---|---|---|---|"]
    new = parsed["nspl12t"]
    short = {"input": "I", "output": "O", "inout": "B"}
    for row in (r for r in cell_rows if r["library"] == "nspl12t" and r["liberty"]):
        name = row["cell"]
        lp = new["liberty"]["cells"][name]["pins"]
        vp = new["verilog"]["cells"].get(name, {}).get("pins", {})
        signal = ", ".join(p + ":" + short.get(a.get("direction"), "?") for p, a in sorted(lp.items())) or "none"
        model = ", ".join(p + ":" + short.get(d, "?") for p, d in sorted(vp.items())) or "absent (filler)"
        diff = ", ".join(p + ":" + (new["lef"]["cells"][name]["pins"].get(p, {}).get("direction") or "absent") for p, a in lp.items()
                         if (new["lef"]["cells"][name]["pins"].get(p, {}).get("direction") or "").lower() != a.get("direction")) or "none"
        cell_md.append(f"| {name} | {row['kind']} | {signal} | {model} | {diff} | {'present' if row['cdl'] else 'absent (filler)'} | {row['lef_size_um']} |")
    (out / "12t-cells.md").write_text("\n".join(cell_md) + "\n")
    hashes_md = ["# Selected view hashes", "", "SHA-256, raw bytes. The full scoped manifest is files.csv; absence is explicit in views.csv.", "",
                 "| Library | View | SHA-256 |", "|---|---|---|"]
    hashes_md += [f"| {r['library']} | {r['view']} | `{r['sha256']}` |" for r in view_rows if r.get("sha256")]
    (out / "view-hashes.md").write_text("\n".join(hashes_md) + "\n")
    print("\n".join(summaries))
    if changed or any(r["status"] == "unknown" and r["view"] in ("liberty", "lef", "verilog", "cdl") for r in view_rows):
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
