# M0-10을 마치기 위해 무엇을 더 해야 하는가

기준일: **2026-11-15**. [실제 실행 결과](results/result.json), [상세 실험 기록](README.md), [ROADMAP](../../ROADMAP.md)과 연결한다. 이 문서는 기존 실험의 남은 일을 구체화한 것이다. 추가 실험을 수행했거나 M0-10을 완료했다는 뜻은 아니다.


**적용 시점·담당 변경:** 이 문서의 상세 구현은 M2-02의 B와 M2-03의 C가 이어서 맡는다. 공통 준비에서는 M0-13/14·M1을 우선하고 이 목록을 먼저 해결하려고 추가 실험하지 않는다. [짧은 인계 안내](../../handoffs/M2-PREPARATION.md)를 먼저 읽는다. 이관은 실제 CTS/RC·POST-STA 통과가 아니며 아래 완료 조건은 M2의 실제 검증에서 유지한다.

F1은 B, F2~F4는 B의 생산 경로 구성과 C의 조건/정확도 공동 검증, F5는 C와 B의 최종 산출물 인계, F6은 B의 클록 구현과 C의 POST-STA 판정으로 나눈다. 현재 M0-10 상태는 이관이며 실험 JSON의 blocked는 당시 실제 결과로 보존한다.

현재 남은 큰 문제는 두 가지다.

1. **클록 버퍼를 넣은 설계의 실제 배선을 끝내야 한다.** 버퍼 3개를 넣고 논리 동작을 확인했지만, 배선 도구가 연결하지 못한 선이 남았다.
2. **완성된 배선의 저항·정전용량을 신뢰할 수 있게 계산해야 한다.** ETRI 공정 자료는 이미 있다. 그 자료를 OpenRCX가 읽는 입력으로 옮기고 계산이 맞는지 검증하는 작업이 남았다.

그다음 실제 배선 RC를 OpenSTA에 연결해 타이밍을 판정한다. 지금까지 확인한 OpenSTA 결과는 **누락 검출 프로그램을 시험한 결과**다. 실제 배선에서 추출한 RC로 설계가 통과했는지를 확인한 결과는 아니다.

## 1. 용어와 작업 순서

| 용어 | 이 문서에서 뜻하는 것 |
| --- | --- |
| CTS | 하나의 clk를 여러 플립플롭에 전달할 버퍼 연결망을 만드는 작업. 버퍼 삽입과 실제 금속 배선 완료는 별도로 확인한다. |
| pin access | 셀 핀에 배선이나 via를 규칙에 맞게 붙일 수 있는 위치. 핀이 있어도 주변 도형·간격·격자 때문에 붙일 자리가 없을 수 있다. |
| via | 서로 다른 금속층을 연결하는 구조. 연결용 cut뿐 아니라 위·아래 금속이 충분히 덮는지도 검사한다. |
| RC | 배선의 저항 R과 정전용량 C. 선 길이·폭·주변 배선이 달라지면 값과 지연이 달라진다. |
| extraction rule | 공정별 RC 계산에 사용하는 OpenRCX용 표·모델 파일. LEF의 배치·배선 규칙과 구별한다. |
| reference | 후보 추출 결과와 비교할 기준 RC. 출처·단위·공정 조건과 정확도가 설명되어야 한다. |
| SPEF | 어느 net의 어느 단자 사이에 저항·정전용량이 있는지 저장한 인계 파일 |
| annotation | SPEF의 RC를 netlist의 해당 net·핀에 연결하는 작업. 이름이 다르면 RC가 일부 빠질 수 있다. |
| fixture | 검증 프로그램을 시험하려고 인위적으로 만든 입력. 현재 fixture SPEF는 실제 배선의 추출물이 아니다. |

| 항목 | 답해야 할 질문 | 다음 단계로 넘길 결과 |
| --- | --- | --- |
| **M10-F1 배선** | 연결하지 못한 핀·선을 어떻게 합법적으로 연결할 것인가? | 배선을 마친 DEF와 대응하는 netlist |
| **M10-F2 RC 원자료 해석** | 어느 자료의 어떤 숫자를 어떤 단위로 사용할 것인가? | RC 코너·층·단위·변환 근거 |
| **M10-F3 기준 RC 준비** | 계산이 맞는지 무엇과 비교할 것인가? | 기준 패턴의 reference RC와 출처 |
| **M10-F4 추출기 검증** | OpenRCX가 기준 RC를 충분히 재현하는가? | 검증된 rule과 오차 보고서 |
| **M10-F5 최종 인계** | 실제 배선 RC가 같은 최종 netlist에 빠짐없이 붙었는가? | 최종 SPEF·입력 해시·annotation 보고서 |
| **M10-F6 타이밍 판정** | 그 RC를 반영했을 때 클록·데이터·리셋 타이밍이 조건을 만족하는가? | CTS·POST-STA 결과와 남은 위반 |

**F1과 F2~F4는 병행할 수 있다.** F1의 완성된 설계와 F4의 검증된 rule을 합쳐 F5를 수행하고, 그 결과로 F6을 판정한다. 외부 자료를 기다리는 동안에도 F1의 핀 조사와 기존 RC 자료의 판독은 진행할 수 있다.

아래의 `followup/...` 산출물 이름은 **앞으로 만들 파일의 권장 이름**이다. 현재 존재하는 파일은 링크로 연결했다.

### 경로를 읽는 방법

명령은 `ETRI-0.5um-CMOS-MPW-Std-Cell-DK/` 저장소 루트에서 시작한다. 다음 변수는 긴 경로를 줄이기 위한 것이다.

```bash
M10_REPO="$(pwd)"
M10_EXP="$M10_REPO/development/experiments/M0-10-cts-rc"
M10_PDK="$M10_REPO/../NSPL_05CMOS_PDK_260820"
M10_DIGITAL="$M10_PDK/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR"
```

원본 PDK는 읽기만 하고 수정할 LEF·설정·변환 결과는 새 실험 디렉터리에 둔다. 설치와 전체 실험 재현 명령은 [README의 재실행 안내](README.md#재실행)에 있다.

## 2. M10-F1 — 연결되지 않은 핀과 배선을 해결한다

### 현재 어디서 막혔는가

두 후보가 서로 다른 위치에서 멈췄다. 한 후보를 수정해 기준을 충족하면 된다. 두 후보를 모두 완성하는 것이 조건은 아니다.

| 후보 | 실제 실패 | 의미 |
| --- | --- | --- |
| OpenROAD의 TritonRoute | `_16_/CLK`, `_17_/CLK`, `clkbuf_0_clk/A`, `clkbuf_1_0__f_clk/A`에서 DRT-0073 | 도구가 이 핀에 붙일 합법적인 접근점을 찾지 못했다. 어느 도형·규칙이 원인인지는 추가 대조가 필요하다. |
| TritonCTS 결과를 QRouter로 배선 | `_1_`, `clknet_1_0__leaf_clk` 두 net 미배선 | 일부 선이 연결되지 않았다. 종료 코드는 0이므로 종료 코드만 검사하면 실패를 놓친다. |

[현재 CTS netlist](results/cts.v)에서 미배선 net의 의미는 다음과 같다.

- `_1_`: `TIEHIX1 _9_/Y`에서 `DFFSRX1 _22_/S`로 가는 선이다. S를 비활성 값 1로 유지하는 연결이므로 상수 신호라는 이유로 생략할 수 없다.
- `clknet_1_0__leaf_clk`: `clkbuf_1_0__f_clk/Y`에서 `_16_`, `_21_`, `_22_`, `_23_`의 CLK로 가는 클록 가지다. 이 미배선이 남으면 8개 플립플롭 모두에 클록을 전달했다고 볼 수 없다.

로그는 다음처럼 확인한다.

```bash
rg -n 'DRT-0073|No access point' "$M10_EXP/results/direct-route.log"
rg -n -A 6 'Final: Failed net routes' "$M10_EXP/results/qrouter.log"
```

### 어떤 파일을 어떻게 대조할 것인가

1. **셀 핀·장애물:** 원본 `$M10_DIGITAL/LEF/*_std.lef`의 DFFSRX1·CLKBUFX4·TIEHIX1을 읽는다. PIN은 연결 가능한 영역, OBS는 배선 도구가 피해야 할 영역이다.
2. **실제 도형:** 원본 `$M10_DIGITAL/GDS/*_std.gds`의 같은 master에서 금속·via를 확인한다. 필요하면 CDL의 핀 의미도 대조한다.
3. **기술 규칙:** 원본 `LEF/*_tech.lef`의 MET1~3·VIA1~2 폭·간격·enclosure·격자를 확인한다. 현재 파생 default via는 cut 0.8×0.8 µm, 위·아래 금속 2×2 µm다. cut만 핀 위에 놓이는 것과 전체 via가 규칙에 맞는 것은 다르다.
4. **배치 후 주변:** 직접 배선 후보는 [preroute.def](results/preroute.def), QRouter 후보는 [qrouter-input.def](results/qrouter-input.def)를 기준으로 셀 방향·주변 셀·PG 전원선까지 비교한다.

원 LEF의 DFFSRX1/CLK에는 `(2.45,18.5)–(5.8,20.5)` µm, CLKBUFX4/A에는 `(2.45,15.5)–(5.8,17.5)` µm 사각형이 있다. 이는 **셀 내부 좌표**다. DEF의 배치·회전/대칭을 적용해 전체 설계 좌표로 바꾼 후 격자·via·주변 도형을 대조해야 한다.

QRouter 후보는 instance·ROW·PG를 (1.6,1.5) µm 이동하고 signal IO도 재배치했다. 두 후보의 좌표를 그대로 겹쳐 보면 안 된다. [변환 내역](results/qrouter-input-adapter.json)을 함께 확인한다.

### 다음 작업과 완료 조건

먼저 실패 핀 하나를 골라 입력을 줄인다. 해당 셀, 필요한 금속/via, 충돌에 영향을 주는 인접 도형과 PG를 남겼을 때 **같은 오류가 재현되는지** 확인한다. 후보 접근점마다 핀 포함 여부, via 금속의 덮임, 간격, 격자 정렬을 기록한다.

예상 기록 `followup/f1-pin-access.csv`에는 instance·master·pin, 배치 방향, 핀의 전역 좌표, 후보 via 좌표, 막힌 규칙/도형, 원본 해시와 수정 근거를 넣는다. 원인이 확인되면 배치·격자·접근 경로 또는 근거가 확인된 어댑터를 수정하고 재배선한다. 원인을 모르는 상태에서 OBS나 spacing을 삭제하지 않는다.

**F1 완료 조건:** 선택한 후보의 미배선이 0이고, 최종 도형에서 clock·signal·tie·PG의 open/short가 없음을 독립적으로 확인한다. 배선 뒤의 셀·핀·연결을 netlist와 대조하고 배치 합법성도 확인한다. [M0-09 도형 연결 검사](../M0-09-qflow/gds_check.py)는 재사용할 출발점이지만 기존 셀 수·배치 위상 가정을 새 CTS 설계에 맞춰야 한다. 전체 공정 DRC/LVS 규칙 이식의 완료 여부는 별도로 기록한다.

## 3. M10-F2 — 공정 RC 자료의 의미와 변환 경로를 확정한다

### 이미 있는 것과 아직 없는 것

**공정 RC 원자료를 전부 다시 요청할 상황은 아니다.** [materials.json](materials.json)에 파일·해시·판독 필드가 있다. 현재 없는 것은 이 자료로 신뢰할 수 있는 OpenRCX 결과를 얻었다는 검증 근거다.

| 원자료 | 확인할 내용 |
| --- | --- |
| `$M10_DIGITAL/TECH/*_std.itf` | 금속·유전체 두께와 유전율, 금속 RPSQ, via RPV |
| `$M10_DIGITAL/TLU/*.tluplus` | 제공된 compiled RC 입력. 파일 존재와 OpenRCX의 직접 판독 가능성을 구별 |
| `$M10_PDK/Assura/QRC/typical/ETRI_0p5UM_CMOS_typical.ict` | 층 높이·두께·유전체·via 모델 |
| 같은 typical 폴더의 `p2lvsfile` | 층 대응, sheet_res, via의 res와 unit_area |
| 같은 typical 폴더의 `profiles/`, `models/` | 기존 보정 숫자·모델의 열 의미·단위·기하 조건 대응 |
| `$M10_PDK/Calibre/PEX/MIPT/typical.mipt` | stack, r_sheet, via, cap_unit=ff 등의 원 선언 |
| `$M10_PDK/Calibre/PEX/LPE_LIB/typical_rules.C`, `typical_rules.R` | 실제 INCLUDE 대상. `.C` 표·단위 조사. 보호된 `.R`은 해독하지 않음 |

### 어떤 숫자를 확정해야 하는가

처음에는 **MET1~3·VIA1~2와 RC typical 한 코너**를 대상으로 한다. 디지털 Liberty의 TT/5 V/25 °C와 RC typical을 같은 이름의 조건으로 취급하지 않고 각각 출처를 기록한다.

예상 기록 `followup/f2-rc-provenance.json`에는 다음을 담는다.

- 금속의 두께·높이·폭/간격 적용 범위, 사이 유전체의 두께·유전율
- 금속 저항이 sheet resistance인지 bulk resistivity인지, via 저항은 어느 cut 면적·개수에 대한 값인지
- 길이 µm, 저항 Ω, 정전용량 fF/pF 등 원본 단위와 변환식
- 코너·온도 조건·revision·원본/파생 해시와 여러 자료를 함께 쓰는 근거
- OpenRCX 입력으로 옮기는 방법, 지원하지 않는 필드·기하 조건

예를 들어 sheet resistance가 **0.08 Ω/□**로 확인된 선의 L=100 µm, W=1 µm이면 `R = 0.08 × L/W = 8 Ω`다. 이는 단위와 구현을 확인할 계산 예시다. coupling C나 via R까지 검증한 것은 아니다.

반면 `res=2 unit_area=0.36`은 정의를 확인하기 전까지 `2/0.36 Ω`로 계산하면 안 된다. 2가 기준 면적의 저항인지, 면적으로 정규화한 계수인지부터 확인한다. ICT의 `resistivity`도 이름만 보고 bulk Ω·µm로 단정하지 않는다.

현재 확인해야 할 차이는 다음과 같다. 어느 파일이 틀렸다고 미리 판정한 목록은 아니다.

| 항목 | 관측한 차이 | 확인할 질문 |
| --- | --- | --- |
| 최소 폭 | ITF WMIN=1.0/1.0/1.2, typical ICT/MIPT min_width=0.6/0.7/0.8 | 배선 허용 규칙과 보정 모델 적용 범위의 차이인가? 실제 배선 폭이 선택 모델 범위에 드는가? |
| PASS1 | ITF 두께 0.8, typical ICT/MIPT 0.3 | 같은 물리 구간인가? stack 구성·conformal 층 정의가 다른가? |
| VIA1 저항 | ITF RPV=1.5, typical p2lvsfile res=2/unit_area=0.36 | 같은 크기·개수·조건인가? 면적 정규화와 단위는 무엇인가? |
| revision | typical MIPT date=2024-09-13, 디지털 Liberty date=2026-07-20 | 이 RC가 현재 digital export에 적용된다는 근거는 무엇인가? |

### 가능한 경로 중 하나를 선택한다

1. **검증된 NSPL OpenRCX rule이 있으면 채택한다.** revision·단위·코너·범위와 비교 보고서를 확인한다. 근거가 F3/F4를 충족하면 같은 보정 작업을 전부 다시 만들 필요가 없다.
2. **제공 calibration 표·모델을 변환한다.** `.C`, profiles, models의 열 의미와 기하 대응을 확인하고 필요한 변환기를 만든다. 숫자 표의 존재와 변환의 검증은 별개다.
3. **공정 stack에서 공개 field solver로 기준 RC를 계산한다.** field solver는 금속·유전체 형상으로 정전용량 등을 계산하는 프로그램이다. stack 해석과 계산의 수렴·단위를 확인해 F3/F4로 연결한다.

모든 형식의 importer를 만들 필요는 없다. **F2 완료 조건**은 선택한 코너의 원자료·단위·층 대응·변환 경로를 재현할 수 있게 설명하는 것이다. 결과에 영향을 주는 미확정 필드는 남은 문제로 기록한다. 현재 run.py의 평행판 근사 C와 수동 전사 R만으로 F2~F4가 완료되지는 않는다.

## 4. M10-F3 — 계산의 정답 역할을 할 기준 RC를 준비한다

### 왜 별도 기준이 필요한가

SPEF가 출력되어도 값이 ETRI 공정에 맞는지는 별개다. 설명용 예로 기준 C가 100 fF인데 후보가 40 fF로 계산해도 파일 형식 검사는 통과할 수 있다. 따라서 **같은 배선 형상에 대한 기준 RC**가 필요하다. 이 숫자는 현재 실험의 측정값이 아니다.

현재 [patterns.json](results/patterns.json)의 DEF·Verilog·ODB에는 **5,829개 net**이 있다. 보정용 배선 형상을 생성한 것이며 5,829개 RC 정확도 검증을 마친 것이 아니다. 제공 Assura 자료에도 숫자와 모델이 있으므로 이미 있는 정보를 재사용할 수 있는지 먼저 확인한다.

### 어떤 결과를 준비해야 하는가

기준은 제공 calibration 자료의 검증된 해석, 제공자의 기준 추출 결과, 또는 검증한 공개 solver 계산에서 얻을 수 있다. 같은 평행판 근사값을 후보와 기준 양쪽에 넣어 일치시켜서는 안 된다. 로컬 실행 필수 도구에 상용 EDA 설치를 추가할 필요도 없다.

기준 결과에는 다음 정보가 함께 있어야 한다.

- **대상:** 어느 DEF·패턴·층·폭·간격·길이·via에 대한 값인가? 입력 해시는 무엇인가?
- **조건/출처:** 공정 revision·RC 코너·온도 등 모델 조건, 추출기/solver 버전·모델·옵션은 무엇인가?
- **값의 의미:** R/C 단위, ground C·coupling C 구분, 금속/via 저항 포함 범위는 무엇인가?
- **경계 조건:** substrate·주변 도체·PG·cell abstract, cell pin C를 어떻게 처리했는가?
- **신뢰도:** solver 수렴 또는 기준 추출의 정확도·비교 근거는 무엇인가?

새 실험의 파생 LEF로 패턴을 재생성할 때는 다음 명령을 사용한다. M10_RUN은 run.py가 만든 출력 디렉터리로 technology.lef가 있어야 한다. patterns/가 이미 있으면 새 실험 경로를 쓴다.

```bash
# 별도로 재현한 실험 경로의 예
M10_RUN=/tmp/m010-follow-up-01
python3 "$M10_EXP/generate_patterns.py" --work "$M10_RUN"
```

이 명령은 **reference SPEF나 검증된 rule을 만들지 않는다.** 예상 기준 결과는 `followup/f3/reference-patterns.spef`, `reference-manifest.json`이다. 제공 수치 표를 직접 이용하면 같은 정보를 담은 표·매핑 파일로 대신할 수 있다.

### 외부 자료가 정말 필요하면 무엇만 요청하는가

로컬 자료를 읽고 해결되는 범위를 먼저 진행한다. 그래도 특정 필드나 기준 결과를 만들 수 없을 때는 다음처럼 요청 범위를 좁힌다.

> 현재 NSPL 디지털 export와 RC typical의 대응을 확인하려고 합니다. 첨부한 패턴 DEF/Verilog와 해시에 대한 기준 wire/via R, ground/coupling C 결과를 요청합니다. 가능하면 SPEF와 공정 revision·단위·코너·온도·추출 옵션·pin-cap 포함 여부를 함께 부탁드립니다. 기존 자료에서는 PASS1 stack 정의와 VIA1의 RPV/res·unit_area 대응이 미확정입니다. 해당 정의 또는 검증된 NSPL OpenRCX rule·비교 보고서가 있으면 그 자료로 대체할 수 있습니다.

요청할 때 미확정 필드와 이미 확보한 파일 해시를 함께 전달한다. 전체 PDK·모든 코너·모든 셀의 재특성화 자료를 다시 받을 필요는 없다.

**F3 완료 조건:** 기준 숫자와 대상 형상·단위·조건이 연결되어 있어야 한다. 외부 파일이 도착했거나 calibration 로그가 있다는 이유만으로 완료하지 않는다.

## 5. M10-F4 — OpenRCX rule을 만들거나 채택하고 정확도를 비교한다

### 진행 순서

1. F2/F3의 근거로 OpenRCX용 rule을 생성하거나 근거가 제공된 NSPL rule을 채택한다. 예상 이름은 `followup/f4/nspl-typical.rules`다.
2. 보정에 사용한 형상을 다시 추출해 변환 중 단위·층·이름 오류가 없는지 확인한다.
3. **rule을 맞추는 데 쓰지 않은 별도 형상**에서도 기준 RC와 비교한다. 같은 보정 자료를 다시 맞춘 결과만으로 정확도를 판정하지 않는다.
4. 현재 설계가 쓰는 폭·간격·층·via·주변 배선 조건이 검증 범위에 드는지 확인한다. F1의 배선이 완료되면 실제 조건을 비교 범위에 반영한다.

비교할 값은 금속 선 저항, via 저항, ground C, coupling C다. 같은 층의 이웃 선, 위·아래 금속층, 필요한 교차·대각/밀도 조건도 구분한다. timing SPEF에서 PG net을 제외하더라도 주변 PG 도형이 계산에 미치는 영향은 처리 방식을 기록한다.

### 오차 기록과 판정

`followup/f4/rc-comparison.csv`에 다음과 같은 열을 둔다.

```text
corner, pattern_id, layer_or_via, width_um, spacing_um, length_um,
quantity, reference_value, openrcx_value, unit,
absolute_error, relative_error_percent, tolerance, result
```

quantity는 wire_R, via_R, ground_C, coupling_C 등을 뜻한다. 기준값이 0이 아니면 상대 오차를 `(OpenRCX값 - 기준값) / 기준값 × 100`으로 계산한다. 0 또는 매우 작은 기준값에는 절대 오차 기준도 필요하다.

허용 오차는 **기준 데이터의 정확도·solver 수렴과 timing 분석 용도에 근거해 비교 전에 기록**한다. 현재는 근거가 없으므로 이 문서에서 임의의 5%·10%를 합격선으로 정하지 않는다. 큰 오차가 난 형상의 원인을 보고하고, STA를 통과시키기 위해 RC를 조절하지 않는다.

예상 `followup/f4/qualification.json`에 rule 해시, 코너/index, 지원한 기하 범위, 기준 결과 해시, 오차 기준, 비교 결과·제외 항목을 묶는다. 이는 앞으로 만들 검증 기록의 예시이며 현재 자동 승인 기능은 아니다.

**F4 완료 조건:** 선택한 rule과 근거를 추적할 수 있고, 실제 설계의 사용 범위에서 정한 오차 기준을 충족한다. 다른 공정 rule의 이름 변경, -lef_rc 출력, 비어 있지 않은 SPEF는 이 조건을 대신하지 못한다.

## 6. M10-F5 — 실제 최종 netlist와 SPEF의 연결 누락을 검사한다

### 먼저 한 묶음으로 고정할 입력

F1에서 완성한 배선과 F4에서 검증한 rule을 같은 실행에 사용한다. 다음 파일의 이름·해시·생성 순서를 함께 기록한다.

| 파일 | 역할 |
| --- | --- |
| final.def | 실제 배선과 instance·핀·net 연결 |
| final.v | 그 배선 단계에서 확정한 논리 netlist |
| 사용한 LEF·Liberty·SDC | 물리 master, 셀 지연·pin C, 클록·입출력 조건 |
| 검증된 NSPL RC rule과 근거 | 공정·코너별 배선 RC 계산 |
| final.spef | 위 배선과 rule에서 생성한 RC |

**현재 이 최종 인계 묶음은 없다.** [cts.v](results/cts.v)는 CTS 뒤의 논리 연결이고 [partial-routed.def](results/partial-routed.def)는 미배선 결과다. 둘을 최종 파일로 이름만 바꾸지 않는다.

현재 19 instance·22 signal net·65 endpoint는 비교 출발점이다. endpoint는 instance/pin 또는 최상위 포트처럼 net이 연결되는 단자다. 수정 과정에서 버퍼·net이 합법적으로 늘어나면 새 개수·연결을 기록한다. 과거 개수에 억지로 맞추지 않는다.

### 추출·OpenSTA 실행과 검사

아래 Tcl은 **F1/F4 완료 후 사용할 추출 골격**이다. 현재 성공한 실행이 아니다. 예시의 model index 0이 RC typical이라는 것도 채택한 rule의 근거에서 확인해야 한다. 파일 존재 검사는 경로 오류만 잡으며 정확도를 승인하지 않는다.

```tcl
set rules_file /path/to/validated-nspl-typical.rules
foreach p [list $rules_file final.def] {
  if {![file exists $p]} { error "required validated input missing: $p" }
}
read_lef technology.lef
read_lef cells.lef
read_def final.def
define_process_corner -ext_model_index 0 RC_TYPICAL
extract_parasitics -ext_model_file $rules_file
write_spef final.spef
```

현재 [extract.tcl](extract.tcl)은 추정 LEF RC를 시험하는 스크립트다. 실제 경로를 구현할 때는 검증된 rule을 명시하도록 수정해야 한다. run.py 역시 추정 RC를 POST-STA 성공으로 반환하지 않도록 종료 2를 내는 진단용 실행기다. 자료가 생겼을 때 종료 코드만 0으로 바꾸는 대신 F1~F6의 판정 근거를 실제로 연결해야 한다.

독립 OpenSTA 분석은 final.v·final.spef·cells.lib·constraints.sdc와 이 실험의 [sta.tcl](sta.tcl)을 같은 분석 디렉터리에 준비한 뒤 다음 형태로 실행한다.

```bash
# 해당 분석 디렉터리에서 실행. 현재 이 최종 입력 묶음은 미확보 상태다.
M10_NETLIST=final.v M10_SPEF=final.spef \
  sta -no_init -exit sta.tcl > sta-final.log 2>&1

rg -n 'unannotated drivers|Warning (1648|1650)|M10_STA_FATAL|M10_STA_SCRIPT_COMPLETED' sta-final.log
```

확인할 질문은 다음과 같다.

- SPEF의 net·instance·pin이 **같은 실행의 최종 netlist**와 일치하는가? bus 이름·escape 문자·name map·alias도 처리했는가?
- clock·reset·tie·data 배선이 필요한 범위대로 포함되는가? PG의 timing RC 제외 범위와 주변 PG 도형의 계산 처리가 설명되는가?
- SPEF에 cell pin C가 포함되는가? Liberty에서도 같은 pin C를 더해 중복 계산하지 않는가? 셀 내부 지연과 배선 지연의 역할이 구분되는가?
- R/C 단위·코너가 맞는가? coupling C를 ground로 줄이거나 유지하는 방식은 무엇인가?
- OpenSTA의 unannotated drivers와 partially unannotated drivers가 모두 0인가? RC 그래프에서 실제 단자의 누락·분리가 없는가?

현재 [annotation.py](annotation.py)는 인위적인 ground-capacitance fixture로 시험했다. 실제 coupling SPEF·name map·alias까지 지원하는지는 실제 입력과 오류 사례로 추가 검증해야 한다. 검사기가 읽지 못하는 형식과 실제 설계의 오류를 구별한다.

SPEF 사본에서 clock net을 지우거나 instance 이름을 일부러 바꿔 실패하는지도 확인한다. 현재 fixture에서는 각각 **unannotated 1개**, **partial 1개**를 검출했다. 실제 입력 경로에서도 누락을 거부해야 한다. 종료 0과 M10_STA_SCRIPT_COMPLETED는 실행이 끝났다는 뜻이며 annotation·timing 합격을 뜻하지 않는다.

**F5 완료 조건:** 실제 배선 SPEF를 동일 최종 netlist에 인계하고 포함 범위를 설명하며, 누락/partial 0과 endpoint·RC 연결을 확인한다. 필요한 clock net을 제외한 채 coverage를 높여서는 안 된다.

## 7. M10-F6 — 실제 배선 RC로 CTS와 타이밍을 판정한다

### 어떤 숫자를 보는가

| 항목 | 뜻과 확인 방법 |
| --- | --- |
| latency | 기준 clock edge가 각 플립플롭 CLK까지 도착하는 지연. 버퍼와 배선 지연을 반영한다. |
| skew | 같은 기준 edge에 대한 sink들의 clock 지연 차이. rise끼리, fall끼리 비교한다. |
| slew/transition | 신호가 낮음↔높음으로 변하는 시간. 측정 임계치는 Liberty를 따른다. 전체 전달 지연과 다른 값이다. |
| capacitance | driver가 구동하는 부하 C. 배선 C와 cell pin C의 포함 범위를 확인한다. |
| fanout | 하나의 driver에 연결된 부하 핀 수. 실제 부하 C도 함께 검사한다. |
| setup/hold | 데이터를 받는 clock edge 전·후에 데이터가 안정되어야 하는 조건 |
| recovery/removal | 비동기 reset 등을 해제할 때 clock edge와 확보해야 하는 전·후 시간 조건 |
| pulse width | clock 등의 high/low 상태가 너무 짧지 않은지 확인하는 조건 |

설명용으로 같은 rising edge의 지연이 두 sink에서 2.10 ns와 2.25 ns라면 차이는 0.15 ns다. 이 값을 skew 기준과 비교한다. rising edge와 반 주기 뒤 falling edge의 절대 도착 시간을 빼서 skew라고 하지 않는다. 이 예시는 현재 측정값이 아니다.

### 유지할 제약과 추가로 정해야 할 조건

원 SDC의 period **20 ns**, max transition **2.2 ns**, max capacitance **1.2 pF**, max fanout **10**을 출발점으로 사용한다. setup/hold uncertainty는 **0.5/0.1 ns**다. 현재 clock/reset 입력 transition 0.1 ns는 실험 가정이므로 실제 설계 입력 조건의 근거도 남긴다.

**별도 skew 목표는 아직 정해져 있지 않다.** uncertainty는 여러 타이밍 여유를 표현할 수 있으므로 0.5 ns를 그대로 허용 skew로 해석하지 않는다. 목표 주기·clock 입력 jitter/여유와 구분해 skew 예산을 명시한 뒤 실제 RC 측정과 비교한다.

현재 DFFSRX1의 S는 1로 묶고 R은 rst_n에 연결한다. 원 RTL의 reset 동작을 유지하면서 **reset 해제를 clock과 어떤 관계로 가정하는지** 확인해야 한다. 별도 동기화가 필요한지는 회로·시스템 의도와 연결해 결정한다.

파생 SDC는 reset 전체 false path를 제외해 recovery/removal을 드러냈고 fixture에서 각 8 endpoint와 위반을 확인했다. 이 수치를 실제 물리 설계의 최종 타이밍으로 해석하지 않는다. 위반을 없애려고 reset false path를 다시 넣거나 원 RTL을 동기 reset으로 바꿔 같은 검증을 통과했다고 해서는 안 된다.

### 최종 보고서와 완료 조건

예상 `followup/f6/cts-timing-report.md`에 sink별 rise/fall latency·slew, skew, 부하 C/fanout, 적용 가능한 setup/hold·recovery/removal·pulse 결과를 남긴다. MET·VIOLATED·UNTESTED를 나누고 미검증 사유를 설명한다. S=1처럼 비활성인 제어의 적용 제외 근거와, 실제 동작하는 rst_n의 미검증을 구별한다.

**F6 완료 조건:** 검증된 최종 RC와 동일 netlist/SDC로 propagated clock을 분석하고 정한 CTS·timing 조건을 충족한다. 위반이나 적용 가능한 미검증이 남으면 M0-10을 완료로 바꾸지 않는다. 현재 [fixture-timing.json](results/annotation-probe/fixture-timing.json)은 이 판정에 사용할 물리 측정값이 아니다.

## 8. M2 담당자가 시작할 일과 실제 검증 완료 기준

B/C가 이관 작업에 착수할 때 첫 작업은 **F1의 실패 핀 하나를 원 LEF/GDS·via·주변 PG와 대조해 원인을 좁히는 것**이다. 병행해 F2의 원자료·단위·코너 대응표를 만든다. 기존 calibration 숫자를 해석할 수 있는지 확인한 다음 F3에서 필요한 외부 설명·기준 결과만 요청한다.

최종 확인 목록은 다음과 같다. 현재는 모두 미완료다.

- [ ] **F1:** 실제 clock·signal·tie·PG 배선과 연결 검증을 마쳤다.
- [ ] **F2:** 선택한 RC 코너의 원자료·단위·층·변환 근거를 정리했다.
- [ ] **F3:** 대상 형상과 조건을 추적할 수 있는 기준 RC를 준비했다.
- [ ] **F4:** 실제 설계의 사용 범위에서 rule의 정확도를 검증했다.
- [ ] **F5:** 동일 최종 netlist의 실제 SPEF에서 annotation 누락·partial이 없음을 확인했다.
- [ ] **F6:** 실제 RC로 CTS·timing을 분석하고 필요한 조건을 충족했다.

원본 OA reader 전체 확보, 모든 셀/코너 재특성화, 전체 PDK 재요청, SDF 병행 생성은 기본 선행 조건이 아니다. 현재 선택은 **배선 SPEF**이며 셀별 transistor PEX를 배선 RC로 대신하지 않는다. 시스템 설치의 최종 lock은 M1-01, 기본 backend 선택은 M0-11/12에서 실제 근거를 보고 이어간다.
