# M0-08 자료 필요성 재검토: 단순 동기식 코어

2026-11-15 (Asia/Seoul). 사용자는 현재 목표가 간단한 synchronous sequential circuit임을 재확인하고, PDK의 `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std/`도 살펴보도록 요청했다. [결정 001](../../../decisions/001-initial-support-environment.md)의 기존 단일 상승 에지·5 V·TT 코어 범위에 맞춰 [결정 002](../../../decisions/002-sequential-functional-models.md)를 재평가했다.

**앞서 나열한 M08-D1~D5 전체를 개발 시작의 필수 자료로 둔 것은 과했다.** 제공된 Liberty로 디지털 합성·STA를 하는 일, 제공 기능 Verilog의 오류를 수정하는 일, 라이브러리를 트랜지스터 수준에서 재특성화하는 일의 필요 조건을 나눠야 한다. 현재 범위의 기능 모델 처리·검증 기준은 확보한 자료와 제한 검증으로 확정할 수 있다. 상세한 전체 라이브러리 qualification과 미지원 제어 조합의 물리적 의미는 별도 미확정 사항으로 보존한다.

## 다섯 자료의 현재 필요성

| ID | 현재 코어 개발의 외부 선행 자료인가 | 지금 필요한 일 | 다시 요청할 조건 |
| --- | --- | --- | --- |
| M08-D1 동시 set/reset 명세 | **아니오** | DFFSRX1은 S=1로 고정하고 실제 netlist에서 확인. 정상 reset-only 기능은 제공 Liberty와 기존 회로 관측으로 대조 | R/S를 동시에 활성·해제하는 등 현재 제외한 동작을 실제로 지원할 때 그 동작 범위의 명세 요청 |
| M08-D2 원본 characterization deck | **아니오** | 제공 TT Liberty를 출처·해시·단위·코너와 함께 사용 | Liberty 내용 오류를 조사하거나 새 셀/코너의 모델을 만들고 재특성화할 때 |
| M08-D3 제약의 상세 측정 조건 | **일반적인 사용에는 추가 제공자 자료 불필요** | setup/hold, async reset 사용 시 R↔CLK recovery/removal을 제공 arc와 설계 제약으로 검사 | 해당 arc 해석이 불명확하거나 실제 유효 경로의 보고/동작과 충돌할 때. S가 상수인 현재 회로의 R↔S 동시 해제 문제와 구분 |
| M08-D4 ngspice MOS 대응 | **아니오** | gate 기능 시뮬레이션·Liberty 기반 STA에 MOS 모델을 요구하지 않음 | 소자/셀의 정량적 SPICE/PEX 검증·재특성화를 수행할 때. 기존 N/FC 경고는 계속 보존 |
| M08-D5 공급자 LVS/revision 보고서 | **기능 구현 시작의 선행 조건 아님** | 제공 Liberty/Verilog/LEF/GDS/CDL/PEX의 식별·핀·전원·실제 사용 view를 맞춤 | 물리 흐름의 LVS/추출 검증은 후속 필수 작업. 현재 자료로 검증할 수 없거나 불일치가 나면 필요한 report/export를 요청 |

설계가 동기식이어도 reset이 동기식이라는 뜻은 아니다. 기준 `shift_reg_8bit`는 `posedge clk or negedge rst_n`인 **비동기 reset**을 사용한다. 원본 RTL은 유지했다. reset 해제 timing, clock 제약·setup/hold와 후속 CTS/최종 RC/물리 검증은 계속 필요하다.

Yosys의 실제 [dfflibmap 도움말](results/help-dfflibmap.log)은 Liberty를 사용해 내부 FF를 매핑한다. [OpenSTA 공식 설명](https://github.com/parallaxsw/OpenSTA)은 Liberty·gate Verilog·SDC 및 SPEF/SDF 등을 STA 입력으로 다룬다. 이 경로의 실행에 공급자 MOS 카드나 원본 characterization deck이 입력으로 들어가는 것은 아니다. 제공 Liberty를 사용한 결과의 범위는 TT·5 V·25 °C로 표시한다.

## 실제 회로를 매핑해서 확인

[run.py](run.py)는 두 회로를 실제 Yosys로 합성하고 원본 Liberty로 매핑한 뒤, **같은 gate netlist·같은 TB**에 원본 모델/기존 파생 기능 모델을 각각 연결했다. 전용 fixture인 동기 reset 예제는 새 이름으로 작성했고, 기준 PDK RTL의 reset 종류를 바꾸지 않았다. [profile.json](profile.json)의 제한을 [check_scope.py](check_scope.py)가 실제 Yosys JSON 연결에 적용한다.

| 회로 | 실제 매핑 | RTL 판정 | 기존 파생 모델 판정 | 원본 모델 불일치 |
| --- | --- | --- | --- | --- |
| 원본 `shift_reg_8bit`, 비동기 reset | DFFSRX1 8개. 모든 S=1, R=`rst_n`, CLK=`clk` | 650/650 일치 | 650/650 일치 | 602/650 관측 |
| 별도 `shift_reg_sync8`, 동기 reset | DFFPOSX1 8개 + AND2X1 8개 | 649/649 일치 | 649/649 일치 | 634/649 관측 |

판정 단위는 각 시점의 **8비트 출력 벡터 비교**다. 기존 순차 셀 2,799개 단일 셀 비교와 다른 집계다. TB는 D를 클록의 두 에지 사이에서 바꾸고, 이전 하강 에지의 D가 다음 상승 에지에서 캡처할 D와 다르게 만든다. 비동기 reset은 clock이 멈춘 상태·clock high 중 assertion/release도 검사한다. reset과 clock을 동시에 바꾸어 timing 위반을 정상 기능 기준으로 삼지 않는다.

guard는 다음을 확인한다.

- 모든 사용 셀·핀은 같은 Liberty에 존재하고, 매핑되지 않은 내부 셀/blackbox가 없다.
- 순차 셀은 DFFPOSX1 또는 S=1인 DFFSRX1이며, 실제 CLK가 top의 `clk`다. DFFSRX1.R은 이 프로파일의 `rst_n` 또는 1이다.
- S의 상수 1은 직접 상수 또는 TIEHIX1의 단일 driver로 확인한다. 다중 driver나 input port에 강제로 tie를 붙인 연결을 허용하지 않는다.

실제로 매핑한 netlist를 변형해 **S=0, 동적 S, 다른 clock, 하강 에지 FF, latch, 미매핑 셀, input/tie 다중 driver의 7개 오류를 모두 거부**했다. 명시적 TIEHIX1로 S를 고정한 경우는 통과했다. S=1인 연결에서는 정상 전원·논리 가정 아래 R=S=0과 그 상태의 동시 release에 도달할 수 없다. 실제 tie cell 삽입·전원 배선은 M0-09 이후에도 확인해야 한다.

이것은 기존 실패를 TB에서 생략하는 방식과 구분되는 **사용 셀/연결에 대한 실행 가능한 제한**이다. 기존 4개 회로 불일치, 경계의 CDL/PEX 차이와 파생 모델 해시는 그대로다. 전체 동작을 조사한 과거 `results.json`·`validation/checks.json`은 과거 범위의 기록으로 보존하고, 현재 제한 프로파일의 판정은 [이번 results.json](results/results.json)으로 연결한다.

## `12T_std` 폴더에서 확인한 것

이 폴더는 PnR용 텍스트 export와 달리 **원 설계의 OpenAccess 라이브러리**다. 이전에는 파일명·해시를 조사했고, 이번에는 순차 4셀의 schematic/symbol/layout을 각각 확인하고 12개 thumbnail을 보았다. 전체 385개 파일을 해시로 보존했다. `.oa` 107개, `.tag` 108개, `.png` 105개, `.dm` 61개 등이 있다. 세부 내용은 [native-views.json](results/native-views.json)에 있다.

- 각 순차 셀에 `schematic/sch.oa`, `symbol/symbol.oa`, `layout/layout.oa`와 `master.tag`·128×128 thumbnail이 있다. schematic에는 트랜지스터 회로 구조가, layout에는 셀 형상이 보인다. symbol에서는 POS와 NEG의 clock bubble 차이도 보인다.
- `master.tag`는 `2.2-p001 or above` 형식을, printable metadata는 `22.50.056/22.50.058` 등의 저장 형식 단서를 제공한다. `strings`에는 과거 설계 이름과 소자 값처럼 보이는 문자열도 있지만 이 문자열만으로 현재 소자/핀 연결·크기·동등성을 판정하지 않는다.
- 현재 PATH에 `oa2ascii`, `oaScan`, `virtuoso`가 없고 지원되는 OA 연결 reader도 확인하지 못했다. `.oa` 전체 연결을 해석하거나 원 schematic을 netlist로 다시 export한 것은 아니다. 상용 EDA는 실행하지 않았다.
- thumbnail은 회로 원본이 포함되어 있다는 유용한 단서지만 핀·연결을 모두 읽을 해상도가 아니다. 따라서 이 폴더의 존재를 LVS 통과로 표시하지 않는다. 현재 기능 의미를 확인하는 데에는 이미 확보한 Liberty·CDL·PEX 텍스트가 직접 사용 가능하다.

원 설계 view가 이미 있으므로 공급자에게 새 회로 자료 전체를 미리 요구할 이유는 더 줄어든다. 후속 물리 검증에서 export 대응이나 특정 연결이 쟁점이 되면 이 원본을 기준으로 필요한 부분만 확인한다. OASIS 레이아웃 파일과 OpenAccess `.oa` 데이터는 다른 형식이다.

## 실행·판정과 한계

```bash
python3 development/experiments/M0-08-sequential/scope-review/run.py

# 후속 합성 netlist의 프로파일 검사. TOP과 파일 경로를 실제 값으로 지정
python3 development/experiments/M0-08-sequential/scope-review/check_scope.py \
  development/experiments/M0-08-sequential/scope-review/results/shift_reg_8bit-gate.json \
  --top shift_reg_8bit \
  --liberty ../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/LIB/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std_tt.lib
```

필요 도구는 Python, Yosys/ABC, Icarus/vvp, `strings`다. `--out`은 이 실험의 `results/` 또는 `/tmp` 하위만 허용한다. 코드·입력·원본/파생 모델·native view·도구·로그·gate netlist·TB의 해시는 [run.json](results/run.json)에 연결했다. 조립 기능 모델은 이전 `patch-plan.json`의 출력 해시와 정확히 같다. 기존 M0-08 입력과 native 파일은 실행 전후 변경이 없다. Git에는 코드·프로파일, 실제 매핑 연결을 보여주는 gate JSON, 입력열·판정/실패 로그·해시를 남긴다. 자동 생성 Verilog/TB/Yosys script, 빈 compile 로그, 실행 파일·조립본은 runner로 재생성하므로 추적에서 제외하고 로컬에 유지한다.

최초 Yosys 시도에서는 Liberty의 셀 선언을 읽지 않아 `check -assert`가 FF Q를 미구동으로 보고했다. [원문 로그](results/attempt-missing-library-declarations.log)를 보존하고 `read_liberty -lib`로 실제 핀 방향을 제공한 뒤 재실행했다. check를 끄거나 warning을 무시하지 않았다.

**현재 프로파일의 합성/기능 매핑 검증은 통과다. STA, 회로 PEX 재특성화, P&R, DRC/LVS, 실리콘 검증은 이번에 수행한 것이 아니다.** 이 기록으로 M0-08의 현재 지원 범위에 대한 모델 처리·검증 기준을 완료하고 M0-09로 진행한다. M08-D1~D5는 필요해지는 조건이 발생할 때 사용하는 추가 조사 목록으로 남긴다.
