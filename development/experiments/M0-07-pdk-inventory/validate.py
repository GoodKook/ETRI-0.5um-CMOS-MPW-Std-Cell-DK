#!/usr/bin/env python3
"""Independent counts, real-view invariants and a deliberately wrong logic oracle.

Run after inventory.py. Fails on unexpected observations; never patches originals.
"""
import argparse
import copy
import csv
import json
from pathlib import Path
import re
import sys

from inventory import HERE, REPO, PDK_NAME, PREFIX, dump, lef, run, sha, simulate


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--results", type=Path, required=True)
    ap.add_argument("--compare-results", type=Path, help="Compare a separate run from another working directory")
    args = ap.parse_args()
    root = args.results.resolve()
    out = root / "validation"
    out.mkdir(exist_ok=True)
    data = json.loads((root / "inventory.json").read_text())
    metadata = json.loads((root / "run.json").read_text())
    pdk = Path(metadata["pdk_root"]) / PDK_NAME
    checks = []

    def check(name, condition):
        checks.append({"check": name, "passed": bool(condition)})
        if not condition:
            raise AssertionError(name)

    if args.compare_results:
        other = args.compare_results.resolve()
        for filename in ("files.csv", "views.csv", "cells.csv", "pins.csv", "model-pins.csv", "issues.csv", "inventory.json",
                         "function-checks.csv", "function-coverage.csv", "cross-library.csv", "variants.csv", "units-sites.csv",
                         "layers.csv", "macro-layers.csv", "magic-layer-map.csv", "technology.json", "config-references.json", "pex.json", "12t-cells.md", "view-hashes.md", "summary.md"):
            check("working-directory independent " + filename, (root / filename).read_bytes() == (other / filename).read_bytes())

    for name, directory in (("nspl12t", pdk), ("digital_ETRI", REPO / "digital_ETRI"),
                            ("digital_ETRI050_m1f", REPO / "digital_ETRI050_m1f"),
                            ("digital_ETRI050_m2f", REPO / "digital_ETRI050_m2f")):
        raw = (directory / f"LIB/{PREFIX}_std_tt.lib" if name == "nspl12t" else directory / "khu_etri05_stdcells.lib").read_text()
        count = len(re.findall(r"^\s*cell\s*\(", raw, re.M))
        check(name + " independent Liberty cell count", count == len(data[name]["liberty"]["cells"]))
    new = data["nspl12t"]
    check("12T all Liberty/LEF cell names", len(new["liberty"]["cells"]) == 38 and set(new["liberty"]["cells"]) == set(new["lef"]["cells"]))
    check("12T every GDS boundary read", all(len(new["gds"]["cells"][c]["prBoundary_boxes_um"]) == 1 for c in new["lef"]["cells"]))
    check("12T physical-only fillers excluded from logic/CDL", all(c not in new["verilog"]["cells"] and c not in new["cdl"]["cells"] for c in (f"FILLX{i}" for i in range(1,5))))
    check("12T layer parser ignores nested VIA/VIARULE layer references", new["techlef"]["layers"]["MET2"]["pitch"] == "3.2" and new["techlef"]["layers"]["MET1"]["width"] == "1.0")
    # Regression for a parser failure found during development: nested reference must not overwrite TYPE.
    fixture = out / "nested-via.lef"
    fixture.write_text("LAYER MET1\n TYPE ROUTING ;\n PITCH 3.0 ;\n WIDTH 1.0 ;\nEND MET1\n"
                       "VIARULE x GENERATE\n LAYER MET1 ;\n WIDTH 0.8 TO 2 ;\n LAYER MET2 ;\n WIDTH 1.2 TO 3 ;\nEND x\n")
    check("nested VIA reference fixture", lef(fixture)["layers"]["MET1"]["width"] == "1.0")
    issues = list(csv.DictReader((root / "issues.csv").open()))
    actual = {(r["cell"], r["kind"]) for r in issues if r["library"] == "nspl12t"}
    check("five observed new structural inconsistencies", actual == {("FAX1", "pin-direction"), ("HAX1", "pin-direction"),
          ("LATCHX1", "signal-pin-set"), ("TBUFX1", "signal-pin-set"), ("TBUFX2", "signal-pin-set")})
    for cell in ("FAX1", "HAX1"):
        check(cell + " direction independently visible in raw LEF", bool(re.search(r"MACRO " + cell + r"\b.*?PIN S\s+DIRECTION INPUT", (pdk / f"LEF/{PREFIX}_std.lef").read_text(), re.S)))
    functions = list(csv.DictReader((root / "function-checks.csv").open()))
    check("all executed combinational checks passed", all(r["status"] == "pass" for r in functions))
    newchecks = [r for r in functions if r["model"] == "nspl12t-verilog"]
    check("12T coverage 28 cells / 136 input vectors", len(newchecks) == 28 and sum(int(r["vectors"]) for r in newchecks) == 136)
    # A bad expectation must fail against the untouched, original INVX1 implementation.
    mutated = copy.deepcopy(new["liberty"])
    mutated["cells"] = {"INVX1": mutated["cells"]["INVX1"]}
    mutated["cells"]["INVX1"]["pins"]["Y"]["function"] = "A"
    results = simulate(mutated, {"mutated-oracle": (pdk / f"VERILOG/{PREFIX}_std.v", new["verilog"])}, out)
    check("mutation test detects both INVX1 wrong-polarity vectors", len(results) == 1 and results[0]["status"] == "mismatch" and results[0]["errors"] == 2)
    # Reproduce PLAN appendix B, without pretending to complete M0-08's full sequential suite.
    tb = out / "dff-diagnostic.v"
    tb.write_text('''`timescale 1ns/1ps
module tb;
reg clk=0, d=0;
wire q;
DFFPOSX1 dut(.D(d), .CLK(clk), .Q(q));
initial begin
  #5 clk=1; #5 clk=0; #2 d=1; #3 clk=1; #1;
  $display("D=%b Q=%b posedge_reference=1",d,q);
  if (q !== 1'b1) $display("EXPECTED_MODEL_MISMATCH");
  else $fatal(1,"Known diagnostic no longer reproduces; investigate source revision");
  $finish;
end
endmodule
''')
    exe = out / "dff.vvp"
    rc, _ = run(["iverilog", "-s", "tb", "-o", exe, tb, pdk / f"VERILOG/{PREFIX}_std.v"], out / "dff-compile.log", out)
    check("DFF diagnostic compiles", rc == 0)
    rc, stdout = run(["vvp", exe], out / "dff-simulate.log", out)
    check("known DFFPOSX1 mismatch reproduced", rc == 0 and "D=1 Q=0" in stdout and "EXPECTED_MODEL_MISMATCH" in stdout)
    exe.unlink(missing_ok=True)
    # Rehash actual source files against inventory, independently after validation.
    files = list(csv.DictReader((root / "files.csv").open()))
    for row in files:
        prefix, relative = row["path"].split("/", 1)
        path = (Path(metadata["pdk_root"]) if prefix == "PDK" else REPO) / relative
        check("unchanged " + row["path"], sha(path) == row["sha256"])
    dump(out / "checks.json", {"all_passed": all(c["passed"] for c in checks), "checks": checks, "argv": sys.argv,
                               "code_sha256": {p.name: sha(p) for p in HERE.glob("*.py")},
                               "note": "Diagnostic harness passed by reproducing a model mismatch; target model did not pass."})
    print(f"PASS {len(checks)} checks; original INVX1 caught 2 intentionally wrong expectations; known DFF mismatch reproduced; {len(files)} source hashes unchanged")


if __name__ == "__main__":
    sys.exit(main())
