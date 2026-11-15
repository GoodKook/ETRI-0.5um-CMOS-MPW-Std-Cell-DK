# M0-10 — CTS·최종 배선 RC·OpenSTA 인계 실험

실행일: **2026-11-15 (Asia/Seoul)**. [PLAN](../../PLAN.md), [상세 요구사항](../../REQUIREMENTS.md), [CODEX_GUIDE 1.2](../../CODEX_GUIDE.md#12-모든-실행-프롬프트에-적용할-공통-규칙), [전체 묶음/PDF 조사](../pdk-package-review/README.md), [M0-09](../M0-09-qflow/README.md)에서 이어서 수행했다. 작업 상태는 [ROADMAP](../../ROADMAP.md)의 **M0-10 이관**이다. 실제 설계의 RC/POST-STA 결과는 계속 blocked다.

**사용할 수 있는 최종 CTS → route → 검증된 RC → POST-STA 종단 경로는 아직 확보하지 못했다.** 실제 TritonCTS의 버퍼 삽입·클록 연결·기능 검증은 수행했다. TritonRoute는 pin access에서, QRouter 혼합 후보는 미배선 2개에서 멈췄다. 제공 RC를 NSPL OpenRCX rule로 연결한 검증도 없다. OpenSTA annotation 검사기는 **합성한 소프트웨어 fixture**로 양성·음성 검증했으며, 실제 추출 SPEF를 검증한 것으로 계산하지 않는다. 기본 backend 선택(M0-11/12)은 하지 않았다.


## 공통 준비에서의 작업 종료·M2 이관

2026-11-15 사용자 지시에 따라 공통 준비의 우선 목표를 세 담당자의 빠른 독립 개발 착수로 바꿨다. **이 실험의 추가 CTS/RC 해결은 공통 준비에서 중단하고 M2-02(B)·M2-03(C)·M2-05(B/C)로 이관한다.** [담당별 시작 자료와 이관 범위](../../handoffs/M2-PREPARATION.md)를 먼저 읽고, 필요한 경우에만 아래 상세 기록·FOLLOW_UP을 참고한다.

현재 실험·로그·최초 실패·캐시는 보존한다. 이 코드를 공통 기준 flow나 필수 설치로 채택하지 않으며, 기존 결과 JSON을 완료로 바꾸지 않는다. 다음 공통 작업은 M0-13/14와 M1의 최소 구현·착수 인계다. 아래 재실행 안내는 B/C가 필요할 때 사용할 실험 재현 절차이며 공통 준비에서 다시 수행할 필수 절차가 아니다.

## 실제 실행과 판정

| 대상 | 실제 결과 | 판정 범위 |
| --- | --- | --- |
| 새 NSPL TT Liberty/LEF + 기존 `shift_reg_8bit` 매핑 netlist | 38 master 읽기, 8 DFFSRX1 + 8 TIEHIX1에서 시작 | M0-09의 원본 async-reset RTL 의미·S=1 프로파일 유지 |
| TritonCTS | CLKBUFX4 3개 삽입, 8 sinks, 각 경로 2단, 4개 clock net, leaf fanout 4/4 | **topology generated**. 물리 skew/slew 합격은 미확인 |
| CTS netlist 기능·연결 | 650회 비교, mismatch 0. 양의 에지·비반전 clock trace·모든 S=1·R=rst_n 확인 | 타이밍 없는 기능 검증. [clock profile](results/annotation-probe/clock-profile.json), [실제 simulation](results/annotation-probe/simulate.log) |
| OpenROAD 배치·PG | legalization/check_placement 실행. MET1 rail + MET2 spine의 `check_power_grid`에서 VDD/VSS 연결 보고 | 툴 내부 PG 연결 검사. 최종 GDS/DRC/LVS 검증은 미실행 |
| TritonRoute 후보 | `DRT-0073`: `_16_/CLK`, `_17_/CLK`, `clkbuf_0_clk/A`, `clkbuf_1_0__f_clk/A` 접근점 없음 | [실제 실패](results/direct-route.log). OBS·spacing을 지워 통과시키지 않음 |
| TritonCTS → QRouter 후보 | 종료 **0**이지만 최종 failed nets **2**: `_1_`, `clknet_1_0__leaf_clk` | [실제 로그](results/qrouter.log). 미배선 검사가 이를 거부. `.rc`에도 `No driver for net din` 등 문제가 있어 추출물로 채택하지 않음 |
| DEF 경계 | 19 instance, 22 signal net, 65 endpoint의 선언·이름·단위·좌표 변환·PG 경로 대조 통과 | [boundary.json](results/boundary.json). **논리/형식 보존**이며 도형 연결·최종 netlist 동등성 통과가 아님 |
| OpenRCX | M0-09의 **이미 배선된** DEF를 별도로 읽고 `-lef_rc` 실행. `RCX-0468` model file 없음 | CTS 미배선과 별개의 장애를 [rcx-probe.log](results/rcx-probe.log)에 격리. 실제 RC/SPEF 생성 실패 |
| OpenRCX 보정 패턴 | `bench_wires -v1`로 **5,829 net**의 DEF/Verilog/ODB 생성 | [patterns.json](results/patterns.json). 기하 패턴 생성만 완료. reference 추출·rule fitting·정확도 비교는 미실행 |
| OpenSTA 3.2 annotation 검사기 | fixture 22 net/65 endpoint 일치, unannotated/partial **0/0**. clock net 제거 시 **1/0**, clock pin 이름 변경 시 **0/1**과 1648/1650 경고 | [fixture 검증](results/annotation-probe/validation.json). 실제 배선 RC coverage를 뜻하지 않음 |
| 독립 재현·원본 보존 | 빈 `/tmp` 설치·다른 cwd 재실행, 13개 주요 산출물 byte 일치. 외부 PDK 14,050개 전체 digest·M0-07 원본 322개 일치 | [개발 검증](results/validation.json). 설계의 POST-STA는 계속 **blocked** |

`final.v`·`estimated.spef`를 성공 산출물로 내지 않았다. [result.json](results/result.json)의 `RC`와 `POST_STA`는 `blocked`이고 실험 실행기는 종료 **2**를 반환한다. 완료 처리한 로드맵 ID는 없다.

## 먼저 확인한 제공 자료와 RC의 확보 수준

아래 경로의 기준은 외부 `NSPL_05CMOS_PDK_260820/`다. `DIGITAL`은 `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR`이다. [materials.py](materials.py)와 [materials.json](materials.json)에 실제 경로·해시·필드·판독 한계를 남겼다.

| 자료 | 확인한 내용 | 오픈소스 실행 입력으로서의 상태 |
| --- | --- | --- |
| `DIGITAL/Util/icc2_cts_cmd.tcl` | CLKBUFX2/4·INVX8, CTS 호출 두 번 | 의도를 조사. 중복 호출을 그대로 이식하지 않음 |
| 새 TT Liberty/LEF | CLKBUFX2/4: A→Y 비반전, input C 0.02461/0.02464 pF. INVX8: 반전, input C 0.1898 pF. 모두 Y max C 1.2 pF, LEF master 있음 | 이번 CTS는 비반전 버퍼 두 종류만 허용. CLKBUFX2 3개를 쓰는 별도 시도도 실행. INVX8을 포함한 CTS 조합은 미검증 |
| `Util/icc2_start_cmd.tcl` | MET1 Y=1.5/pitch 3.0, MET2 X=1.6/3.2, MET3 Y=3.0/3.0. PG 폭 2.0, MET2 pitch 76.8, MET3 pitch 72·offset 11/47 | 최초 OpenROAD track 설정의 출처. LEF MET3 offset=2.0과 Util=3.0의 차이를 구별. 혼합 후보는 별도 격자 변경을 아래에 공개 |
| `TECH/*.itf`, `TLU/*.tluplus` | ITF 금속 두께 0.6/0.68/0.88, RPSQ 0.08/0.08/0.05. via RPV 1.5. TLU+ 실제 파일 존재 | ITF 필드 판독. TLU+는 compiled 원자료로 해시만 식별. 검증된 OpenRCX 변환 없음 |
| `Assura/QRC/{typical,best,worst}` | ICT·p2lvsfile·qrcTechFile·calibration 수치 자료 존재. typical p2lvs sheet_res 0.08/0.08/0.05, VIA1 `res=2/unit_area=0.36`, VIA2 `1.5/0.36` | ICT의 `resistivity`라는 이름만 보고 bulk Ω·µm로 변환하지 않음. qrcTechFile은 미판독. 상용 qrc/quantus 미설치 |
| Assura `profiles/`·`models/` | 전체 `.dat.gz` 240, `.dat2d` 9, `.dat3d` 24, `.mdl` 30, `.net_ascii` 240. 표·모델 숫자가 실제로 있음 | 원자료 부재가 아님. 열 의미·단위·패턴 대응·OpenRCX table 변환의 검증이 없음. gzip 240개 header 검사에 SPEF 서명 없음 |
| `Calibre/PEX/MIPT/{typical,bestRC,worstRC}.mipt` | cap_unit=ff, 금속 `r_sheet`, stack·via 선언 | 의미 대조의 원자료. typical MIPT와 digital ITF를 전체 동등한 모델로 간주하지 않음 |
| 실제 INCLUDE 대상 `Calibre/PEX/LPE_LIB/*` | `.C`에 xCalibrate table·length um/cap ff 표기. 일부 `.R`은 `#DECRYPT` | 보호된 내용은 해독하지 않음. `_orig`/`_sec`로 바꾸지 않음. Calibre 미설치·오픈소스 변환 미검증 |
| 셀 PEX 34개 | 기존 셀 내부 RC 자료 | **이 실험의 배선 RC 입력으로 사용하지 않음** |

외부 14,050개 파일의 이름 조사에서 `.spef`/`.sdf`는 없었다. 이는 제공 RC·보정 수치가 없다는 말이 아니다. compiled 파일 내부 의미나 임의 확장자의 모든 내용까지 부재를 증명한 것도 아니다. 현재 부족한 것은 **선택한 원자료/단위/코너의 해석 → 선택한 추출기 입력 → 독립 reference와의 비교**다.

typical ICT/MIPT의 MET1/2/3 min_width=0.6/0.7/0.8과 digital ITF WMIN=1.0/1.0/1.2, PASS1 두께 ITF=0.8과 ICT/MIPT=0.3, via의 RPV와 면적 기준 저항 차이 등을 단순 키 치환으로 합치지 않았다. 디지털 TT/5 V/25 °C, RC typical/best/worst와 MOS TT/SS/FF는 서로 다른 축이다. TLU+ 이름만으로 RC corner를 TT라고 정하지 않았다.

typical MIPT의 date는 `Fri Sep 13 2024`, LPE `.C` 생성일은 2024-10-04이고 디지털 Liberty의 date는 2026-07-20/revision 1.0이다. 같은 배포 묶음에 있다는 사실과 해당 digital export에 대한 RC revision 적합성·benchmark를 구분한다. 날짜 차이만으로 원자료가 틀렸다고 판정하지 않는다.

## 재현 가능한 로컬 도구 준비

공식 [설치 안내](https://openroad.readthedocs.io/en/latest/user/Build.html#build-with-prebuilt-binaries)가 연결한 VaultLink에서 Ubuntu 24.04 패키지를 확보했다. 실제 버전은 **26Q2-1164-g08f67ee5ec**, 63,800,256 bytes, SHA-256 `f3f1eeaa18f327503f72cc45dcef5b1514ec2e89726ec53b4553bf4f951168a3`이다. 관측 당시 응답은 [release-observed.json](release-observed.json)에 보존했다. 최신 버전을 매번 선택하지 않는다.

초기 일반 sandbox의 DNS 요청은 실패했다. 허용된 네트워크 실행으로 공개 패키지를 받은 뒤 `dpkg-deb -x`로 **저장소 `.cache/M0-10/openroad`에만** 풀었다. 빠져 있던 `tcl-tclreadline`·`libqt5charts5` 두 패키지도 동일하게 처리했다. `/opt/or-tools` 라이브러리는 패키지 안의 것을 프로세스별 `LD_LIBRARY_PATH`로 선택한다. 시스템 `apt install`·upgrade·공유 링크 변경은 하지 않았다.

[install_local.py](install_local.py)는 세 URL·SHA-256을 고정하며 [acquisition.json](acquisition.json)에 연결한다. 빈 `/tmp/M0-10-install-replay`에서 실제 다운로드·압축 해제를 재실행했고 binary hash가 일치했다. 호스트의 나머지 shared library까지 고정한 깨끗한 환경 릴리스는 M1-01의 별도 과제다.

실제 기존 도구는 OpenSTA **3.2.0/f2e10f1da1**, Yosys **0.71+4/02365349e**, QRouter **1.4.90.T**, Icarus **14.0 devel**, KLayout **0.30.7**이다. 버전 원문은 `results/version-*.log`, 실행 파일 해시는 [result.json](results/result.json), OpenROAD hash·환경은 [run.json](results/run.json)에 있다. 이번 GDS/DRC/LVS 실행은 없다.

## 입력·CTS·물리 후보의 조건

실제 의미 입력은 M0-09의 `results/synthesis/route.v`, 새 Liberty/LEF, 제공 `SDC/shift_reg_8bit.sdc`다. M0-08의 검증된 파생 순차 기능 모델과 같은 TB를 재사용했다. 원본 `wire VDD=1`/`VSS=0`는 **사용되지 않는 alias일 때만** 파생 netlist에서 제거한다. 원본 PDK·기존 라이브러리는 바꾸지 않는다.

20 ns period, setup/hold uncertainty 0.5/0.1 ns, max transition 2.2 ns, max capacitance 1.2 pF, max fanout 10, 입력 지연 max/min 1.0/0.1 ns, 출력 1.1/0.2 ns와 load 0.3 pF를 유지했다. clock/reset의 입력 transition 0.1 ns는 **이번 실험 가정**이다. 원 SDC의 reset 전체 false path는 파생 SDC에서 제외하고 recovery/removal을 드러냈다. 결과 위반을 숨기기 위한 예외는 넣지 않았다.

Liberty에 CTS가 찾는 max-slew 속성이 없어 처음 `CTS-0107`로 실패했다. `configure_cts_characterization -max_slew 2.2 -max_cap 1.2`로 출처 있는 탐색 범위를 명시했다. root CLKBUFX4, buffer list CLKBUFX2/4, cluster 최대 4 sinks·100 µm, 기본 NDR을 쓰지 않는 후보, placement 좌우 1 site 여유, MET1–3 배선을 실험했다. 각 sink의 비반전 2단 경로와 root/leaf fanout 2/4는 논리적으로 확인했다. **Skew의 승인된 수치 목표는 원 SDC에 따로 없으므로 uncertainty를 skew 합격선으로 바꾸지 않았다.** 최종 배선 RC가 없어 물리 latency/skew/slew/cap 합격 판정은 대기다.

최초 floorplan은 die 320×288 µm, core (16,36)–(304,252), site `core`=3.2×36 µm, 제조 격자 0.01 µm다. 원 LEF의 미사용 소자용 V01만 제거하고 V12/V23 규칙과 같은 cut 0.8×0.8·metal enclosure 0.6의 default via를 파생 생성했다. FAX1/HAX1.S 방향 2건은 기존 Liberty/CDL 합의대로 보정했다. 셀 핀·OBS 도형은 보존했다. NWELL/ACT LEF58 width/spacing의 미지원 info도 로그에 남아 있으며 이를 DRC coverage로 계산하지 않는다.

PG 최초 후보는 Util의 MET1 rail/MET2/MET3 mesh를 시험했다. 최종 진단 후보는 MET1 폭 2.0 rail + MET2 폭 2.0·pitch 76.8·offset 14.4 spine이며 MET3 mesh는 제외했다. 이 offset은 이번 fixture의 pin escape 조사값으로, 검증된 플랫폼 기본값이 아니다. QRouter는 clock net 우선순위도 주었지만 미배선 2개가 남았다.

혼합 후보의 [def_adapter.py](def_adapter.py)는 parameterized via를 같은 RECT로 풀고, 단일 PORT 키워드·SHAPE 힌트를 표현 변환하며, QRouter writer가 읽지 못한 한 줄 net을 여러 줄로 쓴다. 원 track 위상이 유지됐다고 주장하지 않는다. instance·ROW·PG를 함께 (1.6,1.5) µm 이동하고 die를 326.4×294 µm로 넓혔다. QRouter의 공통 0 위상 격자에 맞춰 signal IO를 재배치했다. [변환 내역](results/qrouter-input-adapter.json)과 [경계 검사](results/boundary.json)에 변경·보존 범위가 있다. **검증된 혼합 backend 채택이나 최종 도형 보존 통과는 아니다.**

## RC·SPEF/SDF·STA의 정확한 범위

CTS API를 구동한 LEF RC는 **estimated**다. digital ITF RPSQ를 수동 전사한 R=L/W×RPSQ, `C_area = 8.8541878128e-6 × ER / h` pF/µm²를 사용했다. ER=4, 가정한 ground 높이 h=0.6/2.0/3.1 µm이며 임의의 전도성 plane·평행판 근사다. fringe/coupling, 실제 이웃층/밀도, via R, stack 형상 효과를 검증하지 않았다. [inputs.json](results/inputs.json)의 `rc`·`limitations`에 수치와 원본/파생 해시가 있다. **이 숫자는 ICT/MIPT의 검증된 변환이나 RC typical corner가 아니다.**

`inputs.json`의 원본 목록은 실행·조사 출처를 함께 식별한다. P&R이 읽는 것은 파생 Liberty/LEF/netlist/SDC이고, ITF는 추정 R 숫자의 근거다. Util·ICT·p2lvsfile·MIPT·LPE_LIB·TLU+는 출처 대조 자료이며 runtime extraction rule로 읽지 않았다. OA·MOS·GPIO·전체 calibration 로그도 P&R 입력이 아니다. 전체 PDK 재해시는 이번 개발 보존 감사이며 매 설계 단계의 무효화 입력 계약으로 강제하지 않는다.

선택한 인계는 **배선 SPEF**다. 목표 포함 범위는 MET1–3/VIA1–2의 clock·signal·reset·tie 배선 R/ground C/coupling C이며 PG power-integrity와 셀 내부 transistor PEX는 별도다. 셀 내부 지연·pin C는 TT Liberty에서 가져오고, 실제 추출기의 pin-cap 포함 여부를 확인해 중복 반영을 막아야 한다. **SDF는 생성·읽지 않았으며 병행 생성을 필수 과제로 두지 않았다.**

[annotation.py](annotation.py)·[sta.tcl](sta.tcl)는 flat netlist의 endpoint·SPEF 단위·RC 그래프와 OpenSTA의 unannotated/partially-unannotated driver를 검사한다. 현재 검증한 입력은 `fixture-*.spef`: net마다 **1 Ω/1 fF star**를 인위적으로 만든 데이터다. RC는 배선·셀 PEX에서 추출하지 않았다. `read_spef` 기본 pin C 처리와 propagated clock을 사용했고, 양성 fixture에서는 reset recovery/removal 각 8 endpoint와 타이밍 위반도 확인했다. [fixture-timing.json](results/annotation-probe/fixture-timing.json)의 값은 **물리 skew/slew 수치로 사용할 수 없다**.

음성 검증은 clock net 삭제, instance/pin 이름 오류, resistor 연결 삭제, R=0, 반전 clock, ideal clock, pre-CTS의 오래된 netlist 조합이다. DEF 단위·clock endpoint·PG 경로 변조도 거부했다. OpenSTA가 SPEF 경고 후 종료 0을 내는 사례까지 실제 확인했다. endpoint checker의 성공은 기술 정확도·도형·timing 합격의 대체가 아니다. 실제 OpenRCX coupling SPEF까지 이 검사기의 전체 지원이 검증된 것도 아니다.

## QFlow 재사용 조사와 후보를 선택하지 않은 이유

설치 QFlow **1.4.100**의 `vlogFanout.c`에는 clock pin 추적과 별도 clock buffer를 쓰는 fanout tree 생성이 있다. 따라서 QFlow에 clock buffering 기능이 전혀 없다고 하지 않는다. 이 경로의 조사 범위는 합성 단계 fanout buffering이며 배치 후 route-aware skew/slew 기준 충족은 입증되지 않았다.

`qrouter/delays.c`는 route 길이에 LEF RPSQ·area/edge C·via R을 적용한다. 원 기술 LEF에는 그 RC 선언이 없고 reader 초기값은 0이다. 설치 `opensta.sh -d`는 `.rc` → `rc2dly`의 `.dly/.sdf` → `read_sdf`를 제공하며 명령 성공만으로 누락·clock·RC 정확도를 검증하지 않는다. **이번에는 기존 SDF 생성 경로를 새로 실행·채택하지 않았다.** 설치 script/helper/source hash는 [materials.json](materials.json)의 `qflow_evidence`에 있다.

공식 [TritonCTS 문서](https://openroad.readthedocs.io/en/latest/main/src/cts/README.html)는 Liberty와 wire RC에 의한 characterization 설정을 설명한다. 공식 [OpenRCX 문서](https://openroad.readthedocs.io/en/latest/main/src/rcx/README.html)와 [보정 흐름](https://openroad.readthedocs.io/en/latest/main/src/rcx/doc/calibration.html)은 공정/코너별 rule과 reference 추출·비교를 요구한다. 이 구분을 적용했다. 확인일은 2026-11-15이며 실제 실행 옵션은 고정 binary에서 확인했다.

실행 버전의 [공식 LEF-RC 회귀 예](https://github.com/Precision-Innovations/OpenROAD/blob/08f67ee5ec/src/rcx/test/rcx_v2/flow/options/scripts/gcd_v2_v1_lef_rc.tcl)도 model file을 지정한다. 다른 공정의 rule을 NSPL 입력처럼 넣어 오류만 없애지 않았다. 공개 문서의 옵션 이름만으로 제공 ITF/TLU+/ICT/MIPT를 직접 읽을 수 있다고 가정하지 않았다.

## 재실행

Python 3.12, Ubuntu 24.04 amd64와 위 기존 EDA 도구를 사용한다. 원본 PDK 기본 위치는 저장소 형제 디렉터리이며 `--pdk-root`로 지정할 수 있다. 출력 디렉터리는 새 경로만 허용한다. 아래 M0-10 실행은 현재 의도대로 **종료 2/blocked**다.

```bash
# 저장소 루트. 네트워크는 환경의 권한 절차를 따른다.
python3 development/experiments/M0-10-cts-rc/install_local.py
python3 development/experiments/M0-10-cts-rc/materials.py
python3 development/experiments/M0-10-cts-rc/run.py --out /tmp/m010-new-run
python3 development/experiments/M0-10-cts-rc/generate_patterns.py --work /tmp/m010-new-run

# 별도 설치와 다른 cwd에서 재현한 실제 경로. 이미 있으면 새 이름을 쓴다.
python3 development/experiments/M0-10-cts-rc/install_local.py --cache /tmp/M0-10-install-replay
```

`/tmp`에서 절대경로의 `run.py --out /tmp/M0-10-replay --openroad-root /tmp/M0-10-install-replay/openroad`를 실행했다. 그 경로에 `generate_patterns.py`도 재실행했다. 기존 실행과 실제 byte 비교를 다시 감사하려면:

```bash
python3 development/experiments/M0-10-cts-rc/validate.py \
  --replay /tmp/M0-10-replay --install-replay /tmp/M0-10-install-replay/openroad

# annotation 무결성 검사만 실행. 누락된 fixture를 주면 종료 비영(1).
python3 development/experiments/M0-10-cts-rc/annotation.py \
  --mapped-json development/experiments/M0-10-cts-rc/results/annotation-probe/mapped.json \
  --spef development/experiments/M0-10-cts-rc/results/annotation-probe/fixture-complete.spef
```

실제 명령/cwd/종료 코드는 `results/commands.jsonl`, `results/annotation-probe/commands.jsonl`, `results/patterns/commands.jsonl`에 있다. 사용한 핵심 코드/Tcl은 `results/repro-source/`에도 고정했다. 큰 원본 복제·설치 파일·ODB·패턴 DEF/Verilog는 Git 제외이며, 패턴 파일의 크기/해시/생성 명령은 `results/patterns.json`에 있다. 로컬 생성 파일은 보존했다.

## 실패 이력과 다음 작업

[failures/index.json](failures/index.json)에 초기 20회 시도의 모든 파일 해시와 보관 위치를 기록했다. 전체 파생물은 `.cache/M0-10/attempts/`로 보존하고 주요 최초 실패의 Tcl/명령/로그는 `failures/`에 남겼다. 초기 site `unit`→제공 `core`, 누락 max-slew, PG terminal, V01, 미사용 power alias, default via, QRouter DEF dialect·한 줄 net writer·point IO 처리 등의 시행착오와 후속 결과를 구분한다. CLKBUFX2, placement padding, PG mesh/offset, 특정 셀 이동 시도도 원래 실패와 함께 남겼다. **특정 셀 이동은 배선을 해결하지 못해 최종 스크립트에서 제외했다.**

M2에서 B/C가 이관 업무에 착수할 때는 [구체적 후속 과제·필요 증거](FOLLOW_UP.md)를 따른다. 이관한 실제 검증의 완료 조건은 작은 설계에서 실제 route 완료·도형/전원/클록 연결, 선택한 공정/코너의 검증된 RC 생성, 동일 최종 netlist의 누락 없는 annotation·skew/slew 조건 확인이다. M2-02/03/05에서 추적하며 공통 준비의 착수 조건으로 되돌리지 않는다. M0-01~09의 완료 행과 근거는 수정하지 않았다.
