#!/usr/bin/env python3
"""Read-only environment evidence; stdout is JSON, not a support/doctor verdict."""
import argparse
from datetime import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
from zoneinfo import ZoneInfo


def identify(path):
    p = Path(path)
    result = {"path": str(p), "resolved": str(p.resolve()), "exists": p.exists()}
    if p.is_symlink():
        result["link_target"] = os.readlink(p)
    if p.is_file():
        with p.open("rb") as stream:
            result["sha256"] = hashlib.file_digest(stream, "sha256").hexdigest()
    return result


def run(argv, cwd, stdin=""):
    try:
        p = subprocess.run(argv, cwd=cwd, input=stdin, text=True,
                           stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                           timeout=15, env={**os.environ, "QT_QPA_PLATFORM": "offscreen"})
        return {"argv": argv, "cwd": str(cwd), "exit_code": p.returncode,
                "output": p.stdout}
    except (OSError, subprocess.TimeoutExpired) as e:
        return {"argv": argv, "cwd": str(cwd), "error": str(e)}


def main():
    repo = Path(__file__).resolve().parents[3]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pdk-root", type=Path,
                        default=repo.parent / "NSPL_05CMOS_PDK_260820")
    args = parser.parse_args()
    digital = args.pdk_root.resolve() / "NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR"
    commands = {
        "yosys": ["-V"], "yosys-abc": ["-c", "version"], "sta": ["-version"],
        "iverilog": ["-V"], "vvp": ["-V"], "verilator": ["--version"],
        "qflow": ["-v"], "graywolf": ["-h"], "qrouter": ["-h"],
        "magic": ["--version"], "netgen": ["-batch"], "klayout": ["-v"],
        "openroad": ["-version"], "ngspice": ["--version"],
        "gtkwave": ["--version"], "python3": ["--version"],
        "gcc": ["-dumpfullversion"], "clang": ["--version"],
        "cmake": ["--version"], "make": ["--version"], "git": ["--version"],
        "bash": ["--version"], "tcsh": ["--version"],
    }
    result = {"collected_at": datetime.now(ZoneInfo("Asia/Seoul")).isoformat(),
              "timezone": "Asia/Seoul",
              "repository": str(repo), "os_release": Path('/etc/os-release').read_text(),
              "pdk_root": str(args.pdk_root.resolve()), "pdk_digital": str(digital)}
    with tempfile.TemporaryDirectory(prefix="etri-m0-06-") as tmp:
        result["host"] = [run(cmd, tmp) for cmd in
                          (["uname", "-srm"], ["getconf", "GNU_LIBC_VERSION"],
                           ["dpkg-query", "-W", "-f=${Package} ${Version}\n",
                            "klayout", "tcl8.6", "tk8.6", "libc6", "gcc", "cmake",
                            "python3", "bash", "tcsh", "git", "make", "clang"])]
        result["tools"] = {}
        for name, options in commands.items():
            executable = shutil.which(name)
            result["tools"][name] = ({**identify(executable),
                                      "probe": run([executable, *options], tmp, "quit\n")}
                                     if executable else {"found_on_path": False})
        tcl = Path(tmp) / "tcl-version.tcl"
        tcl.write_text('puts [info patchlevel]\n')
        result["tcl"] = run(["tclsh", str(tcl)], tmp)
        lib = digital / "LIB/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std_tt.lib"
        sta_script = Path(tmp) / "read-lib.tcl"
        sta_script.write_text('read_liberty {' + str(lib) + '}\nputs LIB_READ_COMPLETED\nexit\n')
        result["liberty_smoke"] = [
            run(["yosys", "-p", 'read_liberty -lib "' + str(lib) + '"'], tmp),
            run(["sta", "-no_init", "-exit", str(sta_script)], tmp)]
    link_dir = Path("/usr/local/share/qflow/tech/etri050")
    result["legacy_links"] = [identify(Path.home() / "ETRI050_DesignKit")]
    if link_dir.is_dir():
        result["legacy_links"] += [identify(p) for p in sorted(link_dir.iterdir())]
    # Entry point hashes alone do not identify a whole Tcl/plugin installation.
    result["runtime_components"] = [identify(p) for p in
                                    ("/usr/local/share/qrouter/qrouter.so",
                                     "/usr/local/share/qrouter/qrouternullg")]
    result["pdk_files"] = [identify(p) for folder in
                           ("LIB", "LEF", "GDS", "VERILOG", "CDL", "TECH", "TLU", "SDC")
                           for p in sorted((digital / folder).glob("*")) if p.is_file()]
    result["qflow_archive"] = identify(repo / "Tools/qflow-1.4.100_etri050.tar.gz")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
