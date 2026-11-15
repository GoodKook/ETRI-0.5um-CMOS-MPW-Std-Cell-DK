# 순차 셀 기능 참조와 미확정 제어 동작의 처리

- 결정일: 2026-11-15 (Asia/Seoul).
- 대상: [ROADMAP M0-08](../ROADMAP.md#m0-공통-기반과-초기-기술-선택). 상태는 그 작업표에서만 관리한다.
- 근거: [실험·재실행·셀별 대조](../experiments/M0-08-sequential/README.md), [실제 결과](../experiments/M0-08-sequential/results/results.json), [원본·도구·산출물 해시](../experiments/M0-08-sequential/results/run.json), [감사·기계 판독 제한](../experiments/M0-08-sequential/validation/checks.json).
- 성격: 확인된 기능 모델 결함의 분리 수정과 **현재 단일 상승 에지 동기식 코어의 기능 검증 기준**을 채택한다. 전체 순차 셀·타이밍 qualification은 주장하지 않으며 실제 셀 동작의 공인 정정이 아니다.
- 자료 보완: 2026-11-15. [직접 확보한 문헌·배포본 조사·최소 판독 시험](../experiments/M0-08-sequential/materials/README.md)을 추가했다. 기존 회로 실험과 파생 모델은 변경하지 않았다.
- 필요성 재검토: 2026-11-15. 사용자가 현재 회로가 간단한 synchronous sequential circuit임을 재확인했다. [실제 합성·기능 매핑과 native `12T_std` 재조사](../experiments/M0-08-sequential/scope-review/README.md)를 근거로, **M08-D1~D5 전체 확보를 현재 M0-08 완료의 선행 조건으로 두었던 판단을 수정한다.** 기존 실패와 자료 요청 목록은 보존하고 조건부 후속 조사로 관리한다.

## 채택한 처리

원본 PDK를 수정하거나 기존 공유 라이브러리에 덮어쓰지 않는다. M0-07의 322개 원본 해시를 실행 전후·감사 시 확인하고, source hash가 달라지면 이전 근거를 재사용하지 않는다. 별도의 [직접 작성한 기능 참조 4셀](../experiments/M0-08-sequential/derived/nspl12t_seq_functional.v)을 후보로 보존하고 원본과 같은 module 이름이 중복되지 않게 선택한다. [patch-plan.json](../experiments/M0-08-sequential/results/patch-plan.json)에 원본 전체·모듈별, replacement, 로컬 조립본 해시를 연결한다. 원본 조합 셀을 포함한 조립본은 배포물이 아닌 로컬 재생성 실험 산출물로 둔다.

상승/하강 에지는 Liberty의 `clocked_on`, data capture는 `next_state`, 래치 enable은 `enable/data_in`, 비동기 제어는 `clear/preset/clear_preset_var1/2`를 기준으로 한다. 제공 CDL의 구조 해석과 CDL·PEX 시뮬레이션으로 이를 대조한다. POS/NEG의 반대 에지 선샘플은 제거하고, LATCHX1의 canonical enable 포트를 `CLK`로 맞춘다. SR은 두 제어의 상승·하강을 모두 처리하여 남은 활성 제어에 반응하고 단독 release를 data capture로 오인하지 않게 한다.

파생물은 **zero-delay binary 기능 참조**이며 합성용 RTL, 지연/전력 모델, characterized cell view의 대체물이 아니다. 단독 기능 참조에서의 2,799개 일치는 이 범위에만 적용한다. 원본 세 FF의 불일치는 같은 TB의 735개 관측에서 남는다. 래치 `.CLK` compile 실패도 별도로 보존하고, `.G` adapter는 기능 대조의 원인 분리에만 사용한다. TB의 입력을 반대 에지에만 맞춰 원본을 통과시키지 않는다.

DFFSRX1의 R=S=0인 동안 Q=0은 Liberty와 두 회로 view가 뒷받침한다. R만 해제하여 S=0이 남는 경우 Q=1이어야 하며 원본의 release sensitivity 누락을 수정한다. 그러나 **00→11 동시 해제는 회로와 기능 참조가 다르고**, release 간격이 작으면 CDL/PEX도 서로 다르다. 기능 참조의 hold 값을 실제 셀의 공인 동작으로 채택하지 않는다. 이 차이를 Q=1로 패치해 다른 물리 동작을 확정하지도 않는다.

## 적용 범위와 검증 기준

첫 동기식 코어에서 사용하는 기능 모델은 상승 에지 DFFPOSX1과 **S를 1로 고정한 reset-only DFFSRX1**이다. [프로파일](../experiments/M0-08-sequential/scope-review/profile.json)과 [실제 매핑 검사](../experiments/M0-08-sequential/scope-review/check_scope.py)로 허용 셀·단일 clock·제어 상수 연결을 확인한다. 후속 M0-09는 이 제한, 정확한 모델 식별과 별도 gate 기능검증을 이어받는다. STA·물리 흐름·실제 reset release 안전성은 후속 검증 대상이다. DFFNEGX1과 LATCHX1을 조사했다는 이유로 [결정 001](001-initial-support-environment.md)의 최초 지원 범위를 확대하지 않는다.

파생 모델 자체를 바꾸면 기존 셀별 시험·64개 제어 전이·7개 잘못된 모델 검출·원본 보존·재현 검증으로 돌아간다. 개별 코어에서는 원본/파생 해시·셀/핀 집합, 실제 순차 셀·clock·제어 연결, 에지 사이 D 변화와 reset을 포함하는 RTL/gate 기능 비교를 확인한다. 새로운 불일치를 발견하면 기대값을 바꿔 통과시키지 말고 실패를 기록한다. **동시 해제와 timing collision의 기존 실패를 감사가 확인했다는 사실은 그 동작의 통과가 아니다.**

실제 기준 회로는 Yosys에서 **DFFSRX1 8개, 모두 S=1**로 매핑됐고, 별도의 동기 reset 예제는 **DFFPOSX1 8개와 AND2X1 8개**로 매핑됐다. RTL 및 기존 파생 모델은 각각 650/649개 출력 벡터 비교를 통과했다. 원본 모델은 같은 TB에서 각각 602/634개 불일치를 보였다. 동적 S·S=0·다른 clock·금지 순차 셀·미매핑 셀·잘못된 tie의 7개 변형은 검사기가 거부했다. **사용하지 않는 이중 비동기 제어를 상수 연결로 배제한 근거**가 있으며 TB에서 해당 입력을 조용히 생략한 것에만 의존하지 않는다.

현재 제공 Liberty로 수행하는 합성/STA에 원본 characterization deck이나 ngspice MOS 대응은 필수 입력이 아니다. 전압·온도·단위·arc/핀과 설계 제약은 확인해야 한다. 특히 원본 기준 RTL은 비동기 reset이므로 **R↔CLK recovery/removal 검사**를 후속 STA에서 유지한다. 물리 흐름의 GDS/CDL 대응·실제 LVS·최종 RC 검증도 후속 단계에서 수행한다. N/FC 경고와 전체 셀 동작의 미확정 항목은 보존하며 그 관측에서 허용 skew·최대 주파수·실리콘 보장을 도출하지 않는다.

## 미결정과 해제에 필요한 자료

**아래는 현재 전부 요청해야 하는 목록이 아니다.** 앞선 요청에는 일반 디지털 코어 사용과 라이브러리 전체 재특성화에 필요한 증거가 섞여 있었다. 현재 목표는 [결정 001](001-initial-support-environment.md)의 단일 상승 에지 코어이며, 외부 자료 다섯 묶음의 일괄 확보를 기다릴 필요가 없다. 아래 상세 항목의 ‘해제 조건’은 **그 확장 검증을 수행할 때의 조건**이다.

추가 요청이 필요해지면 **NSPL 260820 디지털 12T·현재 TT·5 V·25 °C의 실제 사용 셀/문제 arc**로 범위를 좁힌다. 파일명은 받을 산출물의 예시이며 현재 존재한다는 뜻이 아니다. 기준 원본/파생 해시는 [patch-plan.json](../experiments/M0-08-sequential/results/patch-plan.json), PEX·MOS 등은 [run.json](../experiments/M0-08-sequential/results/run.json)에 있다.

| 요청 ID | 현재 추가 자료가 필수인가 | 지금 사용할 근거·수행할 검사 | 추가 요청이 필요한 시점 |
| --- | --- | --- | --- |
| M08-D1 제어 동작 명세 | **현재 불필요** | S=1을 실제 netlist에서 검사해 동시 set/reset을 배제. 정상 reset-only 동작의 Liberty/기능 모델·기존 회로 시험 확보 | 이중 비동기 제어·동시 release 등 현재 미지원 동작을 실제 사용/지원할 때 |
| M08-D2 characterization 원본 | **현재 불필요** | 제공 TT Liberty의 출처·해시·핀/arc·단위·코너를 고정하여 합성/STA에 사용 | Liberty 오류 조사·새 셀/코너 생성·재특성화가 필요할 때 |
| M08-D3 제약의 동작 의미 | **기존 Liberty를 사용한 검사 필요. 추가 원본 자료는 조건부** | setup/hold 및 비동기 reset의 recovery/removal은 설계별 검사. S 상수인 회로의 R↔S non_seq 문제와 구분 | 실제 유효 arc의 의미/결과가 불명확하거나 사용 동작과 충돌할 때 |
| M08-D4 오픈소스 MOS 적합성 | **현재 불필요** | gate 기능 검증·Liberty 기반 STA에는 MOS 카드를 사용하지 않음. N/FC 불확실성은 과거 회로 관측의 한계로 보존 | 소자/셀의 정량적 SPICE/PEX 검증·재특성화가 필요할 때 |
| M08-D5 view 대응 | **제공자 보고서는 기능 개발 시작의 필수 자료 아님** | 제공 view 식별과 핀/전원 대응 유지. 실제 물리 LVS·추출 검증은 후속 필수 작업 | 후속 검증을 현재 자료로 실행할 수 없거나 export/연결 불일치가 확인돼 해당 근거가 필요할 때 |

`12T_std` 재조사에서 순차 4셀의 원 OpenAccess schematic/symbol/layout과 thumbnail을 확인했고 native 파일 385개의 해시를 보존했다. [조사 범위](../experiments/M0-08-sequential/scope-review/results/native-views.json)를 따른다. 바이너리 OA의 전체 연결은 해석하지 않았고 thumbnail은 해상도가 낮아 LVS/정확한 export 대응을 입증하지 못한다. 그러나 **원 설계 view가 배포본에 이미 있다**는 점은 확인했으며, 디지털 흐름에 직접 쓸 Liberty·CDL·LEF·GDS export도 확보돼 있다. 필요한 특정 연결이 쟁점이 될 때 원본을 활용한다.

### 이미 구했으므로 다시 요청할 필요가 없는 정보

[추가 자료 목록과 해시](../experiments/M0-08-sequential/materials/acquisition.json)에 **공개 원본 3개와 로컬 입력 76개**를 연결했다.

- [ngspice 47 공식 매뉴얼](https://ngspice.sourceforge.io/docs/ngspice-47-manual.pdf), UC Berkeley 공식 배포의 [BSIM3 3.2](https://www.bsim.berkeley.edu/BSIM4/BSIM3/ftpv32.zip)·[3.2.4](https://www.bsim.berkeley.edu/BSIM4/BSIM3/ftpv324.zip)를 내려받아 보존했다. 3.2 매뉴얼의 원본 PostScript 15개는 원본을 보존한 채 [210쪽 PDF](../experiments/M0-08-sequential/materials/downloads/bsim32-manual-derived.pdf)로 변환했다. 3.2.4의 noise 수정 문헌은 동시 제어 동작이나 VERSION 변경을 승인하는 자료가 아니다. 공식 배포 목록은 [ngspice](https://ngspice.sourceforge.io/docs.html), [Berkeley](https://bsim.berkeley.edu/models/bsim3/)다.
- Liberty header의 도구는 **FineSim Q-2020.03-SP2-1**, **SiliconSmart P-2019.06-5**다. header 생성일은 2026-06-04/07-02/07-09가 섞여 있고 library 속성은 `date=2026-07-20`, `revision 1.0`이다. 여러 header와 배포명 `260820`만으로 최종 characterization 입력의 revision을 증명할 수는 없다.
- Liberty의 지연 입력/출력 기준은 **50%**, slew 기준은 **20–80%**, 단위는 **ns/pF**, nominal은 **TT·5 V·25 °C**다. 이 값과 순차 4셀의 표 전체를 [liberty-tables.json](../experiments/M0-08-sequential/materials/liberty-tables.json)에 추출했다. 기존 실험의 0–100% 선형 ramp 1 ns는 20–80%로는 0.6 ns이며, 정착된 Q 판별용 1/4 V와 delay 측정용 2.5 V를 혼동하지 않는다.
- `Model_Parameter/05cmos_mosfet_corner.lib/.scs`의 **TT/SS/FF/SF/FS**, `05cmos_model_241213.scs`도 식별·해시를 확보했다. [파일/section 목록](../experiments/M0-08-sequential/materials/process-model-files.json)을 따른다. 이 MOS corner들이 있다는 사실은 해당 corner의 셀 Liberty가 있거나 현재 TT characterization과 동일한 카드를 썼다는 증거가 아니다. 기존 실험의 MOS 선택은 유지했다.
- 기존 source archive와 대조한 ngspice BSIM3v32 registry에는 `nj`, `acm`, `version`이 있고 `n`, `fc`는 없다. 원본 MOS를 그대로 읽는 별도 시험에서 **기본/hsa 모드 모두 N/FC 무시 경고와 NJ=1/1**을 확인했다. [소스 근거](../experiments/M0-08-sequential/materials/ngspice-source.json), [실제 판독 결과](../experiments/M0-08-sequential/materials/mos-reader.json)를 확보했다. HSPICE 호환 모드를 켜면 해결된다는 가정은 사용할 수 없다.

### M08-D1 — DFFSRX1의 제어·해제 상태표

**요청 산출물:** `DFFSRX1_state_release.csv`와 이를 승인한 library revision/errata 문서 또는 제공자 기술 답변. 핀 active level만 적힌 symbol이나 셀 이름 목록은 이 자료를 대신하지 못한다.

우선 CLK=0/1, D=0/1 각각에서 다음을 확인해야 한다.

1. R=S=0의 동시 활성 상태 자체가 허용되는지, Q=0 보장과 내부 상태 IQ/IQN의 의미는 무엇인지.
2. **00→11 동시 해제**가 허용·금지·조건부 중 무엇인지. 허용된다면 Q는 reset 유지/set/미정 중 무엇이며 어느 관측 시간·slew·skew 범위에서 보장되는지. 금지라면 이를 명시적으로 금지한 조항과 재초기화 방법이 무엇인지.
3. **00→10(R만 해제)**은 S가 활성으로 남아 Q=1이 되는지, **00→01(S만 해제)**은 reset Q=0을 유지하는지. 이어서 마지막 제어를 해제할 때 클록 없이 D를 캡처하는지 또는 상태를 유지하는지.
4. 제어 assertion/release와 CLK의 유효 에지가 겹치는 경우의 금지 구간·우선순위와, 미정 상태에서 정상 캡처로 복귀하는 조건.

기존 입력과 관측을 그대로 붙인 [64개 요청 사례 CSV](../experiments/M0-08-sequential/materials/request-state-cases.csv)를 준비했다. 제공자는 이를 별도 파일로 복사하여 `supplier_allowed`(allowed/forbidden/conditional), `supplier_Q`(0/1/hold/unknown), `supplier_allowed_skew_R50_minus_S50_ns`, `supplier_conditions`, `supplier_revision_ref`를 채우면 된다. **skew는 R/S 각 핀의 50% crossing 차이**로 정의한다. 동일한 1 ns ramp를 쓴 현재 실험에서는 시작 시간 차이와 같지만 다른 slew에서는 그렇지 않다.

**대조할 기존 근거:** 일반 회로 입력의 id **63/64/183/184**는 CLK=0 동시 해제 뒤 Q가 이상적 참조 0, 두 회로 1인 관측이다. 이 중 뒤따르는 상태 유지 관측도 있으므로 독립 결함 4개라고 세지 않는다. 추가로 [release-skew 표](../experiments/M0-08-sequential/results/skew-cdl-checks.csv)와 [PEX 표](../experiments/M0-08-sequential/results/skew-pex-checks.csv)의 경계 차이를 첨부한다.

**해제 조건:** 금지 동작으로 확인되면 금지 조건·미정 후 재초기화·검사 방법을 라이브러리 사용 계약에 넣고 기존 진단은 유지한다. 보장된 동작으로 확인되면 승인된 정정 Verilog/Liberty/회로 export와 해당 해시로 재실행한다. 제공자 답변 없이 Q=0/1 중 하나를 실리콘 동작으로 고르지 않는다.

### M08-D2 — 재현 가능한 characterization 최소 묶음

**요청 산출물:** `characterization_manifest.json`, 순차 4셀의 실제 입력 deck/config, 사용 모델·netlist의 해시 목록, DFFSRX1의 대표 파형 CSV와 실행/측정 로그. 제공자 작업 디렉터리 전체를 요구하는 대신 다음 항목을 갖춘 자급 가능한 export를 받는다.

- 배포/revision·셀 목록·최종 산출 Liberty SHA-256, 실제 **CDL 또는 PEX 선택**과 그 파일 해시. 각 셀의 SPICE port 순서와 VDD/VSS·bulk 연결.
- 실제 `.lib` corner/section과 모든 `.include` 파일을 해석한 목록·SHA-256. 디렉터리명이나 `typical`이라는 문자열만으로 현재 MOS 카드와 같다고 판단하지 않음.
- FineSim의 전체 실행 명령·옵션·모델 dialect, SiliconSmart config/측정 script·옵션, simulation TEMP/TNOM·전원, simulator 초기화·수렴·integration·timestep 설정.
- input waveform의 형태·slew 정의·source impedance, pin별 고정 값, 출력 C 및 pin/parasitic C 포함 여부. `.ic/.nodeset`, reset/set 선행 순서와 master/slave 초기 상태 설정.
- 실제 측정식과 기준 crossing, 출력이 미정/메타안정으로 남을 때의 판정, setup/hold·recovery/removal·non_seq 탐색의 종료 기준과 수치 허용 오차, LUT 생성/보간 방법.

첫 교차 대조용으로 **기존 표의 실제 grid point 하나**에 대한 CLK→Q, R→Q, S→Q와 제약 경계의 원본/측정 로그를 요청한다. 1 ns ramp·0.05 pF인 기존 기능 실험을 characterization 조건과 같다고 소급해서 쓰지 않는다.

**해제 조건:** manifest의 원본 해시·조건과 자료가 맞고, 그 조건을 오픈소스 실험으로 이식해 일치 범위/차이를 기록해야 한다. 도구명·버전·측정 threshold는 이미 확보했으므로 반복 질문 대신 **실제 사용 입력과 해시·옵션·상태 설정**을 우선 받는다.

### M08-D3 — 부호가 있는 R/S 제약과 허용 해제 영역

**이미 확보:** [DFFSRX1 8개 제약 요약](../experiments/M0-08-sequential/materials/dffsr-constraints.csv)과 전체 5×5 값. 예를 들어 R←S non_seq hold는 +0.8386~+0.9953 ns, setup은 −0.5591~−0.4709 ns이며 반대 방향 표에는 전치 관계가 있다. 실제 `index_1/index_2`와 `constrained_pin_transition/related_pin_transition`을 함께 보존했다. `when` 속성은 이 8개 arc에 없다.

**요청 산출물:** `DFFSRX1_constraint_conditions.csv` 또는 같은 내용을 가진 characterization 설명/측정 script. 각 arc에 대해 `constrained_pin`, `related_pin`, 두 전이의 방향, CLK 고정 레벨, 나머지 핀 값, 이전 Q, 측정 threshold, setup/hold 부호 규약, 보간 방법과 **정상 최종 상태를 판정하는 기준**이 필요하다. 관련 제약을 SDC의 false path나 임의 margin으로 없애지 않는다.

특히 `R/S 모두 0에서 출발하는 해제`가 이 arc의 측정 전제였는지, 음수 setup/hold와 양수 제약을 종합할 때 `R50−S50`의 어느 영역이 어떤 Q를 보장하는지 확인한다. **표의 min/max만으로 0 ns 또는 ±0.5 ns를 허용/금지라고 확정하지 않는다.** 단일 시간차만으로 두 방향의 서로 다른 제약과 hidden state의 의미를 대체할 수 없다.

**해제 조건:** 대표 grid point에서의 상태·자극·경계 판정이 명확해지고 그 조건으로 유효/무효 자극을 나눈 재검증이 필요하다. non_seq 자료 확보와 설계별 recovery/removal 검사 완료는 별개다.

### M08-D4 — N/FC 의미와 검증된 ngspice 대응

**요청 산출물:** `mos_simulator_mapping.md`, 필요 시 `nspl05_tt_ngspice.lib` 같은 승인 export/adapter, 원본 simulator와 대응 모델을 비교한 소자·셀 기준 결과 및 허용 오차 정의. 새 파일은 원본과 구분되는 이름·revision·해시로 관리한다.

먼저 `05cmos_model_260210.lib`의 nmos4 **60/69행**, pmos4 **107/116행**에 있는 N/FC가 FineSim에서 실제로 인식되는지, 각각 어떤 식/단위/default/alias에 연결되는지 답변이 필요하다. nMOS N=1.013, pMOS N=0.999, FC=0.999이고 ngspice의 현재 NJ는 둘 다 1이다. Berkeley 일반 문헌의 NJ 설명만으로 **N→NJ 변경을 승인하지 않는다.** FC를 삭제해도 되는지 또는 다른 식/파라미터로 대응해야 하는지도 명시적으로 받아야 한다.

카드의 `LEVEL=49 VERSION=3.2`, `ACM=2`, RD/RS·LDIF/HDIF와 effective geometry 계산을 같은 비교 범위에 넣는다. 호환 모드·BSIM 하위 버전 변경이 영향을 줄 수 있으므로 generic 매뉴얼의 최신 버전 권고만 보고 PDK VERSION을 바꾸지 않는다. ngspice용 PDK export가 이미 있다면 배포본·공인 simulator 버전과 회귀 결과를 먼저 받는다.

대조 소자는 순차 CDL에서 사용하는 **L=0.5 µm, W=3/6/9 µm**와 해당 m·bulk 연결을 포함한다. 실제 사용 전압/바이어스 범위의 IDS–VGS/IDS–VDS 및 접합/단자 charge 또는 capacitance, 대표 transient의 기준 데이터를 요청한다. 원래와 대응 simulator의 설정·수치 허용 오차는 제공자가 명시해야 한다. 이 입력을 맞춘 뒤 순차 4셀·R/S release-skew 회귀로 확장한다.

**해제 조건:** 무시되는 항목이 왜 무해한지 또는 어떤 대응이 유효한지 근거가 있고, 그 대응과 오차 기준을 소자·셀 시험으로 확인해야 한다. 현재 확보한 문헌/소스/판독 로그는 경고의 원인을 좁힌 자료이며 MOS의 물리적 적합성 검증 완료가 아니다.

### M08-D5 — view revision·LVS·PEX 연결

**이미 확보:** 순차 4셀의 `schematic/sch.oa`, `symbol/symbol.oa`, `layout/layout.oa`와 thumbnail, 배포 CDL·GDS·셀 PEX, Calibre LVS/PEX rule/header의 경로·해시. PEX header에는 **2026-05-29, Calibre xRC v2023.2_16.9**가 있다. 그러나 배포본의 `TOPCELL` 예시 header는 실제 해당 셀의 검증 결과가 아니다. 조사한 report 확장자의 10,209개 파일은 모두 Assura/QRC 자료였고, 이를 셀 LVS 보고서로 쓰지 않았다. [검색 범위와 native view 목록](../experiments/M0-08-sequential/materials/pdk-search.json)을 따른다.

**요청 산출물:** `view_manifest.csv`, 4셀의 당시 `lvs.report`/요약·runset, `pex.runset`·추출 로그·선택 rule의 해시. 보고서에는 최소한 다음이 있어야 한다.

- cell/revision별 schematic→CDL export, layout→GDS stream, GDS→PEX의 실제 대응과 입력·출력 SHA-256. 파일명 날짜나 mtime만으로 동일성을 확정하지 않음.
- LVS의 top cell, layout/source 이름·핀 순서, 전원/접지·bulk 처리, device model과 W/L/m·단위, device/net 수·일치 결과. blackbox/ignore/waiver가 있으면 대상과 이유.
- PEX의 공정/RC corner·온도·rule revision, coupled/ground C·R의 포함 범위, reduction/filter/threshold·bulk/substrate 처리와 각 출력 단위. 실제 추출한 top·port 순서와 생성 로그.
- native OA를 직접 읽기 어렵다면 **제공자가 승인한 ASCII schematic/SPICE export**와 식별/동등성 근거. 현재 배포 CDL이 그 export라면 원 schematic/revision과 해당 CDL 해시의 대응 확인으로 충분하며 중복 export를 요구하지 않는다. thumbnail만으로 회로를 확정하지 않음.

**해제 조건:** 현재 배포 view와 관계가 확인되는 자료로 연결·핀·전원·소자/기생성분 범위를 대조해야 한다. 다른 셀 세대의 LVS PASS나 동일 모델을 사용한 두 netlist의 기능 일치는 이 근거가 아니다.

### 자료 입수 후 처리 순서

현재는 검증한 파생 기능 모델과 제한 프로파일로 M0-09를 진행하고, 후속 합성 결과마다 허용 셀/clock/S=1 연결과 RTL/gate 기능을 확인한다. clock·I/O·reset 가정을 설정에 반영하고 PRE/POST-STA, CTS/RC, 실제 물리 검증을 각 단계에서 수행한다. 모든 M08-D 자료의 입수를 선행 조건으로 삼지 않는다.

추가 조사 조건이 발생하면 그 항목의 실제 입력·failure와 원본/파생 해시를 보존하고 **새 결과 디렉터리**에서 필요한 기준 자극을 재실행한다. SPICE 결과를 정량적으로 사용하려면 M08-D2/D4의 실제 모델·측정 조건이 필요하고, 이중 제어의 보장 동작을 확장하려면 M08-D1/D3의 해당 조건을 확인한다. 물리 연결이 쟁점이면 M08-D5를 우선한다. 실패를 TB 시점 변경이나 예외 추가로 없애지 않는다.

공개 검색에서 확보하지 못한 특정 revision의 전체 명세·deck·보고서가 있다는 기록은 유지한다. [검색 기록](../experiments/M0-08-sequential/materials/web-search.json)은 공개 자료가 존재하지 않는다는 증명이 아니다. **현재 범위에 대한 M0-08 모델 처리·검증 기준은 완료하고 전체 라이브러리 재검증은 주장하지 않는다.** 다중 PVT signoff·실제 실리콘 측정도 확인한 결과에 포함되지 않는다.
