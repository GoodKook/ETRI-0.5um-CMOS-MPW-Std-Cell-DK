# M0-08 순차 셀 기능 모델과 회로 대조

조사·실행일은 2026-11-15 (Asia/Seoul)이다. [PLAN 부록 B](../../PLAN.md#부록-b-dffposx1-기능-모델-불일치-재현)와 [M0-07 inventory](../M0-07-pdk-inventory/README.md)에서 이어서 새 NSPL 260820 디지털 12T의 **순차 셀 4개 전부**를 검사했다. 작업 상태는 [ROADMAP M0-08](../../ROADMAP.md#m0-공통-기반과-초기-기술-선택), 처리 정책·해제 조건은 [결정 002](../../decisions/002-sequential-functional-models.md)에서 관리한다.

원본의 세 DFF에는 Liberty와 다른 샘플링 동작이 있고, LATCHX1에는 포트 이름 차이가 있다. 이를 분리한 **파생 기능 참조 모델**을 작성하고 자동 검증했다. 한편 DFFSRX1의 동시 제어 해제는 이상적인 기능 참조와 제공 회로 시뮬레이션이 다르며, 해제 간격이 작으면 CDL과 PEX도 다른 결과를 보인다. 이 결과를 남겼으므로 **전체 순차 동작·타이밍 검증을 통과한 모델로 사용할 수 없다.** 실제 실리콘·측정 자료를 확인한 작업이 아니다.

2026-11-15의 [현재 동기식 코어 범위 재검토](scope-review/README.md)에서는 DFFPOSX1과 S=1 reset-only DFFSRX1의 실제 매핑·RTL/gate 비교·금지 연결 거부를 확인했다. **현재 범위의 모델 처리·검증 기준은 확보했으며 공급자 자료 5묶음 전체를 개발 선행 조건으로 기다리지 않는다.** 이 문서와 기존 JSON의 전체 셀 조사·미해결 실패는 보존하고, 현재 프로파일 판정은 `scope-review/`에서 연결한다.

## 입력과 셀별 대조

이하 `PDK_DIGITAL`은 외부 `NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/`이다. `LIB/*_tt.lib`, `VERILOG/*_std.v`, `CDL/*_std.cdl`, 순차 셀별 `PEX/*.pex.netlist`와 같은 배포 묶음의 `Model_Parameter/05cmos_model_260210.lib`를 읽었다. 전체 순차 셀 집합을 Liberty에서 다시 확인하여 빠진 셀이 있으면 중단한다. 바이너리 OA schematic/layout, DB/NDM의 내부 회로와 GDS에서 추출한 회로는 이번에 읽거나 LVS하지 않았다.

Liberty 속성의 의미는 저장소에 이미 제공된 [Liberty Reference Manual 2007.03](../../../Tutorials/_References_/liberty07_03.pdf)의 인쇄 쪽 106~110(ff), 123~125(latch)를 대조했다. 특히 `clear_preset_var1=L`, `var2=H`는 두 제어가 활성일 때 첫 상태 변수 0, 두 번째 1을 뜻한다. 이름만 보고 reset 우선으로 추정하지 않았다. 아래 표의 줄 번호는 원본에 대한 것이며 [evidence.json](results/evidence.json)에 핀·기능 속성·타이밍 arc·CDL/PEX 포트 순서를 함께 기록했다.

| 셀 | Liberty 및 타이밍 선언 | 제공 Verilog | 확인한 CDL 구조와 회로 시뮬레이션 |
| --- | --- | --- | --- |
| DFFPOSX1 | cell 2425행, `clocked_on=CLK`, `next_state=D`, Q=IQ. setup/hold rising, CLK→Q rising_edge | 207행. negedge에서 IQ에 D 저장, posedge에서 Q에 IQ 출력. 상승 에지 직전 D와 다를 수 있음 | CDL 134행. CLK=0에서 master의 net148≈!D, net161≈D, CLK=1에서 slave로 전달하는 구조로 해석. CDL/PEX의 충분히 떨어진 에지 시험은 상승 에지 기능 참조와 일치 |
| DFFNEGX1 | cell 2183행, `clocked_on=!CLK`, `next_state=D`, setup/hold falling, CLK→Q falling_edge | 216행. posedge에 IQ 저장 후 negedge에 출력 | CDL 108행. CLK=1에서 master net28≈!D, net52≈D, CLK=0에서 slave 전달. CDL/PEX의 해당 시험은 하강 에지 기능 참조와 일치 |
| LATCHX1 | cell 4609행, `enable=CLK`, `data_in=D`. D→Q combinational, 열리는 CLK 상승 arc, 닫히는 CLK 하강 setup/hold | 200행. `G=1` 동안 D를 따르는 동작은 맞지만 포트가 `G`임 | CDL 270행. CLK=1에서 입력 경로 MM5/MM4, CLK=0에서 feedback MM14/MM15가 켜지는 구조. 두 view에서 high 투명·low 유지 관측 |
| DFFSRX1 | cell 2667행. 상승 에지, `clear=!R`, `preset=!S`, 동시 활성 IQ=0/IQN=1. recovery/removal과 R↔S non_seq 제약도 존재 | 225행. 반대 에지 선샘플, R/S의 하강 이벤트만 관측. 둘 다 0에서 R만 올려 S=0을 유지해도 set되지 않음 | CDL 160행. net141에 R로 켜지는 PMOS MM14와 Q 출력 인버터가 있어 R=0이면 Q=0. 기본 에지·단독 제어·동시 활성은 일치하나 **동시 해제는 불일치** |

회로 구조 설명은 텍스트 netlist와 이 실험에서의 추론이다. CDL과 PEX가 같은 레이아웃·schematic revision임을 LVS로 증명한 것은 아니다. PEX의 전원·신호 포트 순서는 CDL과 다르므로 이름을 읽어 연결했다. 예를 들어 DFFSRX1은 CDL `D CLK R S Q VDD VSS`, PEX `CLK D S R VDD VSS Q`다. 위치를 그대로 복사하지 않았다.

원본 DFFSRX1의 `else if (!S && !R)` 분기는 앞의 `if (!R)`에 가려진다. IQ를 blocking으로 쓰는 비동기 제어 블록과 Q가 IQ를 읽는 별도 블록에는 이벤트 실행 순서 의존 가능성도 있다. 이번에 자동 판정으로 확정한 문제는 **반대 에지 선샘플과 제어 해제 이벤트 누락**이다. 잠재적인 race를 실리콘 동작으로 해석하지 않는다.

## 자동 판정과 실제 결과

[run.py](run.py)는 동일한 입력열·기대값으로 원본과 파생 모델을 검사한다. 701개 관측 시점에 각 셀 출력을 비교하고, 초기 상태가 정해지지 않은 5개 비교만 생략하여 총 **2,799개 판정**을 한다. 초기 상태를 강제로 0으로 만들지 않는다. 입력은 40 ns마다 적용하고 20 ns 뒤 NBA 처리까지 끝난 출력을 case inequality로 비교한다. 일반 시험에서는 클록과 D/R/S를 같은 시점에 바꾸면 생성 단계에서 오류로 거부한다. **D는 두 클록 에지 사이에서 여러 번 바뀐다.**

검사에는 양쪽 에지 캡처·비활성 에지 유지, 래치 열린 상태 추종·닫힌 상태 유지, 비동기 reset/set의 두 클록 레벨에서의 assertion/release, 제어 유지 중 클록·D 변화, 이전 Q=0/1과 CLK=0/1 각각에서 R/S 4상태 사이의 16전이(총 64조합), seed=8008의 추가 입력열이 포함된다. 기대값은 읽어서 고정 확인한 Liberty 계약의 독립 상태 기계로 계산한다. 주요 관측값은 검증기에서 별도의 명시값으로도 확인한다.

| 실행 대상 | 판정 결과 | 해석 |
| --- | --- | --- |
| 원본, canonical `.CLK` 래치 연결 | compile 실패 | `CLK`가 모듈 포트가 아님을 실제 검출. [원문 로그](results/vendor-canonical-compile.log) |
| 원본, 래치만 TB에서 `.G`로 명시 연결 | 2,799개 중 **735개 불일치**: POS 77, NEG 583, SR 75, latch 0 | 기능 검사를 위해 포트 차이만 분리했다. 원본을 패치하거나 시점을 바꾸지 않았다. [로그](results/vendor-adapted-simulate.log) |
| 파생 4셀을 원본의 해당 모듈 대신 조립 | **2,799/2,799 일치** | 선언된 이상적인 binary 기능 참조와의 일치. [로그](results/derived-simulate.log). 회로·타이밍 통과 아님 |
| 의도적으로 잘못 만든 모델 7종 | 모두 nonzero 종료·불일치 검출 | 선샘플 77, NEG 에지 반전 332, latch enable 반전 341, reset 극성 반전 536, set 우선 56, 제어 해제 이벤트 누락 8, 해제 시 D 오캡처 58개. 같은 TB가 결함을 감지함 |
| 제공 CDL + 제공 MOS 모델 | 2,799개 중 **4개 불일치 유지** | 모두 DFFSRX1 동시 해제와 그 뒤 상태. [전체 관측](results/spice-cdl-checks.csv) |
| 제공 PEX + 같은 MOS 모델 | 2,799개 중 **같은 4개 불일치 유지** | [전체 관측](results/spice-pex-checks.csv). 회로 비교를 합격으로 바꾸지 않음 |
| 의도적인 CLK/D/제어 충돌 별도 시험 | 33시점·127비교. 기능 참조는 일치, CDL/PEX는 각각 8개 불일치 | [충돌 입력](results/collision-stimulus.json), [CDL](results/collision-cdl-checks.csv), [PEX](results/collision-pex-checks.csv). 경계의 이상적 디지털 결과를 물리 기준으로 쓰지 않음 |
| R/S 해제 skew 별도 시험 | 각 view 44조건 실행 | [CDL](results/skew-cdl-checks.csv), [PEX](results/skew-pex-checks.csv). 해제 순서·간격에 따른 결과를 보존 |

불일치 수는 **관측 시점 수**이며 독립적인 결함 수가 아니다. 한 번 다르게 저장한 Q가 이후 유지되는 동안 여러 번 셀 수 있다. 모든 실제 실행·exit code·로그와 불일치 목록은 [results.json](results/results.json)에 있다.

## 남은 차이와 타이밍 해석

일반 입력열의 불일치 4개는 id 63/64/183/184다. `CLK=0`, R=S=0으로 Q=0을 만든 뒤 **00→11 동시 해제**하면 이상적인 기능 참조는 Q=0을 유지하지만 두 회로 view는 Q≈5 V가 된다. D=0/1 모두 관측했고, 이후 D를 바꾸어도 차이가 유지된다. 동시 assertion 중의 reset 우선 동작과, 두 제어의 동시 release 결과를 구분해야 한다. 원본의 별도 문제인 **00→10(R만 해제, S는 계속 활성)**은 정해진 기능 참조가 Q=1이며 두 회로도 이에 동의한다. 원본 Verilog는 R 상승에 반응하지 않아 Q=0에 머문다.

[release_probe.py](release_probe.py)는 CLK=0/1, D=0/1과 `t(R 상승 시작)-t(S 상승 시작)` = −20, −5, −1, −0.5, −0.1, 0, 0.1, 0.5, 1, 5, 20 ns를 조합했다. ±5/±20 ns의 분리된 해제에서는 R 먼저 해제 시 set, S 먼저 해제 시 reset 결과를 두 view가 보였다. 그러나 경계에서는 다음 차이를 보인다(D=0/1 모두).

| CLK | 해제 skew | CDL Q | PEX Q |
| --- | --- | --- | --- |
| 0 | +0.5 ns | 0 | 1 |
| 1 | −0.5 ns | 1 | 0 |

이 값은 그 자극에서의 관측이며 허용 skew·setup/hold·recovery/removal 수치가 아니다. Liberty에는 R 기준 S의 `non_seq_hold_rising` 표 값 0.8386~0.9953 ns 및 S 기준 R의 `non_seq_setup_rising` 같은 양수 제약 등이 있다. 표의 다른 방향에는 음수 제약도 있다. 0 간격을 타이밍상 유효하다고 취급할 근거가 없으며, 기능식만으로 이를 보장하지 않는다. 정확한 LUT 보간·조건·측정 기준과 release 허용 영역은 characterization 자료가 필요하다. 일반 시험의 단독 clock/control 전이는 40 ns 간격이지만 동시 R/S 전이는 의도적으로 남겨 이 차이를 드러냈다.

ngspice **47**에 원본 MOS `.lib ... MOS`를 그대로 연결했다. 5 V, TEMP=25 °C, 출력 부하 0.05 pF, 입력 ramp=1 ns, 일반 관측은 동작 시작 20 ns 뒤이며 0~1 V를 0, 4 V 이상을 1, 중간을 미정으로 분류했다. 이는 정착된 기능 관측을 위한 실험 조건이다. Liberty의 VIH/VIL·characterization 환경을 복원한 것이 아니다. MOS 모델 TNOM은 27 °C이며 배포 파일의 오래된 헤더·revision과 라이브러리 characterization 사이의 대응도 증빙되지 않았다.

**ngspice는 nmos4/pmos4 모델의 `N`, `FC` 매개변수를 인식하지 못해 무시한다.** [CDL 로그](results/spice-cdl.log), [PEX 로그](results/spice-pex.log), `skew-*.log`에 경고를 보존했고 모델을 몰래 제거·변경하지 않았다. 따라서 회로 결과는 제공 netlist/모델의 제한된 ngspice 해석 결과다. 타이밍 모델의 정확성·제조 공정·실리콘 결과로 격상하지 않는다. 다른 slew/load/PVT, recovery/removal/non_seq 폐쇄, metastability, 전원 차단·기동, X/Z clock/control, GDS 회로 동등성은 미검증이다.

## 파생물과 검증 기준

[nspl12t_seq_functional.v](derived/nspl12t_seq_functional.v)는 네 셀의 **직접 작성한 zero-delay 기능 참조**다. POS/NEG는 선언 에지에서 D를 저장하고, 래치는 canonical `CLK`가 high일 때 투명하다. SR은 R/S의 assertion과 release를 모두 관측하여 단독 해제에서는 Q를 유지하고, R을 해제해 S만 활성으로 남으면 set한다. `previous_clk`는 제어 해제를 상승 에지로 오인해 D를 캡처하는 것을 막는다. 합성용 RTL이나 타이밍·전력 모델로 쓰지 않는다.

00→11에서는 이상적인 stable input tuple 계약으로 이전 Q를 유지한다. **그 값은 실제 셀 동작 예측으로 사용할 수 없고, 회로와의 차이가 소스 주석에도 표시되어 있다.** 초기 흐름의 DFFSRX1 후보 사용은 **S를 1로 고정한 reset-only**로 제한한다. 타이밍 검증은 후속 필수 작업이며 이 제한으로 STA·실리콘 검증을 통과시킨 것이 아니다. DFFNEGX1과 LATCHX1의 조사·시험은 했지만 M0-06의 첫 지원 설계 범위를 넓히지 않는다.

모델 수정 시에는 원본 해시·모듈 중복·canonical 포트, 이 TB와 7개 잘못된 모델 검출, 원본 보존과 **동시 해제 4개 실패·경계 차이를 그대로 남기는 감사**로 돌아간다. 현재 개별 코어의 사용 조건은 [지원 프로파일·매핑 검사와 RTL/gate 비교](scope-review/README.md)를 따른다. 설계별 STA는 후속 필수 작업이며 제공자 추가 자료는 결정 002의 조건부 조사 기준을 따른다. 이 기록의 통과 수를 전체 셀 qualification으로 복사하지 않는다. 과거 전체 셀 조사 범위의 기계 판독 제한은 [validation/checks.json](validation/checks.json)의 `qualification`에 보존한다.

[patch-plan.json](results/patch-plan.json)은 원본 전체 Verilog → 직접 작성한 replacement → 조립 출력과 각 모듈 전후 SHA-256을 연결한다. 조립기는 해당 네 module span만 바꾸고 나머지 30모듈의 텍스트가 그대로인지 확인한다. TBUF의 EN/E와 조합/물리 view 문제는 이 작업에서 고치지 않았으므로 조립 파일을 모든 셀이 검증된 라이브러리로 배포하면 안 된다. `derived/*.v`와 원본의 같은 모듈을 함께 컴파일하지 않는다.

| 자료 | SHA-256 |
| --- | --- |
| 원본 Liberty | `0c84f0d970d374ba5c9c4cf7aec22fec96e306f8be373bda9ef20ce2bb48de51` |
| 원본 Verilog | `846c7085348384851c9f787caf17635e6e3633ddb8014ce0b71dbf8fbb05f0b5` |
| 원본 CDL | `281efca41e93e7f88cf59e18e64159f9772111cfee1f86647cbd6ac3703e9f11` |
| 직접 작성한 파생 4셀 파일 | `262665ab53a82c1943579ea614882a14eea525c3a77c68035492e7ea918d01dd` |
| 로컬 조립 Verilog | `71ad6f92a910d7c2761e941ad43713a8f87cc705564dd7404f238d658ea20c7a` |

PEX 4개, MOS, 로컬 매뉴얼, 실행 코드·파서, 도구 실행 파일의 전체 해시는 [run.json](results/run.json)에 있다. 같은 manifest가 입력열·TB·조립/패치 정보·시뮬레이션 실행 파일·로그·수치 데이터의 해시를 연결한다. 실행 전후 및 감사 시 M0-07 원본 322개를 재해시했고 변경이 없다. 원본 PDK, 기존 공유 라이브러리, 시스템 기술 링크를 수정하지 않았다.

## 재실행과 시행착오 보존

저장소 루트에서 Python 3, Icarus/vvp, ngspice로 실행한다. 관측 버전은 Python 3.12.3, Icarus/vvp 14.0 devel `s20260301-986-gaf170a0b5`, ngspice 47이다. 정확한 경로·바이너리 해시·버전 원문은 `run.json`과 `version-*.log`에 있다. 라이브러리 파서는 M0-07의 `inventory.py`를 재사용하고 그 코드 해시도 기록한다. 이 최초 셀 실험에는 외부 다운로드·설치·상용 EDA 사용이 없다. 후속 공개 문헌 다운로드는 별도의 `materials/` 기록을 따른다.

```bash
python3 development/experiments/M0-08-sequential/run.py \
  --pdk-root ../NSPL_05CMOS_PDK_260820
```

**이 명령의 현재 예상 종료값은 1이다.** 회로 비교의 4개 미해결 관측을 저장한 뒤 실패로 반환한다. 정상 종료로 위장하지 않는다. traceback·다른 실패는 별도 조사해야 한다. 아래 감사를 별도 명령으로 실행한다. 감사 종료값 0은 알려진 불일치·제약·해시가 보존됐음을 뜻하며 회로 동등성 통과가 아니다.

```bash
python3 development/experiments/M0-08-sequential/validate.py
```

`NSPL_PDK_ROOT`도 지원하고 기본값은 스크립트에서 계산한 형제 PDK다. `--out`은 이 실험의 `results` 또는 `/tmp` 하위만 허용한다. 재실행 시 과거 산출물을 보존하려면 새 출력 경로를 쓴다. 실제로 `/tmp`를 cwd로 삼아 절대 script/PDK 경로와 `--out /tmp/etri-m0-08-replay-20261115`로 전체를 다시 실행한 뒤 다음처럼 비교했다.

```bash
python3 development/experiments/M0-08-sequential/validate.py \
  --compare-results /tmp/etri-m0-08-replay-20261115
```

출력 경로가 들어가는 로그는 byte 비교하지 않는다. 입력·패치·stimulus/evidence의 해시, 판정 수·불일치 셀 수·상태, skew 출력 논리 및 전압 허용 오차 0.0001 V를 비교했다. 이 재현 비교를 포함한 **감사 679개 항목이 통과**했으며 [checks.json](validation/checks.json)에 항목과 제한을 기록했다. Git에는 직접 작성한 코드·파생 모델, 입력열·표·실패/경고 로그·manifest·검증 기록을 보존한다. runner가 재생성하는 TB, `.vvp`, 원본 조합 셀을 포함한 조립본, 잘못된 모델, SPICE deck·수치 파형과 빈 성공 compile 로그는 로컬에 유지하고 추적에서 제외한다. 새 checkout에서는 먼저 run을 실행해야 제외된 파일의 해시까지 감사할 수 있다.

초기 검증기의 matrix 준비 단계에는 D와 CLK를 동시에 바꾸는 자극이 있었다. [attempt-01](attempt-01/README.md)에 코드·모델 snapshot, 원본 입력열·결과·로그·산출물 해시를 보존했다. 자동 생성 TB는 보존한 입력열로 byte 단위 재생성할 수 있다. 당시 CDL/PEX의 463개 불일치를 수정된 기능 시험의 결과와 혼합하지 않는다. 수정은 **일반 시험에서 D를 에지 전에 충분히 안정시키되 에지 사이 변화는 유지**하고, 의도적인 timing collision 시험은 별도로 계속 실행하는 것이다. 수정 뒤에도 원본 세 FF는 실패하고, 실제로 남은 동시 제어 해제 차이도 삭제하지 않았다. 컴파일 전의 괄호 문법 오류는 바로 수정했으며 그 시도에는 셀 판정 결과가 없다.

전체 순차 모델 확정을 위해 필요한 자료와 다음 행동은 [결정 002의 자료 요청 목록](../../decisions/002-sequential-functional-models.md#미결정과-해제에-필요한-자료)을 따른다. 현재 결과만으로 simultaneous release를 Q=0 또는 Q=1로 실리콘 동작처럼 확정하지 않는다.

2026-11-15 후속으로 [직접 확보한 자료](materials/README.md)를 추가했다. 공식 ngspice 47 매뉴얼·Berkeley BSIM3 3.2/3.2.4 원본, Liberty 측정 기준·도구 정보·실제 제약 축/값, MOS corner·native view 위치를 확보했다. 기본/hsa 모드에서 원본 N/FC 경고와 NJ 실효값을 별도로 확인하고 제공자용 64개 상태 사례 CSV도 만들었다. 기존 모델·자극·회로 비교 결과·해시는 유지하며 이 자료 수집을 전체 모델 qualification 통과로 취급하지 않는다.
