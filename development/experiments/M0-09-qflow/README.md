# M0-09 — NSPL 12T QFlow 최소 호환성 실험

- 실행·기록일: **2026-11-15 (Asia/Seoul)**. 관련 작업: [ROADMAP M0-09](../../ROADMAP.md).
- 목적: 기존 etri050 설치와 공유 셀을 보존하면서, 원본 `shift_reg_8bit`와 새 NSPL 12T view로 **셀 읽기 → 합성 → 배치 → 배선 → GDS 인계**를 실제 실행한다.
- 개발 조사: **완료**. 최소 실험: **`passed`**, 단 **QFlow/Yosys → GrayWolf → QRouter → 별도 DEF/전원 어댑터 → KLayout GDS 조립** 경로다. 설치된 QFlow의 무수정 Magic GDS 경로를 통과했다는 뜻은 아니다.
- 전체 디지털 흐름/signoff: **`not_validated`**. CTS, 검증된 배선 RC, PRE/POST-STA, recovery/removal, foundry DRC·트랜지스터 LVS/PEX는 미실행이다. backend 채택은 M0-10~12에서 결정한다.

## 선행 근거와 실제 입력

[M0-07 inventory](../M0-07-pdk-inventory/README.md), [결정 002](../../decisions/002-sequential-functional-models.md), [M0-08 현재 프로파일](../M0-08-sequential/scope-review/README.md)을 읽고 이어서 실행했다. 실행기는 M0-07 `files.csv` **322개 파일의 현재 해시**를 대조한 뒤 시작한다. 실행 전후에는 새 디지털 PDK 및 기존 active/m1f/m2f/tech **271개 파일**, 설치 etri050의 11개 alias와 홈 `ETRI050_DesignKit` 링크를 비교한다. 모든 실행에서 변경 없음이다. 링크를 교체하거나 공유 라이브러리에 쓰지 않았다.

`NSPL_PDK_ROOT`라는 기존 환경 변수가 있다고 가정하지 않는다. `--pdk-root` 기본값은 코드 위치에서 계산한 저장소 형제 `../NSPL_05CMOS_PDK_260820`이며, 명시 인수로 바꿀 수 있다. 이하 `DIGITAL`은 그 아래 `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR`을 뜻한다.

| 실제 입력 | 출처 / 확인 |
| --- | --- |
| RTL | `DIGITAL/VERILOG/shift_reg_8bit.v`, 390 bytes, SHA-256 `6930ac0ef2d58ab4e89fbecd8a433b0c7c62989f1df85300da15a0c14f5fb1ff`. 원본 그대로 실험 source에 복사. 상승 에지 shift, active-low 비동기 reset. |
| Liberty | `DIGITAL/LIB/*_std_tt.lib`, SHA-256 `0c84f0d970d374ba5c9c4cf7aec22fec96e306f8be373bda9ef20ce2bb48de51`. 38셀 읽기. TT / 5 V / 25 °C. |
| macro / 기술 LEF | `DIGITAL/LEF/*_std.lef`, `*_tech.lef`. 원본 해시는 [파생 이력](results/lef-adapter.json)에 연결. |
| GDS / CDL | `DIGITAL/GDS/*_std.gds`, `DIGITAL/CDL/*_std.cdl`. 새 GDS만 조립하며 기존 KHU/ETRI GDS와 섞지 않는다. CDL은 QFlow SPICE 변환에 사용했으며 LVS를 실행한 것은 아니다. |
| 기능 참조 | M0-08의 원본 Verilog와 `derived/nspl12t_seq_functional.v`를 실험의 `tech/functional-assembled.v`로 재구성. 기존 `patch-plan.json`의 출력 해시와 일치해야 실행하며 앞선 실험의 임시 생성 파일에 의존하지 않음. 허용 순차 셀/clock/reset/S=1을 기존 `check_scope.py`로 검사. |
| TB | M0-08의 `stimulus(True)` / `bench()`를 그대로 호출. 두 에지 사이 D 변화, reset 중지/해제, 160회 입력 패턴. 타이밍 annotation 없는 기능 비교. |

도구 실측: QFlow **1.4.100**, Yosys **0.71+4 / 02365349e**, QRouter **1.4.90.T**, KLayout **0.30.7**, Icarus **14.0 devel (s20260301-986-gaf170a0b5)**. Magic **8.3.698**은 버전만 조회했고 GDS 생성에는 사용하지 않았다. GrayWolf는 설치 바이너리와 TimberWolf 실행 banner를 기록했으며, 설치 binary의 정확한 source revision은 미확정이다. banner의 1992년 하위 모듈 버전을 GrayWolf release로 취급하지 않는다. M1-01에서 source/build lock이 필요하다. 실제 경로·실행 파일·QFlow scripts/helper 바이너리 해시는 [run.json](results/run.json), 버전 원문은 `results/version-*.log`에 있다.

## 재실행

저장소 루트에서 실행한다. 각 `--out`은 **아직 존재하지 않는 디렉터리**여야 한다. 실행기는 이 실험 아래 또는 `/tmp`만 허용하고 기존 디렉터리 덮어쓰기를 거부한다. Python 표준 라이브러리, 설치 QFlow 및 helper, Yosys/ABC, GrayWolf, QRouter, Icarus, KLayout 내장 `pya`, tcsh가 필요하다. 설치나 다운로드는 하지 않았다.

```bash
python3 development/experiments/M0-09-qflow/run.py \
  --pdk-root ../NSPL_05CMOS_PDK_260820 \
  --out /tmp/etri-m0-09-new
python3 development/experiments/M0-09-qflow/validate.py \
  --results /tmp/etri-m0-09-new \
  --out /tmp/etri-m0-09-validation-new
```

보존한 최종 실행은 `--out development/experiments/M0-09-qflow/results`였다. 실제 실행 시각은 **13:52:25~13:52:30 KST**이며 [명령별 cwd·환경·종료코드·시각](results/commands.json)을 보존했다. 실행기 내부의 핵심 명령은 다음과 같다. 각 프로젝트 cwd에서 `QFLOW_TECH_DIR=<out>/tech`를 지정하므로 설치 etri050와 독립된다.

```bash
qflow -T nspl12t synthesize shift_reg_8bit
qflow -T nspl12t place shift_reg_8bit
qflow -T nspl12t route shift_reg_8bit
# run.py가 형식/전원 어댑터를 실행해 layout/handoff.def를 만든 뒤:
M09_OUT=<out의_절대경로> QT_QPA_PLATFORM=offscreen \
  klayout -b -r <이_실험의_절대경로>/gds_check.py
```

각 QFlow 명령 사이에 실제 netlist의 Yosys 읽기·매핑 검사·RTL/gate 비교를 실행한다. gate netlist의 ANSI 포트 재선언은 Yosys로 canonical Verilog를 출력하여 처리하며, raw 출력도 별도 보존한다. `read_liberty`와 `hierarchy -check`, `check -assert`를 거친 같은 JSON으로 연결을 검사한다. 마지막에는 **최종 DEF의 59개 신호 endpoint를 final netlist와 대조**한다.

fanout은 설치 QFlow의 `vlogFanout`을 사용했다. 실험의 `-l 1000 -c 30`은 이 도구의 latency(ps)/output load(fF) 탐색 조건이며 사용자 SDC나 목표 주기를 확정한 값이 아니다. SDC 기반 성능 합격·출력 slew·fanout 한계·clock skew 합격을 주장하지 않는다. `nobuffers=1`은 이 최소 예제의 합성 I/O buffer 삽입을 생략한다. 실제 결과에는 clock buffer나 CTS가 없다.

## 어댑터와 물리 인계 확인

[run.py](run.py)는 매 실행에 `<out>/tech/nspl12t.sh`, `nspl12t.par`, `nspl12t.magicrc`를 생성한다. 공유 파일을 복사해 덮어쓰는 동작은 없다. `nspl12t.magicrc`는 기존 Magic 기술을 불러오지 않는 명시적인 placeholder이며 Magic DRC/LVS 지원 파일이 아니다.

| 항목 | 실제 처리와 검증 | 범위 / 남은 제한 |
| --- | --- | --- |
| 셀 이름 | `DFFSRX1` 8개 + **실제 TIEHIX1 8개**. 합성/배치/배선 후 각각 동일. 모든 S가 독립 tie-high 출력, R=`rst_n`, CLK=`clk`. | DFFPOSX1 등 나머지 셀은 Liberty/LEF 읽기만 확인. 모든 38셀의 물리 qualification이 아님. |
| FAX1/HAX1.S | 분리 LEF에서 INPUT→OUTPUT 2건 수정. Liberty/CDL/Verilog의 일치 방향을 근거로 함. | 이번 설계에서 사용하지 않았으므로 해당 셀의 실제 배선/회로 검증은 아님. |
| 기술 LEF | router가 지원하지 않는 NSD/PSD IMPLANT 선언과 비배선 POLY1/CONT `V01` 규칙만 생략. | MET1/2/3, VIA1/2, 생성 via enclosure, site/grid 및 **모든 macro pin/OBS 형상 보존**. 원본 기술 전체의 동등한 대체물이 아님. 최종 route log에서 LEF error/warning 없음. |
| 층 | MET1/2/3 → GDS **32/0,34/0,36/0**, VIA1/2 → **33/0,35/0**, top 라벨 → **42/0,44/0,46/0**. | KLayout 명시 layer map. source cell의 다른 공정 층도 원본 그대로 유지. old Magic 스트림 층은 재사용하지 않음. |
| 제조 격자 | 0.01 µm. 모든 배치 좌표와 새 top/via polygon vertex가 격자에 맞음. | 원본 셀은 최종 GDS와 polygon XOR 및 text 좌표로 일치 확인. 전체 공정 DRC를 대체하지 않음. |
| site/row | 3.2×36 µm. 실제 배치 lower-left는 phase **(1.6,1.5) µm** 기준 x=3.2, y=36 정수 배수. 모든 instance의 회전·반사·좌표를 DEF↔GDS 대조. | QFlow DEF에 ROW 선언 없음. 상대 phase와 좌표를 직접 검사한 것이며 row/site 메타데이터 완전 인계는 후속 adapter 과제. |
| pitch/offset | QRouter `.info`에서 MET1 **3/1.5**, MET2 **3.2/1.6**, MET3 **3/2** µm의 pitch/offset 읽음. DEF track pitch는 3/3.2/3 µm. | place2def가 MET1/MET3에 공통 Y track phase를 쓰므로 **MET3 원본 OFFSET=2의 층별 보존은 아님**. 실제 DEF track 시작 X=−6.4/Y=−6 µm. 이는 선택된 실험 track phase이며 제조격자 위반은 없지만, 정식 플랫폼은 층별 track phase·pin access 정책을 확정해야 함. |
| 전원 | VDD/VSS 대문자 보존. 각 단계 power-aware `.rtl.v`에서 각 16개 pg 연결 확인. addspacers의 MET1 comb와 셀 rail 사용. | addspacers는 3층에서 over-cell stripe 대신 comb를 생성함. `8/100` 요청은 실제 **9.6/99.2 µm**로 조정됨. IR/EM·pad/ring 검증 아님. |
| 전원 핀 | 최종 인계 DEF에 모든 cell pg 32개 + top PG 2개 endpoint 명시. QFlow가 생성한 높이 0인 PG pin을 **2 µm 높이**로 형상화. 이 직사각형은 기존 MET1 comb 안에 있음. | PG 명시화를 QFlow route 전에 넣으면 논리 export에 pg 핀이 남으므로 최종 인계에서 수행. 경계·pin area 수정은 [power-adapter.json](results/power-adapter.json)에 기록. |
| filler | 플랫폼 이름은 `FILLX1`, decap/antenna 없음. | 이 배치에서는 **filler 0개**. FILLX1..4의 삽입·well 연결 검증으로 확대하지 않음. |
| 단위 | Liberty ns/pF/V/µA/kΩ, LEF 1000 DBU/µm, GrayWolf 거리 centimicron, DEF **100 DBU/µm**, GDS **0.001 µm/DBU**. | DEF 좌표→GDS는 ×10. KLayout의 DBU 차이 경고를 보존하고 모든 instance 좌표·원본 셀 형상으로 실제 변환을 확인. |
| RC | 새 LEF에 RC 없음. GrayWolf `.par` RC는 **0=미확보**로 명시. 기존 etri050 RC를 가져오지 않음. | QRouter `.rc`는 만들어졌지만 무검증 값이며 STA 입력으로 사용하지 않음. `estimated` 수준의 기생성분 참고 출력이고 POST-STA 통과가 아님. |

층·핀·전원 검사는 [gds_check.py](gds_check.py)가 최종 GDS를 **저장 후 다시 읽어** 수행한다. 원본 GDS를 대체 macro로 지정하고 LEF abstract 형상/OBS를 실제 셀 대신 출력하지 않는다. 사용된 두 master의 모든 원본 층 polygon과 text가 같고, 16개 instance 배치와 13개 top 핀 라벨이 보존됐다. MET1/VIA1/MET2/VIA2/MET3의 병합 polygon 연결 그래프를 만들고 각 DEF pin RECT가 해당 도체 성분과 만나는지 확인했다. 결과는 **신호 19 net + 전원 2 net, endpoint 59+34, open 0 / short 0**이다. 게이트/트랜지스터 내부 회로 동등성이나 공정별 spacing/enclosure DRC는 이 검사에 포함하지 않는다.

KLayout의 `OUTLINE` 무매핑 경고도 보존했다. top DIEAREA를 235/0의 새로운 형상으로 만들지 않도록 의도적으로 생략한 것이며, source cell의 실제 235/0 경계는 보존했다. 실제 GDS top bbox와 DIEAREA는 전원 comb 돌출 때문에 같다고 가정하지 않는다.

## 최초 실패와 수정 이력

실패 원본은 로컬 `attempt-*`/`repro-*`에 그대로 남아 있고, 필요한 최소 입력·명령·로그·해시는 Git에서 보존 가능한 [failures/manifest.json](failures/manifest.json)과 아래 폴더에 모았다. 기존 etri050 설정이나 사용자 RTL을 변경해 실패를 숨기지 않았다.

| 순서 / 최초 관측 | 원인 확인·최소 입력/명령/로그 | 수정과 재실행 |
| --- | --- | --- |
| 0 — **최초 실패**, 합성 wrapper | [00-nofanout](failures/00-nofanout/): 390-byte RTL, 전용 tech/project vars, Yosys script와 `qflow-synthesize.log`, `log/synth.log`. `QFLOW_TECH_DIR=<out>/tech qflow -T nspl12t synthesize shift_reg_8bit`. Yosys 매핑은 16셀 생성했으나 QFlow exit 1. 설치 `yosys.sh`의 `if ($?nofanout)`은 `_sized.v`를 만들지 않으면서 직후 이를 필수 검사함. **실험에서 선택한 옵션과 기존 QFlow의 결함이지, NSPL 합성 실패가 아님.** | `nofanout` 옵션을 제거하고 실제 vlogFanout 실행. `repro-first-failure`에서 같은 실패를 재현했으며 최종 세 단계 통과. |
| 1 — 원본 기술 LEF·DEF 인계 | [01-raw-lef-def](failures/01-raw-lef-def/): 원본 LEF를 사용한 route log에 IMPLANT 경고 2건, POLY1/RECT 오류 2건. QFlow 명령은 모두 exit 0이며 “No failed routes”. 그러나 raw DEF는 **동일 VIAS 블록 2개 + 잔여 END VIAS**, SPECIALNETS 선언 10/실제 8로 KLayout **`Expected token: DESIGN`** 실패. | 기술 LEF의 비배선 미지원 선언을 파생 분리. `normalize_def()`로 **동일 payload만** 중복 제거하고 실제 entry 개수를 계산. [def-adapter.json](results/def-adapter.json)에 수정 수 기록. 서로 다른 via 중복은 거부. 최종 KLayout 읽기 통과. |
| 2 — 실제 gate 기능검증 | [02-ansi-redeclaration](failures/02-ansi-redeclaration/): raw QFlow Verilog의 ANSI input/output 뒤에 같은 wire 선언. Icarus에서 `rst_n/dout/clk/din has already been declared` 4건으로 compile exit 4. | Yosys로 같은 raw netlist를 읽고 canonical Verilog를 출력. 연결을 별도 검사하고 파생/원본 모델을 같은 canonical netlist로 비교. 최종 compile 및 파생 기능검증 통과. |
| 3 — PG 명시화 재인계 | [03-pg-reimport](failures/03-pg-reimport/): PG endpoint를 route 전 DEF에 넣으면 DEF2Verilog가 `.VDD/.VSS`를 출력하고, 후속 `vlog2Verilog -p` 호출은 LEF 없이 이를 제거하지 못함. Yosys `DFFSRX1 ... does not have a port named VSS`로 검출. route 명령 exit 0만으로는 발견 못 함. | PG 명시화·면적을 가진 top PG pin은 **최종 handoff adapter**에서 작성. raw route netlist와 power-aware netlist를 보존하고 final DEF 신호 연결은 JSON, PG는 actual GDS 도체로 대조. 최종 모두 통과. |
| 4 — 변환기 자체 검증 | 로컬 `validation-attempt-00/01`: 초기 음성검사 harness가 KLayout 실패의 exit 1을 예상하지 못한 문제와, normalizer 재호출 시 빈 줄이 누적되는 문제 발견. | 음성검사 exit 1을 명시하고 출력 빈 줄을 정규화. [validation/checks.json](validation/checks.json)에서 멱등성·모순 via 거부 및 GDS 결함 검출 통과. 형상/연결 결과는 바뀌지 않음. |

최초 실패와 미수정 DEF 실패는 다음 명령으로 각각 재현한다. **두 명령의 기대 종료코드는 1**이며 실패 로그와 preservation 결과도 생성한다.

```bash
python3 development/experiments/M0-09-qflow/run.py \
  --variant baseline --out /tmp/etri-m0-09-fail-nofanout-new
python3 development/experiments/M0-09-qflow/run.py \
  --variant fanout-fixed --out /tmp/etri-m0-09-fail-raw-def-new
```

## 실제 결과·재현·오류 검출

| 실제 확인 | 결과 / 근거 |
| --- | --- |
| 셀 읽기 | Liberty 38셀, router LEF에서 MET1/2/3의 층/피치/폭 확인. [read-cells.log](results/read-cells.log), [route.log](results/log/route.log), [info](results/layout/shift_reg_8bit.info). |
| 합성·배치·배선 | 단계마다 DFFSRX1 8 + TIEHIX1 8, pg 연결 각 16개, 기존 프로파일 검사 통과. [result.json](results/result.json). 최종 router failed route 0. |
| 기능검증 | RTL 650비교 통과. 합성/배치/배선 netlist 각각 파생 모델 **650/650 통과**, 제공 원본 모델 **각 602/650 불일치**로 기대한 실패. 입력 시점을 바꾸어 숨기지 않음. |
| GDS | [gds-check.json](results/gds-check.json): top=`shift_reg_8bit`, 실제 master 2종/instance 16개, 원본 geometry/text 일치, 21 net 연결 및 단위/격자/핀 검사 통과. |
| 오류 검출 | master DFFSRX1 형상 삭제 → 거부. VDD 세로 comb 삭제 → VDD **3성분 단선** 검출. VDD–VSS 금속 추가 → **공급망 단락** 검출. 충돌 via 정의 → 거부. [checks.json](validation/checks.json). |
| 독립 재실행 | `/tmp` cwd에서 절대 스크립트 경로로 `/tmp/etri-m0-09-replay-portable-20261115`에 실행. 최종 handoff DEF·파생 LEF byte 일치, GDS 검사 보고서와 각 단계 기능·연결 결과 일치. GDS 시간 필드의 binary byte 동일성은 요구하지 않음. |
| 원본 보존 | 최종 및 replay 모두 inventory 322개 일치, 별도 전후 271개와 12개 링크 보존. [preservation.json](results/preservation.json), [전체 입력 해시](results/preservation-before.json). |

최종 GDS는 로컬 **`results/layout/shift_reg_8bit.gds`**, **28,630 bytes**, SHA-256 **`6980d1aa5c7719d3a51c7df0c9985fb2f8a381fa67ca5d78275050da0abb0d68`**이다. 최종 `handoff.def`는 9,046 bytes, SHA-256 `585fcce460d2e131e38d9450a9548ccf3d8f4e1f5e33501fea0c15785ac29f6b`이다. `run.json`에는 전체 산출물의 경로·해시를 기록했다. GDS와 파생 LEF, 바이너리, 반복 탐색 출력, 재생성 가능한 QFlow 실행기·Yosys script·canonical netlist와 비어 있는 compile 로그는 `.gitignore`로 제외하며 로컬 파일은 삭제하지 않는다. 실제 입력·단계별 raw netlist/JSON·명령/종료코드·필수 로그·실패 재현 근거는 보존한다. 외부 PDK와 재실행 명령이 필요하고, PDK 재배포 조건이 확정됐다는 뜻은 아니다.

실제 실행한 독립 비교·음성검사 명령:

```bash
cd /tmp
python3 /home/wbyoon/snu_ssc/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/development/experiments/M0-09-qflow/run.py \
  --out /tmp/etri-m0-09-replay-portable-20261115
# 저장소 루트에서:
python3 development/experiments/M0-09-qflow/validate.py \
  --out development/experiments/M0-09-qflow/validation \
  --compare-results /tmp/etri-m0-09-replay-portable-20261115
```

## QFlow 재사용 범위와 다음 작업

**재사용 가능:** 설치·공유 etri050를 건드리지 않고 프로젝트별 tech 디렉터리를 선택하는 구조, Yosys/ABC 합성, 실제 tie 매핑, GrayWolf의 작은 core 배치, QRouter의 3층 배선, DEF/netlist export. 이 예제는 큰 OBS·MET1 핀을 가진 새 12T 두 셀을 실제로 배선했다. 별도 형식 보정과 KLayout GDS merge를 붙이면 최소 GDS 인계까지 가능하다.

**그대로 재사용 불가/미확인:** 무수정 raw DEF 인계, 기존 Magic grid/stream/DRC/LVS, nofanout 선택 경로, ANSI netlist의 Icarus 직접 입력, 명시 pg endpoint를 가진 DEF의 논리 export, 38셀 전체의 배치배선, filler/tap/antenna·큰 혼잡도 설계. 이번 fixture를 다른 설계의 합격 보장으로 일반화하지 않는다.

**M0-10:** 실제 CTS와 버퍼/clock slew/skew, 검증된 배선 RC 생성·STA annotation을 실험한다. 현재 clock은 ideal-clock 가정 수준이고 clock wire는 단순 신호 배선이다. RC 자료의 출처/코너/단위와 추출 정확도를 확보하기 전에는 `.rc`를 POST-STA 통과 근거로 쓰지 않는다. reset recovery/removal은 현재 모델 프로파일의 남은 설계 검증이다.

**M0-11/12:** 이 실험과 M0-10을 함께 보고 QFlow 보완/OpenROAD/혼합 중 기본 backend를 선택한다. 이번의 KLayout 후단은 제한된 geometry/netlist 인계를 검증한 사례이며 OpenROAD 왕복·CTS/RC·모든 전원/clock 변환을 검증한 사례는 아니다. QFlow 보완을 택하면 parser/DEF serializer·pg export 수정, 층별 track phase와 ROW 메타데이터, 자동화된 최종 물리 검사에 대한 유지보수 범위를 포함해야 한다. M0-09의 조사 완료와 이 최소 경로 통과를 M0 전체 완료·제작 가능 판정으로 올리지 않는다.
