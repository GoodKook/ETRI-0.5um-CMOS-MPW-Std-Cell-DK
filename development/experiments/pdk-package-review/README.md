# ETRI 제공 PDK 전체와 디지털 튜토리얼 대조

- 확인일: 2026-11-15 (Asia/Seoul).
- 관련 작업: [ROADMAP M0-07/10/13/14 및 M1·M2](../../ROADMAP.md). 이번 작업은 기존 조사의 보완이며 M0-10의 실제 CTS/RC 실험을 수행한 것은 아니다.
- 입력: 외부 `NSPL_05CMOS_PDK_260820/` 전체와 [디지털 튜토리얼 PDF](<../../../docs/ETRI_0p5um_NSPL_260820/05_NSPL 0.5um Digital CMOS 2P3M 5V Design Tutorial(PnR)_V1.0.pdf>).
- 결론: **제공 자료를 다시 확보·제작하는 준비 작업을 줄이고, 실제 사용 view의 오픈소스 호환성과 설계 검증에 집중할 수 있다.** RC 기술 자료·물리 검증 규칙·소자 모델은 이미 있다. 이 자료를 읽고 변환·검증하는 일은 남아 있다.

## 조사 범위와 재실행

전체 **14,050개 파일, 150,700,822 bytes**의 경로·크기·SHA-256을 계산하고, 실행 전후 트리 digest가 같음을 확인했다. 주요 소스 **96개**의 개별 해시와 모든 최상위 구성요소의 수량·확장자·트리 digest를 [inventory.json](results/inventory.json)에 남겼다. 대량의 calibration 로그를 Git에 다시 복제하지 않으며, 전체 digest는 정렬한 `[상대경로, 크기, 내용 SHA-256]` JSON 행을 UTF-8로 이어 붙여 계산한다.

PDF 54쪽의 추출 텍스트를 다시 읽고 제공 Tcl·shell·SDC와 대조했다. 코드·표가 이미지인 41·45·51쪽은 렌더링해서 확인했다. 보조 자료는 같은 `docs/ETRI_0p5um_NSPL_260820/`의 01 설계 규칙·전기적 목표, 02 GPIO 4쪽, 03 Design Guide의 구성·층·검증 안내를 필요한 범위에서 확인했다. 04 아날로그 튜토리얼은 해시 식별 대상으로만 남겼으며 전체 실습을 검증하지 않았다.

```bash
# 저장소 루트. 원본에 쓰지 않고 이 실험의 results/를 갱신한다.
python3 development/experiments/pdk-package-review/review.py

# 기존 기록을 보존하며 다른 위치에서 다시 조사한다.
python3 development/experiments/pdk-package-review/review.py \
  --pdk-root ../NSPL_05CMOS_PDK_260820 \
  --out /tmp/nspl-package-review-replay
```

Python 3, Bash, `pdftotext`, KLayout을 사용한다. GDS 판독에는 기존 [M0-07 reader](../M0-07-pdk-inventory/gds_inventory.py)를 재사용했다. [preservation.json](results/preservation.json)에 reader·조사 코드·도구 실행 파일의 해시를 연결한다. 원본 PDK·공유 라이브러리·설치 환경은 바꾸지 않았고 상용 EDA·외부 다운로드·재특성화는 실행하지 않았다.

Git에는 조사 코드·이 기록과 입력 해시 inventory·실제 helper 관측·원본 보존·검증 결과를 남긴다. 원문 선언 발췌, 전체 GDS 구조 목록, RC 필드 발췌와 PDF 쪽별 색인은 위 명령으로 재생성하므로 이 실험의 `.gitignore`로 제외한다. 해당 파일은 로컬에 유지하며 새 checkout에서는 조사 명령을 실행한 뒤 확인한다.

## 제공 묶음의 역할

아래 경로는 `PDK_ROOT` 기준이다. 수량은 숨김 파일과 잠금·백업·생성물을 포함한 관측값이며 셀 개수가 아니다.

| 구성요소 | 파일 수 | 읽은 내용과 활용 |
| --- | ---: | --- |
| `NSPL_…_12T_PnR/` | 69 | Liberty·LEF·GDS·CDL·Verilog·SDC, ITF/TF/map, DB/NDM/TLU+, Util 11개, 셀 PEX 34개. 합성·배치배선·STA에 필요한 실행용 export와 예제·설정의 출발점. |
| `NSPL_…_12T_std/` | 385 | OA 원 설계. 기존 [M0-08 조사](../M0-08-sequential/scope-review/README.md)와 [PLAN 2.5](../../PLAN.md#25-12t_std-원-설계의-활용과-검증-범위)를 유지. OA 내부 연결을 새로 판독한 것은 아님. |
| `Calibre/` | 51 | DRC·ANT·LVS·LVL·PEX 규칙/headers/실행 예, MIPT 3개, `LPE_LIB`, `_orig`, `_sec`. 셀·층·소자·전원·규칙 이식과 RC 후보의 근거. |
| `Assura/` | 12,566 | DRC/LVS rules, `techRuleSets`, typical/best/worst QRC의 ICT·procfile·p2lvsfile·qrcTechFile과 calibration 생성물. 9,969개 `.log`, 240개 `.rpt` 등은 디지털 코어의 DRC/LVS 통과 보고서가 아님. |
| `Model_Parameter/` | 7 | SPICE `.lib`, Spectre `.scs`, 백업. `.lib`의 `MOS` 및 TT/SS/FF/SF/FS 선언과 `nmos4`/`pmos4`를 확인. 트랜지스터 시뮬레이션에 활용하며 디지털 Liberty 추가 코너로 간주하지 않음. |
| `NSPL_…_pcell/`, `NSPL_…_std_lay/`, `NSPL_…_std_sch/` | 564 / 48 / 64 | 소자 PCell·아날로그 예제의 native view. 디지털 LVS/추출에 필요한 소자 식별의 참고 자료로 보존하고, 모든 PCell 구현·아날로그 실습을 코어 개발 선행 조건으로 두지 않음. |
| `ETRI_NSPL_GPIO_250610/`, 동명 `.gds` | 270 / 1 | OA와 GPIO GDS. KLayout에서 GDS 66셀·PIC/POB/PBCT/PANA/PVDD/PVSS·filler/corner를 포함한 모음 top을 읽음. 후속 chip-top 자료로 이미 확보되어 있음. |
| `MPW_PAD_28pin/`, 동명 `.gds` | 18 / 1 | OA 패드/실링링 자료와 GDS. GDS는 4셀·`MPW_PAD_28pin` top·`PAD80` 참조, top bbox 1900×1900 µm. 실제 사용 가능한 완성 pad ring·제출 조건을 검증한 결과는 아님. |
| 루트 TF·layermap·calview.cellmap·cds.lib·assura_tech.lib·display.drf | 6 | 층·소자 핀·도구 연결 설정. `cds.lib`에 제공자 머신의 절대경로·중복 DEFINE·현재 폴더와 다른 이름이 있어 그대로 source하지 않음. 필요 시 파생 설정에서 경로를 해결. |

재생성 결과 `results/gds.json`은 세 GDS의 구조·층·라벨 수·bbox를 담는다. GPIO의 02 PDF에는 공급·접지의 MET3 연결, 신호의 MET2 연결 등 사용 조건이 있으므로, 단순히 패드 GDS를 붙여 칩 완성으로 판정하지 않는다. 필요한 IO 타이밍/논리 모델·전원·ESD·제출 검증은 후속 범위다.

## PDF와 함께 줄이거나 합칠 작업

| PDF 근거 | 제공 파일 | 계획 반영 |
| --- | --- | --- |
| 4–5쪽 파일 목록·11–13쪽 Liberty/SDC | `LIB/*_tt.lib`, `DB/*_tt.db`, `SDC/*`, `VERILOG/*` | Liberty를 직접 읽는 오픈소스 경로에 `.db` 재생성·DB→Liberty 역변환·새 라이브러리 characterization을 필수 준비로 추가하지 않는다. RTL·TB·SDC는 기존 원본을 기준으로 필요한 검증·변환만 한다. |
| 7–8·26쪽 RUN 디렉터리와 스크립트 복사 | `Util/` | 전체 PDK 복사·여러 Tcl 수동 복사·TOP_MODULE 문자열 반복 치환은 프로젝트 생성·입력 검증·실행별 설정 생성으로 합친다. 원본은 외부 참조한다. |
| 27–28쪽 핀·면적 | `ICC2_PIN_SETUP`, `pin_place`, `core_size_calculation` | 28핀 형식, side/order, site 3.2×36 µm를 출처로 활용한다. 코어 프로젝트에 28-pin pad 배치를 강제하거나 DC report 파서·ICC2 출력 형식을 그대로 이식하지 않는다. |
| 31–38쪽 준비·배치·CTS·route | `icc2_start/pin/cts/route_cmd.tcl`, ITF/TLU+ | 제공 track/전원/tie/CTS 조건에서 시작해 선택한 backend에 필요한 설정을 검증한다. 후보 backend 전부를 완성하거나 혼합하지 않는 도구 사이 왕복을 구현할 필요는 없다. CTS·route 검증은 유지한다. |
| 41·44쪽 결과·POST-STA | `icc2_fin_cmd.tcl`, `pt_cmd.tcl` | SPEF 우선 경로를 검증한다. 채택 시 SDF 생성·annotation을 별도 필수 작업으로 두지 않는다. SDF 대안/지연 시뮬레이션을 지원할 때만 포함 범위·중복 반영을 검증한다. |
| 48–53쪽 DRC/LVS·PEX | `Calibre/`, `Assura/`, `CDL/`, `MAP/`, `Model_Parameter/` | 공정 규칙·MOS·RC 자료는 이미 확보된 것으로 출발한다. 제공 규칙에서 사용 층·소자·연결/검사항목을 추적해 오픈소스 경로를 구성하고 필요한 특정 누락·충돌만 추가 요청한다. |
| 50–54쪽 전체 PEX 후 simulation | 셀 PEX 34개·전체 추출 rule·MOS | 필수 설계 배선 RC/POST-STA와 선택 트랜지스터 PEX simulation을 구분한다. 현재 코어 프로파일에 모든 셀/코너 재특성화·대규모 전체 회로 SPICE를 선행 조건으로 추가하지 않는다. PDF의 PEX simulation까지 재현했다고 표시하려면 그 선택 경로도 실제 실행해야 한다. |

기준 PDF의 표지 제목은 이미 `Design Basic Tutorial`, Version 1.0이며 SHA-256은 `0c84b85d426213d37a551cf00834de4a0300442b5b22f7ccd82a0ae2980a191b`다. 이 문서의 다섯 단계를 기준으로 진행하며 별도 Basic Tutorial 재확보를 기다릴 필요가 없다.

## 바로 사용할 수 있는 기술 근거와 남은 변환

재생성 결과 `results/declarations.json`에 주요 Tcl/SDC/검증 deck의 파일·행·명령을 담는다.

- `icc2_start_cmd.tcl`의 track은 MET1 `coord=1.5, space=3.0`, MET2 `1.6, 3.2`, MET3 `3.0, 3.0`이다. PG rail MET1 폭 2.0, mesh MET2/MET3 폭 2.0, tie fanout 4가 명시돼 있다. 격자·최소 폭·전원/핀 연결과 실제 backend 출력 대조의 출발점이며 검증된 공통 기본값은 아니다. M0-09에 남은 층별 track/ROW 보존 확인에 연결한다.
- `icc2_cts_cmd.tcl`의 reference 후보는 **CLKBUFX2·CLKBUFX4·INVX8**이다. 원본에는 `synthesize_clock_trees`가 두 번 연속 있다. 이를 명령 두 번 실행이라는 요구사항으로 이식하지 않고 선택한 도구의 CTS 한 경로와 측정 기준으로 구현한다.
- `icc2_fin_cmd.tcl`은 FILLX4→3→2→1, 원본 cell GDS merge, 물리 전용/PG 문장을 제외한 기능 netlist, SPEF/SDC/SDF 출력을 제시한다. 기능 netlist 제외 정책과 별개로 LVS용 전원·filler 표현 및 GDS 연결은 검증해야 한다.
- `pt_cmd.tcl`은 SPEF와 SDF를 모두 읽는다. 이 순서를 OpenSTA에 복사하여 지연을 두 번 반영하지 않도록, 사용할 경로의 실제 지연 포함 범위와 coverage를 확인한다.

RC 자료는 `TECH/*.itf`, `TLU/*.tluplus`, `Assura/QRC/{typical,best,worst}/*.ict`, `Calibre/PEX/MIPT/*.mipt`, `LPE_LIB/*`까지 있다. 재생성 결과 `results/rc.json`에 ICT/MIPT/ITF의 MET1/2/3 선언을 원문 필드로 담는다.

| 관측 예 | 출처 | 의미 |
| --- | --- | --- |
| MET1/2/3 두께 0.6/0.68/0.88 | 디지털 ITF·typical ICT·typical MIPT | 공통으로 관측한 수치. 전체 기술 파일의 동등성은 아님. |
| MET1 폭 1.0 vs 0.6, MET2 1.0 vs 0.7, MET3 1.2 vs 0.8 | ITF WMIN vs typical ICT/MIPT min_width | 형식·모델 적용 범위와 단위를 확인해야 하며 키 이름만 바꾸어 합치지 않음. |
| POLY1 RPSQ 40 vs IPOLY1 resistivity 5, VIA1 RPV 1.5 vs ICT area_resistance 2/0.36 | ITF vs typical ICT | 층 대응·저항 정의·면적 정규화 확인이 필요. 숫자만 비교하여 어느 한쪽을 오류로 확정하지 않음. |
| PASS1 두께 0.8 vs 0.3 | ITF vs typical ICT/MIPT | stack 표현 차이까지 기록하고 선택·변환·검증 근거를 남겨야 함. |

`p2lvsfile`에는 sheet_res와 contact/via의 res/unit_area도 있다. `LPE_LIB`는 PEX deck의 실제 INCLUDE 대상이며 `_orig`, `_sec`를 이름만 보고 대체하지 않는다. 일부 `.R`은 `#DECRYPT`로 시작하고 `qrcTechFile`·TLU+도 이 조사에서 내부 의미를 판독하지 않았다. 보호된 파일을 해독하거나 해당 도구에서 실행한 것이 아니다. M0-10의 남은 문제는 **공정 RC가 전혀 없음**이 아니라 **제공 데이터에서 선택한 오픈소스 추출 경로로의 검증된 변환과 최종 netlist annotation**이다. RC best/worst와 MOS TT/SS/FF, 디지털 TT Liberty는 다른 축이다.

## 원문을 그대로 통과 기준으로 삼지 않는 항목

| 관측 | 근거 | 필요한 처리 |
| --- | --- | --- |
| 면적 report가 없어도 종료 0·utilization 0% | [helpers.json](results/helpers.json)의 `missing_area_report` | 제공 shell helper를 검증기로 사용하지 않음. 새 실행기는 area 입력 누락·단위·범위를 검사. |
| 없는 포트와 `dout[0]` 중복을 넣어도 종료 0·제약 생성 | 같은 파일의 `unknown_and_duplicate_ports` | 신호 목록/중복/bit별 배치와 실제 격자 검사를 유지. 원본의 150×150 입력과 정렬 결과 147.2×144를 구분. |
| 파일 복사·경로·placeholder·코너 선택 문제 | `cds.lib`, `pex_header.cal`의 `WROST`와 PEX deck의 `WORST`, `pt_cmd.tcl`의 예제 SPEF 이름 | 실제 경로·선택 코너를 파생 설정에서 검증. 원본은 수정하지 않음. |
| coverage 분류의 합계 100%와 검증 완료는 다름 | PDF **45쪽 이미지**: All Checks 128, Met 48, Violated 0, Untested 80 | 미검증 80개를 성공으로 합산하지 않음. 적용 가능한 setup/hold/recovery/removal·pulse/IO 검사와 미검증 사유를 분류. 원 SDC의 reset false path 영향도 검토. |
| 기능 실패 시 TB/SDC 수정 권고·일부 오류 무시 | PDF 19·24쪽, 원 제공 Verilog의 기존 M0-08 실패 | 실패의 원인을 확인하고 모델·연결·제약·TB를 올바르게 수정. 제약 완화나 입력 시점 변경만으로 기존 실패를 숨기지 않음. |

Calibre DRC·ANT·LVS의 층/소자/CONNECT·전원명 선언과 Assura 대응 규칙이 있다. 오픈소스 구현에서 필요한 width/spacing/enclosure/grid, 전원/well, 추출·LVS, 적용 가능한 antenna/ERC 등의 범위를 출처 rule ID에 연결한다. 라우터 `check_lvs`나 도형 open/short 검사만으로 PDF 48쪽의 최종 DRC/LVS를 대체하지 않는다. 반대로 core에 사용하지 않는 아날로그 소자의 모든 설계 실습·도구 GUI를 구현할 필요도 없다.

## 산출물과 다음 행동

| 파일 | Git 보관 | 내용 |
| --- | --- | --- |
| [inventory.json](results/inventory.json) | 보관 | 전체 범위별 트리 해시·개수·크기·확장자, 주요 소스 개별 해시 |
| `results/declarations.json`, `results/rc.json` | 재생성 | 실제 명령/행과 RC conductor 원문 필드 |
| [helpers.json](results/helpers.json) | 보관 | 임시 복사본의 누락 area·정상 synthetic area·잘못된 핀 입력 관측 |
| `results/gds.json` | 재생성 | 세 GDS 판독 범위·계층·층·bbox |
| `results/tutorial.json` | 재생성 | PDF 해시·54쪽 색인·쪽별 텍스트 해시·보조 문서 해시 |
| [preservation.json](results/preservation.json) | 보관 | 원본 전체 변경 없음, 코드·reader·도구 식별 |
| [validation.json](results/validation.json) | 보관 | 다른 작업 디렉터리에서의 재현·오류 입력 관측·문서/상태 보존 검사 |

실제로 `/tmp`에서 절대경로로 재실행하여 자동 생성 JSON 7개의 byte 일치를 확인했다. 누락 area·없는/중복 핀을 수용하는 원본 helper의 관측도 재현됐고, 기존 작업 ID·상태·표의 열 수 40개를 보존했다. 문서 링크·코드 블록과 `git diff --check`를 점검했다.

M0-10은 제공 RC 후보와 CTS 셀/track 근거에서 시작해 작은 코어의 실제 추출·annotation을 검증한다. M0-11/12는 필요한 기능을 충족하는 기본 backend 한 가지를 결정하고, M0-13은 전체 배포 식별과 **실제 실행에 사용하는 view의 해시**를 구분한다. 사용하지 않은 calibration 로그·OA 참고 파일의 변경만으로 모든 단계를 다시 실행하게 만들지 않는다. M0-14/M1은 제공 원본 전체를 보존하며 참조·설정·자동 입력을 정리한다.

이번에 통과한 것은 **자료 조사·GDS 구조 판독·원본 보존 확인**이다. 신규 CTS, 배선 RC 정확도, PRE/POST-STA, 새 DRC/LVS·antenna 경로, 전체 디지털 흐름 또는 GPIO/실제 칩을 검증 완료한 것이 아니다. 현재 작업 상태는 ROADMAP에서 관리한다.
