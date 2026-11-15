# M0-07 PDK view inventory·비교

- 조사일: 2026-11-15 (Asia/Seoul). 관련 작업: [ROADMAP M0-07](../../ROADMAP.md).
- 목적: 외부 NSPL 260820 디지털 12T와 기존 KHU/ETRI 라이브러리의 필요한 view·인터페이스·기술 선언·누락·불일치를 재실행 가능한 코드와 표로 남긴다.
- 결론: **필요 자료의 조사·대응표 작성은 완료했다. 여러 view의 의미가 모두 일치하거나 새 PDK가 물리 흐름에 적합하다는 판정은 아니다.** 확인한 5건의 새 인터페이스 불일치와 기존 DFF 진단을 후속 작업에 인계한다.

## 실행과 보존

저장소 루트에서 실행한다. Python 표준 라이브러리, KLayout의 내장 Python `pya`, Icarus/vvp가 필요하다. 별도 Python `klayout` 패키지는 필요 없다. 관측 도구는 Python 3, KLayout **0.30.7**, Icarus/vvp **14.0 devel (s20260301-986-gaf170a0b5)**이다. 정확한 Python 버전, 실행 경로·바이너리 해시·코드 해시·argv는 [run.json](results/run.json), 버전 원문은 `results/version-*.log`에 있다. 설치·다운로드·상용 EDA 실행은 하지 않았다.

```bash
python3 development/experiments/M0-07-pdk-inventory/inventory.py \
  --pdk-root ../NSPL_05CMOS_PDK_260820 \
  --out /tmp/etri-m0-07-review
python3 development/experiments/M0-07-pdk-inventory/validate.py \
  --results /tmp/etri-m0-07-review
```

저장된 결과를 만든 명령은 다음과 같다. `--out`은 생성물 전용 디렉터리이며 재실행 시 같은 이름의 결과를 갱신한다. 과거 기록과 비교할 때는 새 경로를 쓴다. 원본 PDK·라이브러리·tech 아래를 출력 위치로 주면 거부한다.

```bash
python3 development/experiments/M0-07-pdk-inventory/inventory.py \
  --out development/experiments/M0-07-pdk-inventory/results
```

`--pdk-root` 기본값은 스크립트 위치로 계산한 형제 `NSPL_05CMOS_PDK_260820`이며, `NSPL_PDK_ROOT`로도 지정할 수 있다. 다른 작업 디렉터리에서 호출하는 것도 지원한다. 실제로 `/tmp`에서 다음 명령으로 재실행했다.

```bash
cd /tmp
python3 /home/wbyoon/snu_ssc/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/development/experiments/M0-07-pdk-inventory/inventory.py \
  --pdk-root /home/wbyoon/snu_ssc/NSPL_05CMOS_PDK_260820 \
  --out /tmp/etri-m0-07-replay-20261115
```

그 뒤 저장소 루트에서 두 실행의 안정적인 결과 21개를 비교하고 진단을 검증했다. 검증기는 **360개 확인을 통과**했고 상세 항목을 `validation/checks.json`에 기록했다. 임시 replay는 보존 의존성이 아니며 위 명령으로 다시 만들 수 있다. 경로가 들어가는 실행 로그·`run.json`은 byte 비교 대상에서 제외하고, 그 안의 입력 해시는 `files.csv`와 원본 재해시로 검증한다.

```bash
python3 development/experiments/M0-07-pdk-inventory/validate.py \
  --results development/experiments/M0-07-pdk-inventory/results \
  --compare-results /tmp/etri-m0-07-replay-20261115
```

입력은 PDK 디지털 디렉터리 전체, `digital_ETRI/`, `digital_ETRI050_m1f/`, `digital_ETRI050_m2f/`, `digital_osu050/`, `tech/`의 파일 및 기존 FIR_PE의 라이브러리 설정 Makefile **322개**다. `PDK/`는 지정한 외부 PDK 루트, `REPO/`는 저장소 루트를 뜻한다. 모든 입력을 실행 전후 SHA-256으로 비교했고, 검증 종료 시 다시 재해시하여 **변경 없음**을 확인했다. 공유 QFlow 기술 링크도 조회만 했다. 원본·수동 설계물·설정·링크를 고치거나 파생 PDK를 배포하지 않았다.

이 범위의 모든 파일은 해시 inventory에 포함하지만 의미를 읽은 범위는 아래 선택 view와 기술 선언이다. `.mag`/`.ext`의 전체 회로, 아날로그·패드 전용 디렉터리와 저장소 안의 모든 프로젝트·교육 자료를 조사한 것은 아니다. PDK 이용·재배포 조건의 확정도 이 조사에 포함하지 않는다.

Git에는 코드·이 기록·조사표·JSON snapshot·실행/검증 로그를 근거로 보존한다. 코드에서 그대로 재생성하는 `comb-*.v`, `validation/dff-diagnostic.v`, `validation/nested-via.lef`와 시뮬레이션 실행 파일·Python 캐시는 이 디렉터리의 `.gitignore`로 제외한다. 제외 파일은 위 명령으로 다시 생성되며 로컬 파일은 삭제하지 않는다.
CSV의 줄바꿈은 `.gitattributes`로 보존하여 checkout 후에도 byte 단위 재현 비교가 가능하게 한다. 도구 버전 로그의 마지막 빈 줄도 원문 그대로 둔다.

## 표와 기계 판독 산출물

| 파일 | 담은 내용 |
| --- | --- |
| [files.csv](results/files.csv), [view-hashes.md](results/view-hashes.md) | 전체 322개 파일의 경로·크기·SHA-256, 선택 view 해시 표 |
| [views.csv](results/views.csv) | view별 존재·판독 상태·셀 수·해시·미확인 항목에 필요한 도구 |
| [12t-cells.md](results/12t-cells.md), [cells.csv](results/cells.csv) | 셀별 물리 전용/기능 분류, 필수 view 존재, 논리식·순차 정의, 핀 이름·크기·경계 |
| [pins.csv](results/pins.csv), [model-pins.csv](results/model-pins.csv) | 셀/핀 이름, Liberty·LEF·Verilog·CDL 방향, 전원 역할, CDL 포트 순서, LEF RECT·층, GDS 라벨 층; 별도 Verilog 변형의 핀 |
| [cross-library.csv](results/cross-library.csv), [variants.csv](results/variants.csv) | 구/신 이름 대응 후보, 핀·치수 차이, 기존 m1f/m2f/OSU의 LEF 비교 |
| [units-sites.csv](results/units-sites.csv), [layers.csv](results/layers.csv) | 단위·PVT·site/grid와 기술 LEF의 층별 폭·pitch·offset·RC·stream 대응 |
| [macro-layers.csv](results/macro-layers.csv), [magic-layer-map.csv](results/magic-layer-map.csv) | macro 핀/OBS/GDS 사용 층, 기존 Magic 스타일별 입출력 층 선언 |
| [issues.csv](results/issues.csv) | 누락·방향·site·area·라벨 불일치. 반복 변형을 포함한 관측 395행이며 signoff 위반 개수가 아님 |
| [function-checks.csv](results/function-checks.csv), [function-coverage.csv](results/function-coverage.csv) | 실행한 조합 논리 비교 결과와 모든 Liberty 셀의 검사/제외/미확인 사유 |
| [inventory.json](results/inventory.json), [technology.json](results/technology.json), [pex.json](results/pex.json) | 읽은 view의 구조화된 선언, ITF·TF 단위/stream 선언, 셀별 PEX 인터페이스 |
| [config-references.json](results/config-references.json) | 기존 QFlow 변수·설치 alias 해시·Magic 전원/격자·GrayWolf·LVS 설정 |
| [validation/checks.json](results/validation/checks.json) | 독립 셀 개수 검사, 잘못된 기대값 검출, DFF 진단, 재실행 비교, 원본 재해시 |

`exists=True`는 파일 존재, `read`는 해당 범위의 구조 판독을 뜻한다. `interface-read`는 PEX의 `.SUBCKT`·포트·모델명 판독, `declarations-read`는 기술 선언의 부분 판독이다. **어느 것도 view 전체의 의미 동등성을 뜻하지 않는다.** `unknown`/`미확인`은 읽지 못했거나 그 의미 검증을 수행하지 않은 상태다. `semantic_equivalence`/`gds_connectivity`는 계속 `unknown`이며 별도의 기능 검사 통과 범위만 아래에 명시한다. 스크립트 exit 0도 수집 완료를 뜻하며 PDK 승인 판정이 아니다.

## 필요한 view와 실제 구성

| 세트 | Liberty | macro LEF | 기본 Verilog | CDL/SPICE | 기본 GDS |
| --- | ---: | ---: | ---: | ---: | ---: |
| 외부 NSPL 12T | 38 | 38 | 34 | 34 | 39 (셀 38 + 모음 top 1) |
| 기존 digital_ETRI | 39 | 33 | 40 | 33 | 33 |
| digital_ETRI050_m1f | 39 | 33 | 40 | 33 | 33 |
| digital_ETRI050_m2f | 39 | 33 | 40 | 33 | 33 |
| digital_osu050/iit | 없음 | 33 | 없음 | 33 | 33 |
| digital_osu050/9T | 없음 | 40 | 없음 | 없음 | 34 (셀 33 + top 1) |

기존 세 세트의 기능 Verilog는 각각 34모듈(빈 library wrapper 포함), 타이밍용 `.v`와 `.v.org`는 각각 40모듈이다. `iit_stdcells.mag.gds2`도 별도 GDS view로 읽어 JSON·로그를 보존했다. OSU 행의 없음은 **선택한 `digital_osu050/` 안에 대응 파일이 없음**이며 저장소 전체에 없다는 뜻은 아니다. 다른 디렉터리의 라이브러리를 묵시적으로 결합하지 않았다. OSU 9T의 LEF에만 있는 7개 이름도 PAD*이며 해당 GDS에는 없다.

| 셀 용도 | 필요한 view·역할 | 관측·판정 |
| --- | --- | --- |
| 일반 기능 셀·클록 버퍼 | Liberty(기능/타이밍), LEF(배치/핀), Verilog(논리), CDL(회로 비교), GDS(레이아웃) | 새 기능 셀 34개 모두 다섯 view 존재. 선언/모델 불일치는 별도 존재 |
| TIEHIX1/TIELOX1 | 상수 출력 기능과 전원 연결을 가진 기능 셀 | filler와 구분. 다섯 view 존재, 0/1 출력 기능 비교 통과 |
| FILLX1..4 | 배치 간극·well/전원 연속성용 물리 전용 셀 | Liberty에는 논리 핀 없이 pg_pin만 있고 LEF/GDS 존재. Verilog/CDL 없음은 기능 view의 의도된 제외로 분류. well/전원 연결·LVS 동작은 미확인 |
| 기존 FILL | 기존 LEF·SPICE·GDS, Verilog stub | 기존 Liberty에 없음. filler에 타이밍 셀 정의를 요구하지 않음 |
| 기존 PAD* 7개 | IO 전용 view 세트 필요 | PADFC/PADGND/PADINC/PADINOUT/PADNC/PADOUT/PADVDD가 Liberty/기본 Verilog에 있으나 이 표준셀 LEF/CDL/GDS에 없음. 코어 셀 누락과 구분. 별도 pads_ETRI의 동일 의미를 검증하지 않음 |

12T 순차 셀은 DFFPOSX1/DFFNEGX1/DFFSRX1/LATCHX1 네 개다. 조합 셀의 기능 통과를 이 셀들의 기능 통과로 확대하지 않는다. PEX 파일 34개는 셀별 인터페이스가 CDL 포트 집합과 맞지만, 내부 RC·회로 동등성은 미확인이다. 이 파일은 배선 완료 설계의 SPEF가 아니다.

## 확인한 불일치와 이름 대응

| 항목 | Liberty·LEF·CDL 등의 관측 | 제공 Verilog/다른 view | 처리·다음 행동 |
| --- | --- | --- | --- |
| FAX1.S, HAX1.S | Liberty OUTPUT, CDL O | **LEF INPUT**, Verilog OUTPUT | 실제 선언 충돌. M0-09에서 원본과 분리한 LEF 파생 수정·출처/해시·재검증 필요 |
| LATCHX1 제어 핀 | Liberty/LEF/CDL/GDS `CLK` | Verilog `G` | 이름 불일치. 자동 치환 없이 M0-08에서 enable 의미와 함께 검증 |
| TBUFX1/2 enable | Liberty/LEF/CDL/GDS `EN` | Verilog `E` | 이름 불일치. 원본 모델과 이름을 맞춘 파생 모델/adapter 검증 필요 |
| DFFPOSX1 | Liberty 상승 에지에 D 저장 | 제공 모델은 하강 에지 IQ 저장 후 상승 에지 Q 갱신 | PLAN 부록 B 재현: `D=1 Q=0 posedge_reference=1`. 기능 불일치 진단이며 실리콘 판정 아님. M0-08 |
| DFFNEGX1/DFFSRX1 | Liberty의 에지·비동기 제어 정의 추출 | 두 에지 처리 코드 관측 | 동작 미확인. 동시 제어·우선순위·타이밍을 M0-08에서 자동 판정 |
| 기존 site 높이 | core `3 × 30 µm` | macro 높이 26셀은 36, 7셀은 39 µm | 33셀 모두 site 높이 정수 배수가 아님. 새 12T 설정에 재사용 금지 |
| 기존 area 값 | 예: DFFPOSX1 Liberty area=864 | LEF `36 × 36=1296 µm²`; 기존 32 기능 셀에서 수치 차이 | Liberty area 단위는 명시되지 않음. 단위·산출 근거 확인 전 물리 면적으로 동일 취급하지 않음 |
| 기존 GDS 라벨 | 세 KHU/ETRI GDS의 33셀에서 TEXT 라벨 0개 | LEF/SPICE에는 신호·전원 핀 존재 | GDS 핀 이름·전원 연결 미확인. 검증된 Magic/KLayout 추출·Netgen 필요 |

| 기존 이름 | 12T 대응 후보 | 핀·의미 주의 |
| --- | --- | --- |
| DFFSR → DFFSRX1, LATCH → LATCHX1 | 순차 셀 후보 | Liberty의 D/CLK/Q/R/S 등과 실제 모델 동작 검증 필요 |
| CLKBUF1/2/3 → CLKBUFX1/2/4 | 클록 버퍼 후보 | 구/신 구동력·지연·형상의 동등성 미확인 |
| FAX1 | 같은 이름 | 구 `A,B,C,YC,YS` → 신 `A,B,CI,CO,S`; C→CI, YC→CO, YS→S는 역할 대응 후보 |
| HAX1 | 같은 이름 | 구 `YC,YS` → 신 `CO,S` 출력 후보. 새 S의 LEF 방향 오류도 별개 |
| FILL → FILLX1..4 | 일대다 물리 셀 후보 | 폭과 전원 연결을 보고 삽입 규칙 결정 |
| DFFPOSX1 | 같은 이름 | 구 `36 × 36`, 신 `35.2 × 36 µm`; 핀 형상·모델도 독립 |

대응 후보는 교체 승인표가 아니다. 두 라이브러리의 타이밍·회로·실리콘 의미가 같다고 가정하지 않는다. 기존 m1f/m2f는 Liberty와 기본 Verilog 해시는 같지만 LEF·CDL·GDS 해시가 다르다. LEF 크기는 모두 같아도 m1f는 30셀에서 핀 형상이 다르고, m2f는 FILL의 핀 형상이 다르다. 기존 active 세트가 특정 변형과 완전히 같다고 단정할 수 없다. 상세는 `variants.csv`와 파일 해시를 따른다.

## 단위·층·site/grid와 설정

| 항목 | 기존 KHU/ETRI | NSPL 12T | 해석 |
| --- | --- | --- | --- |
| Liberty 시간/전압/전류/R/C/power | ns / V / µA / kΩ / pF / nW | 동일 선언 | 단위가 같아도 표 값·회로가 동등한 것은 아님 |
| PVT | process 1, 5 V, 25 °C typical | process 1.0, 5 V, 25 °C typical | 조사한 새 코너는 TT뿐. SS/FF 자료를 만들지 않음 |
| Verilog timescale | 기본 `.v` 1ns/10ps; 기능 파일은 선언 없음 | 1ns/1ps | zero-delay 조합 비교만 수행. SDF 타이밍 검증 아님 |
| LEF / GDS DBU | LEF 1000/µm, GDS 0.001 µm | 동일 | 길이 기준은 맞음 |
| 제조 grid | 0.15 µm | 0.01 µm | 검사한 핀 RECT 좌표는 각 선언 grid에 맞음. 전체 DRC와 다름 |
| core site | 3 × 30 µm | 3.2 × 36 µm | 신 38셀의 폭·높이가 site 정수 배수. 구 세트 33셀은 높이 조건 불일치 |
| ICC2 TF | 기존 shell/Magic 설정과 별도 | lengthPrecision=1000, gridResolution=10, core tile 3.2×36 | 10/1000=0.01 µm는 LEF·Cadence TF `0.01000`과 대응 |
| ICC2 전류/power 단위 | Liberty µA/nW와 구분 | TF A/pw | 문자열을 보존. 변환 adapter에 단위 계수 필요 |
| 기존 Magic 설정 | `SCN3ME_SUBM.30.ETRI`, `scalegrid 1 2`, VDD=vdd/GND=gnd | 새 rail 이름 VDD/VSS | Magic 내부 grid·스트림 스타일을 새 제조 grid와 같다고 가정하지 않음 |

| 구 LEF → 신 LEF | 구 pitch / 폭 / offset (µm) | 신 pitch / 폭 / offset (µm) | 신 stream drawing / text |
| --- | --- | --- | --- |
| metal1 → MET1 (수평) | 3 / 0.9 / 1.5 | 3 / 1 / 1.5 | 32/0 / 42/0 |
| metal2 → MET2 (수직) | 3 / 1.05 / 1.5 | 3.2 / 1 / 1.6 | 34/0 / 44/0 |
| metal3 → MET3 (수평) | 3 / 1.2 / 1.5 | 3 / 1.2 / 2 | 36/0 / 46/0 |
| via1 → VIA1 | CUT, spacing 0.9 | CUT, width/spacing 0.8 | 33/0 |
| via2 → VIA2 | CUT, spacing 0.9 | CUT, width/spacing 0.8 | 35/0 |
| cc → CONT | CUT, spacing 0.6 | CUT, width/spacing 0.6 | 31/0 |

신 GDS의 실제 사용 층은 **2/0, 11/0, 12/0, 14/0, 15/0, 31/0, 32/0, 42/0, 235/0**이다. 38셀의 LEF 핀 179개는 모두 이름이 같은 GDS 라벨이 있고 라벨 좌표가 해당 LEF 핀 RECT 안에 있다. 셀별 235/0 prBoundary 크기는 모두 LEF SIZE와 맞는다. 이는 핀의 실제 금속 연결·트랜지스터 회로·형상 전체 비교가 아니다. GDS bbox에는 well·rail 돌출부가 포함되므로 bbox와 LEF SIZE를 단순 비교하지 않았다.

신 macro LEF에는 MET1 핀과 MET1/VIA1 OBS가 있고 실제 GDS에는 VIA1(33/0)이 없다. OBS는 보수적인 배선 차단일 수 있어 물리 cut 존재와 같은 조건으로 취급하지 않는다. 선언과 실제 사용 층의 차이를 `macro-layers.csv`에 보존했고 OBS의 적합성은 M0-09에서 확인해야 한다.

구 GDS는 주로 41..51, 81/82 계열 층을 사용한다. Magic `.tech` 안에는 MOSIS 스타일과 ETRI 스타일(32/34/36 등)이 함께 있다. **기술 파일 이름이 ETRI라는 이유만으로 기존 GDS가 새 stream 층을 쓴다고 볼 수 없다.** `magic-layer-map.csv`에 스타일별 원문 대응을 기록했으며, 실제 GDS 입출력 스타일 선택·왕복 보존은 미검증이다.

기존 QFlow `etri050.sh`는 별도 techlef가 비어 있고 이전 DFFSR/CLKBUF1/FILL, 빈 tiehi/tielo를 가리킨다. SPICE/Liberty/GDS 이름은 저장소 파일명과 다르지만 설치된 QFlow alias가 각각 실제 원본으로 연결되고 해시도 확인했다. 기존 Netgen 설정은 FILL을 ignore하고 nfet/pfet 속성을 처리하며 새 CDL은 nmos4/pmos4를 쓴다. 전원 대소문자·VSS/gnd, 모델명·filler 처리 모두 새 adapter 검증 대상이다.

구 LEF/GrayWolf는 metal1/2/3 RC 값을 제공한다(LEF R=0.09/0.09/0.05, C=3.2e-5/1.6e-5/1e-5 CPERSQDIST). GrayWolf 파일은 거리 centimicron, R ohm/sq, C fF/µm²라고 주석에 쓴다. **새 기술 LEF에는 R/C가 없고** ITF의 MET1/2/3 RPSQ는 0.08/0.08/0.05다. ITF의 MET2 SMIN=1.0과 LEF SPACING=1.2도 수치가 다르지만 서로의 모델 목적을 검증하지 않아 오류로 단정하지 않는다. ITF에는 명시적 단위 선언이 없어 관례만으로 변환하지 않았다. TLU+ 해시가 있어도 RC 해석은 미확인이다. 기존 `khu_etri050.prm`은 스스로 값이 "totally bogus"라고 주석을 달고 있어 추출 정확도의 근거로 삼지 않는다.

## 실행한 검증·미확인 view

조합 검사는 Liberty `function`/`three_state` 식에서 기대값을 만들고 원본 Verilog를 Icarus로 실행해 비교했다. 모든 0/1 입력 조합과 출력 Z를 검사하되 X 입력·글리치·타이밍·전원 단절·트랜지스터 동등성은 범위 밖이다. 입력당 100ns 대기하며 specify 타이밍을 활성화하지 않는다.

| 검증 | 기대·실제 결과 |
| --- | --- |
| 새 조합 기능 | 이름을 그대로 연결할 수 있는 28셀(상수 셀 포함), 총 136 입력 조합에서 일치 |
| 새 제외 범위 | 순차 4셀은 동작 미확인, TBUF 2셀은 핀 이름 불일치로 미확인, filler 4셀은 기능 모델 불필요. `function-coverage.csv`에 명시 |
| 기존 조합 기능 | 세 세트 각각 기본/원본 `.v` 30셀씩, 기능 `.v` 28셀씩 통과. 신 세트와 합해 292건의 셀·모델 검사, 1438개 입력 조합 |
| 기존 기능 Verilog compile | Verilog 기본 모드에서는 MUX의 continuous assignment 대상 `reg Y` 오류. 원문 로그를 보존하고 **명시적으로 `-g2012`로 재시도**하여 조합 검증. 원본 수정 없음. 기존 파일이 모든 Verilog 모드에서 적합하다는 판정 아님 |
| 검증기 오류 감지 | 메모리 안의 INVX1 기대 논리만 잘못된 `A`로 바꾸자 원본 INVX1과 2/2 입력에서 불일치 검출 |
| 기존 DFF 진단 | 기대한 모델 불일치 재현. 진단 harness 통과와 대상 DFF 기능 통과를 구분 |
| 파서/재현/보존 | 독립 Liberty 셀 수, VIA 참조가 top-level LEF 층 선언을 덮어쓰지 않는 회귀 fixture, 원본 322개 해시, 다른 cwd의 결과 비교 수행 |

| view·검증 | 상태 | 필요한 도구·자료 / 다음 행동 |
| --- | --- | --- |
| 새 `.db` | 존재·해시만, 내부 의미 미확인 | 해당 binary reader가 현재 없음. 오픈소스 경로는 제공자 ASCII Liberty export를 사용하고 별도 동등성 증거 요청 |
| 새 NDM의 p0/pcat/reflib.ndm | 존재·개별 해시만, 내부 의미 미확인 | NDM reader 없음. 제공자의 LEF/GDS/Liberty export와 동일 revision 증빙 필요 |
| 새 TLU+ | 존재·해시만, RC 값/단위/코너 미확인 | TLU+ 판독기 또는 제공자의 공개 형식 RC export, 검증된 오픈소스 추출 adapter 필요 (M0-10) |
| ITF/TF/MAP | 텍스트 선언만 읽음 | 전체 rule 실행·단위 변환·기생성분 추출·annotation 검증은 M0-09/10 |
| CDL/PEX 회로 | 포트·방향 주석·모델명만 읽음 | 검증된 Magic/KLayout 추출·Netgen/ngspice, nmos4/pmos4 모델·bulk/전원·핀 매핑 필요. 기존 추출 SPICE의 방향은 주석이 없어 unknown |
| GDS | 7파일 KLayout 읽기, 셀·직접층·계층·라벨·경계 확보 | pin 연결·회로 동등성·DRC는 미확인. 검증된 층 매핑·추출·Netgen·규칙 필요 |
| POST-STA·실리콘·다중 코너 | 미실행 | CTS·설계 전체 배선 RC·annotation·기능 모델 검증 및 별도 공정 자료 필요 |

개발 중 첫 파서는 VIARULE 내부의 `LAYER MET1 ;` 참조를 기술 층 정의로 중복 처리하여 폭·pitch를 잘못 추출했다. `TYPE`을 가진 층 정의만 채택하도록 수정하고, 원문 MET1 폭 1.0·MET2 pitch 3.2 및 별도 중첩 fixture로 재검증했다. 최종 결과에는 수정된 파서의 산출물만 보존했다.

도구가 없을 때도 `views.csv`에 미확인과 필요한 도구를 기록한다. 자체 파서는 제공 scalar 라이브러리용이며 일반 Liberty/LEF/Verilog 컴파일러를 대체하지 않는다. 벡터·지원 밖 Boolean 구문은 오류로 거부한다. 파서가 읽은 수와 실제 도구에서의 합성/P&R 적합성은 별개다.

다음 작업은 **M0-08**의 순차 모델·제어 핀·원본/파생 모델 정책 검증, **M0-09**의 LEF 방향·층/grid·전원 adapter와 QFlow 최소 실험, **M0-10**의 CTS·RC 자료 판독·추출 경로 검증이다. 이 기록에서는 모델/LEF를 패치하거나 backend를 선택하지 않았다.
