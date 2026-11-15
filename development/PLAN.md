# ETRI 0.5 µm 디지털 칩 설계 리포지토리 전환 계획

- 작성·현황 확인일: 2026-11-14 (Asia/Seoul)
- 대상: `ETRI-0.5um-CMOS-MPW-Std-Cell-DK/`
- 상태: **계획 수립. 아래의 새 구조·명령·설정 형식은 구현 목표이며, 현재 사용할 수 있는 기능을 뜻하지 않는다.**
- 문서 작업 범위: 계획서와 실행 로드맵 작성·정리. 기존 설계 파일, PDK, 설치 스크립트, 폴더 배치는 변경하지 않는다.
- 합의된 기준 예제: **`shift_reg_8bit`로 전체 흐름을 먼저 검증하고, FIR를 확장 예제로 제공한다.**
- 입력·AI 안내 원칙: **사용자는 생성된 YAML의 빈칸을 채운다. 튜토리얼 작성자는 필요한 시나리오마다 복사·붙여넣기 프롬프트와 공식 자료에 근거한 모델·effort 안내를 제공한다. 구체적인 모델·effort는 해당 튜토리얼을 작성할 때 정한다.**
- 실행 순서·진행 상태·릴리스 점검: [ROADMAP.md](ROADMAP.md)에서 관리한다.

## 1. 만들고자 하는 결과

처음 사용하는 사람이 README에서 시작하여 도구를 설치·빌드하고, 프로젝트를 생성한 뒤, 다섯 개의 튜토리얼을 따라 자신의 디지털 RTL을 합성·배치배선·검증할 수 있는 리포지토리를 만든다. 사람과 AI agent는 같은 설정 파일과 검증 결과를 사용한다.

| 목표 | 최종적으로 가능해야 하는 일 |
| --- | --- |
| 설치·빌드 | README의 지원 OS, 버전, 의존성, 환경 설정, 점검 명령만으로 필요한 오픈소스 도구를 준비한다. |
| 프로젝트 시작 | 저장소 루트에서 `scripts/new-project.sh fir`를 실행하면 `projects/fir/`와 초기 설정·소스·테스트벤치 틀이 생성된다. |
| 단계별 진행 | 튜토리얼의 안내대로 생성된 YAML의 빈칸 작성 → 입력 검증 → 자동 실행 → 결과 확인 → 다음 단계 인계를 다섯 단계에서 일관되게 제공한다. |
| 학습 | 각 단계에 원리, 입력 칸별 작성 안내, 명령, 예상 결과, 통과 기준, 실패 시 돌아갈 위치, 참고할 조언이 있다. AI가 도움이 되는 시나리오에는 복사·붙여넣기 프롬프트와 권장 모델·effort를 함께 제공한다. |
| 재현 | 사용한 RTL·제약·PDK·도구 버전·명령과 결과를 연결하여 다른 사람이 같은 설계를 다시 실행할 수 있다. |
| 확장 | 검증된 `shift_reg_8bit` 예제에서 시작해 FIR와 새로운 디지털 설계에 같은 흐름을 적용한다. |
| 유지보수 | 사용자 문서와 개발 기록의 위치가 분명하고, 실패사례를 다음 프로젝트에서 재사용한다. |

지원 범위는 기준 PDF와 같은 **표준셀 기반 디지털 RTL-to-GDS 흐름**이다. 첫 지원 프로파일은 M0-06에서 단일 상승 에지 클록·단일 5 V 전원 도메인의 작은 동기식 코어로 채택했다. OS·도구 후보·미지원 범위와 검증 조건은 [최초 지원 환경 결정](decisions/001-initial-support-environment.md)을 따른다. 다중 클록, CDC, SRAM 등 매크로, 복잡한 DFT는 검증 후 지원 범위를 넓힌다. 지원하지 않는 입력은 초기에 설명과 함께 거부한다.

아날로그 회로 설계, HLS, FPGA/Arduino 에뮬레이션, 보드·측정 실습은 기본 사용자 경로에서 제외한다. 디지털 셀의 DRC/LVS·추출에 필요한 소자 모델과 기술 자료는 유지한다.

**EDA 실행에는 오픈소스 도구만 사용한다.** AI는 선택적인 작업 보조 수단이다. 특정 유료 AI 서비스에 가입하지 않아도 설정 작성과 shell 명령만으로 설계를 진행할 수 있어야 한다. 제공 PDK의 이용·재배포 조건은 EDA 도구의 오픈소스 라이선스와 별도로 확인한다.

## 2. 직접 확인한 현재 상태

### 2.1 확인한 자료와 한계

| 자료 | 확인 내용 |
| --- | --- |
| [현재 README](../README.md) | 저장소 설명, 설치, 환경 변수, QFlow 기반 FIR_PE 예제, 기존 프로젝트 템플릿, 생성물 관리 방식을 읽었다. |
| [기준 PDF](<../docs/ETRI_0p5um_NSPL_260820/05_NSPL 0.5um Digital CMOS 2P3M 5V Design Tutorial(PnR)_V1.0.pdf>) | 총 54쪽. 목차와 다섯 단계의 본문, 상용 도구 목록, CTS, 결과 저장, POST-STA·DRC/LVS·PEX 내용을 확인했다. |
| [기존 기술 설정](../tech/etri050.sh), [표준셀 LEF](../digital_ETRI/etri050_stdcells.lef), [Liberty](../digital_ETRI/khu_etri05_stdcells.lib) | 기존 셀·전원·층 이름과 라우팅 설정을 새 PDK와 비교했다. |
| [설치 묶음](../Tools/build_tools.sh), [의존성 설치](../Tools/prerequisites.sh), [환경 설정](../Tools/DK_env), [QFlow 설치](../Tools/qflow-1.4.100_etri050_build.sh) | 고정 경로, 설치 범위, 소스 버전 고정 여부, 시스템 변경 동작을 확인했다. |
| [FIR_PE Makefile](../Tutorials/2-9_Lab7_FIR_PE/Makefile), [프로젝트 변수](../Tutorials/2-9_Lab7_FIR_PE/project_vars.sh), [레이아웃 Makefile](../Tutorials/2-9_Lab7_FIR_PE/layout/Makefile) | QFlow 실행, 공유 셀 덮어쓰기, STA 설정, DRC/LVS 호출 방식을 확인했다. |
| [기존 프로젝트 생성기](../scripts/RTL_Project.sh) | 인수 네 개를 받아 현재 디렉터리에 `env_settings`와 Makefile을 쓰는 방식이다. 요청한 새 생성기와 동작이 다르다. |
| [동봉 QFlow 소스 아카이브](../Tools/qflow-1.4.100_etri050.tar.gz) | 로컬 압축 해제본의 `scripts/qflow.sh.in`, `scripts/opensta.sh`를 확인했고, 두 파일이 아카이브와 동일함을 비교했다. |
| [새 PDK의 디지털 PnR 자료](../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/) | Liberty/LEF/Verilog/CDL, 기술 자료, 예제 RTL·SDC, 셀별 PEX 파일의 구성을 확인했다. |

새 PDK는 현재 저장소 **외부의 형제 디렉터리**인 `../NSPL_05CMOS_PDK_260820/`에 있다. 그 안의 디지털 자료 경로를 이하 `PDK_DIGITAL`로 부른다. 이는 설명용 약칭이며 기존 환경 변수가 아니다.

작업공간 루트의 `tutorial.pdf`는 기준 PDF와 SHA-256이 같았다: `0c84b85d426213d37a551cf00834de4a0300442b5b22f7ccd82a0ae2980a191b`. 표지 제목은 `0.5um Digital CMOS 2P3M 5V Design Basic Tutorial`, Version 1.0이며, 문서 이력은 2026-08-18이다. 별도로 반입할 Basic Tutorial 자료와 같은 문서인지는 반입 시 판별한다.

사용자가 나중에 제공할 실패사례·조언 자료는 이번에 추가 탐색하거나 내용을 수집하지 않았다. 현재 `docs/ETRI_연구노트/`의 존재는 확인되었지만, 본 계획의 세부 조언 근거로 그 내용을 사용하지 않았다. 아직 제공되지 않은 자료를 읽었다고 가정하지 않는다.

### 2.2 현재 도구와 경로

아래는 계획 수립 당시 확인이다. 2026-11-15의 OS·도구 전체 조사, 관측 버전과 향후 고정 조건의 구분은 [M0-06 결정](decisions/001-initial-support-environment.md)과 [실측 기록](experiments/M0-06-environment/README.md)을 참조한다.

- `yosys`, `qflow`, `graywolf`, `qrouter`, `magic`, `netgen`, `sta`, `iverilog`, `verilator`, `klayout` 명령의 존재를 확인했다. `openroad`는 현재 PATH에서 발견되지 않았다.
- 실제 버전 조회 결과는 Yosys `0.71+4` (`02365349e`), OpenSTA `3.2.0`이다. **향후 지원 버전을 이 값으로 확정한 것은 아니다.**
- 새 TT Liberty는 Yosys `read_liberty -lib`에서 38개 셀을 읽었고, OpenSTA `read_liberty`에서도 오류 없이 읽혔다. 이는 입력 형식의 기본 호환성만 확인한 것이다.
- 현재 `~/ETRI050_DesignKit`은 이 저장소를 가리킨다. QFlow의 `/usr/local/share/qflow/tech/etri050/`도 이 링크를 경유하여 기존 `digital_ETRI/`와 `tech/`를 참조한다.
- 새 PDK로 합성부터 GDS·POST-STA까지 실행한 상태는 아니다. CTS, 라우팅, 추출 정확도, 셀 물리 검증, 전체 기능 일치는 후속 검증 대상이다.

### 2.3 새 PDK와 기존 라이브러리의 차이

기존 `digital_ETRI/`의 KHU/ETRI 셀 세트와 새 PDK의 NSPL 12T 셀 세트는 서로 다른 라이브러리로 다룬다. 같은 이름의 셀도 형상·핀·타이밍이 같다고 가정하지 않는다.

| 항목 | 기존 저장소 | 새 `PDK_DIGITAL` | 필요한 작업 |
| --- | --- | --- | --- |
| 조합·순차 셀 이름 | `DFFSR`, `LATCH`, `CLKBUF1/2/3` 등 | `DFFSRX1`, `LATCHX1`, `CLKBUFX1/2/4` 등 | 합성 매핑, 클록 버퍼, 리셋·셋 핀 의미를 다시 검증한다. 이름만 치환하지 않는다. |
| 전원 핀 | LEF의 `vdd`, `gnd` | LEF/CDL의 `VDD`, `VSS` | 전원 연결, netlist 변환, LVS, GDS 라벨을 일치시킨다. |
| Fill / Tie | `FILL`, 기술 설정의 Tie 셀 값은 비어 있음 | `FILLX1..4`, `TIEHIX1`, `TIELOX1` | 삽입·전원 연결·시뮬레이션 모델 처리 규칙을 정한다. |
| 라우팅 층 | `metal1/2/3`, `via1/2` | 기술 LEF의 `MET1/2/3`, `VIA1/2` | LEF/DEF/GDS/Magic/추출 사이의 층 매핑을 확인한다. |
| 격자·피치 | LEF manufacturing grid `0.15 µm`, MET2에 해당하는 기존 피치 `3.0 µm` | 기술 LEF grid `0.01 µm`, MET2 pitch `3.2 µm`, core site `3.2 × 36 µm` | 옛 Magic 격자와 배치·라우팅 파라미터를 그대로 쓰지 않는다. |
| 같은 이름의 물리 셀 예 | `DFFPOSX1`: `36 × 36 µm` | `DFFPOSX1`: `35.2 × 36 µm`, 핀 형상·층도 다름 | 새 LEF와 새 GDS를 한 세트로 사용한다. |
| 셀 수 | Liberty 39개, LEF macro 33개; 패드·FILL의 포함 범위가 다름 | Liberty와 LEF 모두 38개, 이름 집합 일치 | 단순 개수 차이를 오류로 판단하지 말고 용도별 필수 view를 검사한다. |
| Verilog view | 기존 기능·타이밍용 모델 존재 | 34개 모듈, FILLX1..4 모델 없음 | 물리 전용 셀을 기능 netlist에서 제외하거나 검증된 stub 규칙을 둔다. |
| 타이밍 코너 | 기존 Liberty | 새 LIB 디렉터리에서 확인한 것은 TT, 5 V, 25 °C | 현재 범위의 TT 분석과 다중 PVT signoff를 구분한다. 임의로 SS/FF를 만들지 않는다. |
| 배선 RC | 기존 LEF·파라미터에 RC 값 있음 | 새 기술 LEF에는 RC 키워드가 없고 ITF/TLU+ 별도 제공 | RC의 출처·단위·변환·검증 방식을 정해야 한다. 옛 값을 묵시적으로 재사용하지 않는다. |
| PEX 자료 | 기존 Magic 추출 유틸리티 | 셀별 `.pex.netlist` 34개 | 셀 내부 PEX를 설계 전체 배선 SPEF로 간주하지 않는다. |

새 Liberty 단위는 시간 `ns`, 정전용량 `pF`, 전압 `V`, 전류 `µA`, 저항 `kΩ`이다. 각 도구·파일 형식의 단위 변환을 공통 설정에서 관리한다.

### 2.4 우선 해결할 실제 문제

**P0-1. 제공 Verilog의 플립플롭 기능 모델 불일치**

새 Liberty의 `DFFPOSX1`은 `clocked_on : "CLK"`, `next_state : "D"`로 정의되어 있다. 제공 Verilog는 다음처럼 하강 에지에서 D를 저장하고 상승 에지에서 출력한다.

```verilog
always @(negedge CLK) IQ <= D;
always @(posedge CLK) Q <= IQ;
```

Icarus Verilog로 하강 에지 이후, 다음 상승 에지 이전에 D를 바꾸는 작은 실험을 실행했다. 상승 에지 직후 `D=1`, 상승 에지 기준 기대값 `1`에 대해 제공 모델의 `Q=0`을 확인했다. **Liberty가 나타내는 상승 에지 FF와 기능 모델이 일치하지 않는 입력 사례를 재현한 것**이며, 실제 실리콘 동작을 판정한 결과는 아니다. 재현 코드는 부록에 둔다.

`DFFSRX1`에도 두 에지를 사용하는 코드가 있어 별도 검증이 필요하다. 다른 순차 셀, 비동기 제어, 동시 set/reset 우선순위도 함께 확인한다. 원본 PDK는 보존하고, 필요하면 출처·변경 이유·검증 근거를 갖춘 기능 모델을 파생 산출물로 관리한다. 테스트벤치의 입력 시점만 바꾸어 불일치를 숨기지 않는다.

**P0-2. 현재 STA 호출을 새 PRE/POST-STA로 바로 사용할 수 없음**

FIR_PE의 `make sta`는 placement 이후를 의존하며, `project_vars.sh`의 `sta_tool` 선택은 주석이다. 동봉 QFlow shell 흐름의 기본 STA는 `vesta`이다. OpenSTA 설치 여부만으로 모든 프로젝트가 OpenSTA를 쓰게 되는 구조가 아니다.

동봉 `opensta.sh`는 SDC가 없으면 `clock`이라는 포트에 주기 20의 예시 SDC를 만든다. 기준 예제의 포트명은 `clk`이다. 또한 `-d` 경로는 QRouter `.rc`를 `rc2dly`로 SDF로 바꾸어 읽는다. 따라서 공통 제약을 명시적으로 전달하고, **합성 직후 PRE-STA**와 **최종 배선 기생성분을 반영한 POST-STA**를 구분하는 실행·판정 계층이 필요하다.

**P0-3. CTS·RC 추출·물리 검증은 별도 적합성 검증이 필요**

현재 FIR_PE에는 PDF의 CTS에 대응하는 독립 단계와 skew 검증 절차가 명시되어 있지 않다. 기존 버퍼 처리만으로 CTS 완료를 선언하지 않는다. 기존 DRC 스크립트와 Magic 추출 설정도 새 PDK에 대한 검증 완료 상태로 간주하지 않는다.

**P1. 설치·프로젝트 경로·공유 상태 개선**

- 설치 스크립트에 무조건적인 `git pull`, 광범위한 시스템 upgrade/autoremove, 고정 설치 경로, 실패 후 후속 실행 가능성이 있다. 지원 프로파일을 분리하고 버전 고정·오류 전파·재실행 동작을 정리한다.
- `make config_m1f/config_m2f`는 공유 `digital_ETRI/`를 덮어쓴다. 여러 프로젝트가 다른 셀 세트를 동시에 사용하기 어렵다. 새 흐름은 프로젝트별 PDK 식별과 파생 캐시를 사용한다.
- 기존 프로젝트 생성기는 새 프로젝트 디렉터리와 5단계 설정을 준비하지 않는다. 디지털 전용 생성기를 새로 설계한다.

## 3. 기준 PDF를 오픈소스 흐름으로 옮기는 원칙

PDF의 **작업 목적·검증 항목·인계 산출물**을 따른다. 상용 명령을 그대로 복사하거나 도구 이름만 바꾸지 않는다. 원문의 오류 무시·제약 완화 조언도 오픈소스 환경에 그대로 적용하지 않고 근거를 확인한다.

| 기준 PDF의 역할 | 오픈소스 구현 방향 | 구현·검증 시 주의점 |
| --- | --- | --- |
| VCS: RTL / gate-level 기능 검증 | Icarus Verilog 우선, Verilator 보조, GTKWave 선택 | pass/fail을 자동 판정하는 테스트벤치를 제공한다. 파형 확인만으로 통과시키지 않는다. |
| Design Compiler: 합성 | Yosys + ABC + 새 Liberty | Yosys/ABC에서 지원하는 제약과 OpenSTA가 검사하는 전체 SDC를 구분한다. DC의 최적화 기능과 동등하다고 가정하지 않는다. |
| PRE-STA / PrimeTime | 독립 OpenSTA 실행 | Liberty, netlist, SDC, 기생성분의 출처를 기록한다. 동일한 기본 제약을 전후 단계에서 공유한다. |
| ICC2: floorplan / placement / routing | 기존 QFlow + GrayWolf + QRouter 재사용 가능성을 먼저 평가 | 새 12T LEF·층·격자·전원·핀 지원 여부를 작은 예제로 검증한다. |
| ICC2: CTS / 물리 최적화 | 필요한 기능을 충족하는 오픈소스 구현을 선택 | OpenROAD/TritonCTS를 후보로 평가한다. 현재 저장소에서 동작한다고 확정하지 않는다. |
| GDS 조립·조회 | Magic 및 KLayout | 셀 GDS merge, top cell, 층 매핑, 단위, 누락 셀을 확인한다. |
| Calibre DRC / LVS, v2lvs | 검증된 Magic/KLayout DRC, Netgen LVS, 오픈소스 netlist 변환 | Calibre/Assura 규칙 파일은 그대로 실행할 수 없다. 이식 규칙의 항목별 범위와 미지원 항목을 기록한다. |
| Calibre PEX / 후속 시뮬레이션 | 검증된 추출 경로 + OpenSTA, 필요 시 ngspice | 배선 RC 추출과 트랜지스터 수준 PEX를 구분한다. 필요한 RC 기술 데이터 확보가 선행한다. |

OpenSTA는 Liberty, Verilog, SDC, SPEF 및 SDF를 입력으로 사용하는 오픈소스 STA 도구다. 새 기본 인계 형식은 **배선 SPEF를 우선 후보**로 하고, 검증된 SDF 경로를 선택할 경우 지연의 포함 범위와 중복 반영 방지 규칙을 문서화한다. [OpenSTA 공식 저장소](https://github.com/parallaxsw/OpenSTA)

OpenROAD는 TritonCTS 기반 CTS를 제공하지만 버퍼·배선 RC 등의 설정이 필요하다. OpenRCX의 배선 기생성분 추출은 공정·코너별 extraction rules에 의존한다. OpenROAD 설치만으로 이 PDK의 CTS·정확한 추출이 해결된다고 쓰지 않는다. [CTS 문서](https://openroad.readthedocs.io/en/latest/main/src/cts/README.html), [OpenRCX 문서](https://openroad.readthedocs.io/en/latest/main/src/rcx/README.html)

### 초기에 함께 결정할 기술 선택

기존 QFlow의 새 PDK 호환성, CTS·최종 배선 RC 경로를 최소 실험으로 확인하고 기본 P&R 경로를 선택한다. 구체적인 실행 순서·왕복 보존 검증·결정 기록과 진행 상태는 [ROADMAP M0의 초기 기술 선택](ROADMAP.md#초기에-함께-결정할-기술-선택의-실행-방법), 작업 M0-09~12에서 관리한다.

RC가 없거나 근사치뿐이면 `estimated`/`blocked`로 표시한다. CTS가 없으면 ideal-clock 분석임을 표시한다. 이런 결과를 **검증된 POST-STA 완료**로 표시하지 않는다.

## 4. 목표 폴더 구조

다음은 **전환 후 목표 구조**다. 현재 폴더를 한 번에 모두 옮기는 작업 목록이 아니다. 경로를 사용하는 코드를 조사하고 작은 단위로 이행한다. Linux에서도 대소문자만 다른 `Projects/`와 `projects/`를 장기 공존시키지 않는다.

M0에서 폴더 용도·의존성·보존/이관/삭제 대상을 조사하고 기존/목표 경로 대응을 확정한다. M1에서 실제 이행·정리와 코드·설정·문서의 참조 수정을 수행한 뒤 최소 동작을 검증한다. M2는 정리된 구조와 경로에서 개발을 시작한다. 실행 항목은 [ROADMAP M0-14 및 M1-07~08](ROADMAP.md#m1-설치프로젝트-생성폴더-정리)에서 관리한다.

```text
ETRI-0.5um-CMOS-MPW-Std-Cell-DK/
├── README.md                    # 설치 → 새 프로젝트 → 5단계의 시작점
├── LICENSE
├── docs/
│   ├── tutorials/
│   │   ├── 01-synthesis-preparation.md
│   │   ├── 02-synthesis-pre-sta.md
│   │   ├── 03-pnr-preparation.md
│   │   ├── 04-auto-pnr.md
│   │   └── 05-post-sta.md
│   ├── lessons/                  # 검증된 실패사례·조언과 단계별 색인
│   ├── prompts/                  # 시나리오별 복사·붙여넣기 프롬프트와 모델·effort 근거
│   ├── reference/                # 원문 자료 위치·버전·페이지 색인
│   ├── ETRI_0p5um_NSPL_260820/    # 기존 원본 PDF 위치를 우선 유지
│   └── ETRI_연구노트/             # 기존 자료; 활용할 때 페이지 근거 추가
├── scripts/
│   ├── setup.sh                  # 도구 프로파일·의존성·빌드 진입점
│   ├── doctor.sh                 # 환경·도구 버전·PDK view 점검
│   ├── new-project.sh            # 디지털 프로젝트 생성
│   └── run-stage.sh              # 설정 검증·단계 실행·결과 판정
├── flow/
│   ├── schemas/                  # 공통 입력·인계·결과 스키마
│   ├── stages/                   # 5단계 실행 코드 및 Tcl 템플릿
│   └── toolchain.lock.json       # 검증한 OS·도구 버전/commit·다운로드 해시
├── templates/
│   └── digital/                  # 프로젝트 초기 파일과 항목별 설명
├── platforms/
│   └── nspl05-260820/            # PDK 경로 명세·어댑터·패치·층/셀 매핑
├── examples/
│   ├── shift_reg_8bit/           # 검증된 RTL·TB·입력 설정·기대 결과
│   └── fir/                      # 확장 예제, 자체 완결된 소스·설정
├── projects/                     # new-project.sh가 만드는 사용자 프로젝트
├── tests/                        # 공통 계약과 실제 흐름의 의미 있는 회귀 검증
├── development/                  # 목표·진행 상태·판단·시행착오를 한곳에 축적
│   ├── PLAN.md                   # 이 문서: 목표, 요구사항, 분담, 완료 판정 원칙
│   ├── ROADMAP.md                # 실행 순서, 작업별 진행 상태·근거, 릴리스 체크리스트
│   ├── decisions/               # 기술 선택과 이유
│   ├── experiments/             # 재현 입력·명령·관찰 결과·실패 로그 색인
│   └── handoffs/                # 단계 간 인계 기록·통합 검증 결과
└── .gitignore

# 기본 사용자 경로에서 분리할 항목
legacy/                          # 의존성 확인 후 남겨둘 기존 교육 자료
.cache/                          # 재생성 가능한 다운로드·빌드·PDK 파생 캐시
.local/                          # 선택 가능한 저장소 로컬 도구 설치 경로
```

`platforms/`에는 원본 PDK를 무조건 복제하지 않는다. 기본은 외부 `PDK_ROOT`를 참조하고, 필요한 view·해시·단위·코너·파생 변환 정보를 명세한다. 배포가 허용되는 파일만 저장소에 포함한다. 새 플랫폼과 기존 셀 세트의 파일을 섞지 않는다.

`docs/lessons/`에는 사용자와 agent가 재사용할 검증된 지식을 둔다. 진행 중인 가설·실패 로그·미완료 작업은 `development/`에 두고, 확인된 내용을 lessons로 승격하면서 원래 실험을 연결한다.

### 기존 폴더의 정리 방향

| 현재 경로 | 확인한 역할 | 전환 방향 |
| --- | --- | --- |
| `tech/`, `digital_ETRI/` | 기존 QFlow/Magic/Netgen 설정과 표준셀 | 새 플랫폼이 검증될 때까지 비교 기준으로 보존. 이후 필요한 어댑터를 `platforms/`로 이관한다. |
| `digital_ETRI050_m1f/`, `digital_ETRI050_m2f/` | 기존 공유 셀 형상 선택지 | 새 기본 경로에서 제외. 기존 예제 의존성 확인 후 보관·제거를 결정한다. |
| `digital_osu050/` | OSU 비교용 셀·SPICE 기준 | 참조 의존성을 확인하고 legacy 후보로 분류한다. |
| `pads_ETRI/` | I/O pad, chip 조립 자료 | 후속 칩 수준 연결에 필요. 새 GPIO GDS와 버전·핀·모델을 비교한 뒤 유지 범위를 정한다. |
| `analog_ETRI/`, `sch/`, `spice/`, `irsim/`, `lvs/` | 아날로그·셀 수준 설계/검증과 예제 | 디지털 DRC/LVS·PEX에 필요한 기술·모델만 분리하고 교육용 나머지는 legacy 후보로 둔다. |
| `Tools/` | 설치 스크립트, 동봉 입력, 로컬 도구 빌드 트리 | 디지털 필수 도구를 새 설치 진입점으로 정리. 재생성 가능한 빌드는 `.cache/`로 분리한다. |
| `scripts/` | 추출·DRC/LVS·GDS·칩 생성, RTL/HLS 템플릿 | 검증한 유틸리티를 재사용. 새 사용자 명령과 내부 구현의 역할을 나눈다. |
| `Tutorials/`, `Tutorials_New/` | 중복되는 다양한 분야의 실습 | 디지털 참고 예제만 선별하여 `examples/`와 새 튜토리얼로 재작성한다. |
| `Projects/` | HLS·SystemC·게임·신경망·테스트 프로젝트 | 필요한 참고 RTL·TB만 선별. 나머지는 legacy 이관/정리 후 사용자용 `projects/`를 만든다. |
| `PSCE_API/` | Arduino·보드·에뮬레이션/테스트 인터페이스 | 첫 디지털 흐름 범위 밖. 재사용 여부를 확인하고 기본 트리에서 분리한다. |
| `docs/` | 현재 공정 원문 PDF·연구노트 | 원문과 새 사용자 안내의 역할을 구분하고 README 링크를 실제 파일에 맞춘다. |

관찰 당시 로컬 사용량은 `Tools/` 약 3.9 GB, `Projects/` 약 966 MB, `Tutorials/` 약 643 MB, `Tutorials_New/` 약 183 MB였다. 다운로드·생성물도 포함한 수치이며 Git 저장소 크기와 다르다. 크기만으로 삭제하지 않는다.

정리는 `M0: inventory·참조 조사·목표 경로와 정리 대상 확정 → M1: 대체/이관·참조 수정·의존성 해소 후 삭제 → 최소 동작 재검증` 순서로 한다. inventory에는 원래 경로, 역할, 참조자, 재생성 방법, 새 위치, 처리 상태와 보존 근거를 기록한다. 표준셀·기술 파일·소자 모델은 내용을 보존하면서 필요한 위치로 이행하고, 기존 사용자 변경과 수동 설계물을 덮어쓰거나 생성물로 취급하지 않는다.

M1의 경로 검증에는 저장소 내부 참조뿐 아니라 `~/ETRI050_DesignKit`, 설치된 QFlow 기술 링크 등 외부 참조도 포함한다. doctor·프로젝트 생성·입력 검사·기준 RTL/TB와 이행한 공통 기능을 실제로 실행하여 M2의 기반을 확인한다. 아직 구현되지 않은 다섯 단계 전체를 실행한 것으로 판정하지 않는다. 최소 검증이 끝난 경로와 폴더 구조를 M2의 공통 기준으로 사용하며, 후속 FIR 확장은 같은 구조 안에서 진행한다.

## 5. README와 프로젝트 생성기의 요구사항

### 5.1 README가 안내할 사용자 여정

1. 지원하는 디지털 설계 범위와 검증된 OS/배포판·버전을 확인한다.
2. 필수 도구만 설치·빌드한다. 선택적인 GUI와 SPICE 확장 도구는 분리한다.
3. `PDK_ROOT`를 지정하고 도구·라이브러리 점검을 통과한다.
4. `shift_reg_8bit` 프로젝트를 만들어 다섯 튜토리얼을 차례대로 수행한다.
5. 동일한 방식으로 `fir` 프로젝트를 만들고 자기 RTL·제약·핀 계획을 작성한다.
6. 산출물과 검증 상태를 확인하고, 칩 수준 조립 및 제출에 추가로 필요한 항목을 확인한다.

설치에는 검증한 버전/commit 고정, 의존성 목록, 필요한 권한, 다운로드 출처·해시, 로그 위치, 실패 복구, 재실행 방법이 포함되어야 한다. 기본 설치에서 시스템 전체 upgrade/autoremove를 수행하지 않는다. 저장소의 실제 위치에서 경로를 계산하고, 기존 `~/ETRI050_DesignKit` 링크는 이행 기간의 호환 수단으로만 다룬다.

### 5.2 목표 명령 인터페이스

아래 명령은 **앞으로 구현할 사용 예**다. 현재 README의 기존 명령과 혼동하지 않도록 기능 구현 후 문서에 반영한다. 저장소 루트에서 실행한다.

```bash
# 도구 버전 고정 목록에 따라 디지털 필수 도구 설치·빌드
scripts/setup.sh --profile digital

# 실제 외부 PDK 경로를 지정한 후 점검
export PDK_ROOT="$(cd ../NSPL_05CMOS_PDK_260820 && pwd -P)"
scripts/doctor.sh --pdk-root "$PDK_ROOT"

# 초보자 기준 예제 / 사용자의 새 설계
scripts/new-project.sh shift_reg_8bit --example shift_reg_8bit
scripts/new-project.sh fir

# 생성된 설정을 작성한 후 한 단계씩 실행
scripts/run-stage.sh projects/fir 01-synthesis-preparation
scripts/run-stage.sh projects/fir 02-synthesis-pre-sta
scripts/run-stage.sh projects/fir 03-pnr-preparation
scripts/run-stage.sh projects/fir 04-auto-pnr
scripts/run-stage.sh projects/fir 05-post-sta
```

`new-project.sh`는 프로젝트 이름과 RTL top module을 구분한다. 예를 들어 프로젝트는 `fir`, top은 `fir_top`일 수 있다. 경로 이탈 문자와 잘못된 이름을 거부하고, 기존 프로젝트가 있으면 덮어쓰지 않고 종료한다. 어느 작업 디렉터리에서 호출해도 생성 위치를 예측할 수 있어야 한다.

일반 프로젝트는 RTL/TB의 틀, 빈칸을 채우는 YAML 양식, 입력 칸별 튜토리얼 링크를 생성하며, 미완성 입력을 통과시키지 않는다. 키·들여쓰기·기본값은 생성기가 준비하여 사용자가 YAML 구조를 새로 작성할 필요가 없게 한다. `--example`은 검증된 예제의 소스·TB·설정을 제공한다. 인접 튜토리얼의 상대 경로에 의존하는 복사를 피한다.

### 5.3 생성할 프로젝트 구조와 입력

```text
projects/fir/
├── README.md                   # 이 프로젝트에서 작성·실행할 항목
├── project.yaml                # top, RTL 목록, platform, reset, 도구 프로파일
├── rtl/                        # 사용자 RTL
├── tb/                         # 자동 판정 테스트벤치
├── constraints/
│   ├── timing.yaml             # 클록·I/O delay·slew·load·예외 의도
│   └── pins.yaml               # 버스 bit 단위 핀 위치·층·금지 영역
├── physical.yaml               # core 크기/utilization, 전원, CTS, 배선 조건
├── verification.yaml           # 필수 검증, waiver 근거, 선택 PEX 시뮬레이션
└── runs/<run-id>/               # 실행별 생성물·로그·인계 manifest
    ├── resolved-config.json    # 기본값·경로·단위가 확정된 설정 스냅샷
    ├── run-manifest.json       # RTL/설정/PDK 해시, 도구 버전, commit
    └── <stage-id>/             # 입력 참조, netlist/SDC/DEF/GDS, report/log
```

YAML은 **초보자가 빈칸만 채우는 입력 양식**으로 제공하고 JSON은 실행 결과·인계용으로 쓴다. 사용자가 키·중첩 구조·자료형을 설계하지 않도록 모든 키와 들여쓰기를 미리 생성한다. 도구·플랫폼에서 결정할 값은 자동 입력하거나 계산하고, 설계자가 결정해야 하는 칸만 명확하게 표시한다. 필수 키·타입·허용 범위·단위·예시를 스키마와 튜토리얼에서 함께 정의한다.

| 설정 파일 | 사용자가 안내에 따라 채울 칸 | 자동 입력·생성 또는 고급 설정으로 구분할 항목 |
| --- | --- | --- |
| `project.yaml` | top, 클록/리셋 포트·극성, 필요한 소스·기능검증 정보 | schema version, 생성 시 정한 프로젝트명·플랫폼, 탐색 가능한 RTL 목록. include/define 등은 필요할 때 안내한다. |
| `constraints/timing.yaml` | 목표 주기, 외부 장치와의 I/O min/max delay·구동·부하 등 설계 의도 | 단위와 고정 구조를 준비한다. uncertainty·예외 등은 항목별 판단 근거와 작성 시점을 안내한다. |
| `constraints/pins.yaml` | 생성된 포트별 행의 side/order 등 필요한 핀 배치 선택 | 포트·버스 bit 목록, 허용 층·선택지와 예약 영역의 기본 구조를 생성한다. |
| `physical.yaml` | core 크기 또는 utilization 등 선택한 산정 방식에 필요한 값 | site/grid, 허용 층·via, 전원·CTS의 검증된 플랫폼 설정과 자동 산정값. 수정이 필요한 경우에만 안내한다. |
| `verification.yaml` | 설계별 추가 검증 조건·선택 시뮬레이션 입력 | 필수 검증과 판정 기준은 미리 준비한다. waiver는 일반 빈칸 양식과 구분하고 근거·검토 기록을 요구한다. |

### 5.4 빈칸 양식과 튜토리얼의 작성 기준

튜토리얼은 각 입력 칸에 대해 **어느 파일의 어느 키에, 무엇을, 어떤 근거로 적는지**를 바로 알 수 있도록 안내한다.

- 문자열은 `""`, 숫자는 콜론 뒤 빈칸처럼 타입에 맞는 빈칸을 제공하고, 주석에 `[필수]`, `[선택]`, `[자동 입력·수정 불필요]`를 표시한다. 미입력 값이 유효한 설계값으로 해석되지 않도록 검증한다.
- 문자열·숫자·선택형 각각의 작성법을 예시로 보여준다. 선택형은 허용값과 의미를 나열하며, 빈 선택값과 실제 선택값을 구분한다.
- 사용자에게 schema version, 셀 이름 매핑, 층·격자 등 플랫폼 내부 정보를 직접 찾아 입력하게 하지 않는다. 설계 의도가 필요한 값에는 임의의 통과용 기본값을 넣지 않는다.
- RTL 파일·포트·버스 bit 같은 반복 항목은 가능한 한 탐색하여 행을 생성한다. 사용자가 목록 문법이나 중첩 구조를 새로 작성하지 않고 각 행의 값만 채우게 한다. 갱신 시에는 기존 입력값을 보존하고 변경 항목을 보여준다.
- 각 필수 칸에는 의미, 단위, 허용값/범위, 값을 찾거나 결정할 방법, 기준 예제의 작성값, 자기 설계에 적용하는 방법을 설명한다. 기준 예제 값을 그대로 써도 되는 조건과 다시 결정해야 하는 조건을 구분한다.
- 아직 배우지 않은 단계의 칸은 해당 단계에 도달했을 때 채우도록 안내한다. 입력값을 결정할 자료가 부족한 경우에는 필요한 자료나 질문을 알려준다.
- 실행 전 검사에서 파일명·키·오류 이유·올바른 작성 예·관련 튜토리얼 위치를 보여준다. YAML 파서의 기술적인 오류 메시지만 표시하지 않는다.

예를 들어, 다음은 양식의 모양을 설명하기 위한 예이며 최종 schema는 공통 계약에서 확정한다.

```yaml
# project.yaml — 따옴표 안의 빈칸만 채운다. 키와 들여쓰기는 유지한다.
project_name: "fir"            # [자동 입력·수정 불필요] 프로젝트 생성 시 입력한 이름
top_module: ""                 # [필수] rtl/ 안에서 합성할 최상위 module 이름
clock_port: ""                 # [필수] 위 module에 선언된 클록 입력 포트 이름
```

이에 대응하는 튜토리얼은 `top_module` 칸에 RTL의 `module 이름 (...)`에서 확인한 이름을 적도록 설명하고, 기준 예제에서는 `shift_reg_8bit`가 들어간 완성본을 보여준다. `clock_port`도 해당 RTL에서 확인하는 방법과 기준 예제의 `clk`를 함께 보여준다. 다른 입력 파일에도 같은 방식의 **빈 양식 + 항목별 안내 + 완성 예**를 제공한다.

`timing.yaml`에서 정규 SDC를 생성하는 방식을 기본으로 한다. 수동 SDC 확장이 필요하면 적용 순서를 명시한다. 생성 SDC를 직접 고쳐 입력 YAML과 모순되는 상태를 만들지 않는다. PDF 예제의 주기·부하·utilization을 모든 설계의 권장값으로 복사하지 않는다.

## 6. 다섯 단계의 개발 계약

M2의 각 담당자는 문서뿐 아니라 **입력 템플릿, 스키마, 실행 코드, 결과 판정, 다음 단계 인계, 예제 실행 근거**를 함께 제공한다. 아래 페이지는 PDF의 인쇄 페이지 기준이다.

| 단계 / 담당 | 사용자가 준비할 내용 | 자동화가 할 일 | 다음 단계로 넘길 산출물 / 통과 조건 |
| --- | --- | --- | --- |
| **01 Synthesis 준비 / A** — PDF 7–13쪽 | RTL·TB, top, clock/reset, timing 설정 | 파일·포트·설정 검사, lint/elaboration, RTL 기능 시뮬레이션, SDC 생성·적용 대상 확인 | 검증된 RTL/TB 목록, 정규 SDC, 기능검증 결과, 입력 manifest. 필수값 누락·존재하지 않는 포트·RTL 오류가 없고 자체 판정 TB 통과. |
| **02 Synthesis 및 PRE-STA / A** — PDF 15–24쪽 | 합성 옵션, 금지/허용 셀, 제약 의도 검토 | Yosys/ABC 매핑, OpenSTA PRE-STA, 면적·셀 사용량 집계, gate-level 기능검증 | 합성 netlist, 동일 제약 SDC, `area.json`, 셀 목록, PRE-STA 보고서, 기능 결과. 미해결 셀/blackbox 없음, 의도하지 않은 latch 없음, 지원 범위 내 타이밍·전기적 제약 충족. |
| **03 Auto P&R 준비 / B** — PDF 26–28쪽 | 핀 배치, core 크기/utilization, 전원·배선·CTS 설정 | 02 인계 검사, 면적 기반 core 산정, site/grid 정렬, 핀·층·전원 연결 계획 검증 | 확정 floorplan/핀 계획, backend 입력, 배치에 사용할 netlist/SDC·PDK 식별. 누락·중복 핀, core/층/격자 위반이 없음. |
| **04 Auto P&R / B** — PDF 30–41쪽 | 혼잡·CTS·route 기준 확인, 필요한 설정 수정 | floorplan, 전원 연결/망, pin place, placement/legalize, CTS, routing, tie/filler, GDS 조립, 배선 기생성분 생성 | 최종 netlist/SDC/DEF/GDS, SPEF 또는 검증된 대체 형식, CTS·route 보고서, checkpoint, 인계 manifest. 미배선/short/불법 배치가 없고 CTS 기준 충족, 최종 파일들의 revision 일치. |
| **05 POST-STA / C** — PDF 43–54쪽 | 분석 코너·검증 조건·선택 PEX 시뮬레이션 조건 확인 | 최종 netlist+SDC+RC로 OpenSTA, P&R 후 기능검증, DRC/LVS, 필요한 PEX·후속 시뮬레이션, 결과 종합 | setup/hold·전기적 제약·coverage 보고서, 기능·DRC/LVS 결과, 추출 범위/근거, 최종 판정과 재실행 안내. 요구된 모든 검증이 실제 실행되어 기준을 충족해야 완료. |

### 단계별로 반드시 설명할 내용

- **01:** RTL과 TB의 기능·리셋·클록 가정, 합성 가능 문법, 미구동 신호, SDC 대상 포트·단위, 입력 slew/부하와 Liberty 범위 확인. 리셋 false path는 적용 범위와 recovery/removal 영향까지 검토한다.
- **02:** Yosys/ABC가 실제 사용하는 제약과 STA 전용 제약의 차이, FF·tie 매핑, 면적의 정의·단위, PRE-STA의 배선/클록 가정, 합성 후 기능 비교. 기능 불일치를 타이밍 제약 완화로 덮지 않는다.
- **03:** `cell area / utilization`은 출발점임을 설명하고 row/site·핀 공간·전원망·CTS 여유를 포함한다. PDF의 높은 utilization 예시를 작은 설계의 기본값으로 쓰지 않는다. 핀은 `dout[0]`처럼 bit 단위로 검증한다.
- **04:** placement/CTS/route 이후의 체크포인트와 netlist 변화를 기록한다. CTS skew·latency·slew/fanout 기준을 설정하고 측정한다. 실제 GDS 셀 형상이 합쳐졌는지 확인한다. SPEF/SDF의 대상 netlist와 클록 배선·내부 셀 지연 포함 범위를 명시한다.
- **05:** PRE/POST 비교, setup/hold와 필요 시 recovery/removal, unconstrained 경로·클록·예외 검사, 기생성분 annotation coverage를 포함한다. STA·기능 시뮬레이션·DRC/LVS·트랜지스터 PEX의 역할을 구분한다.

M2의 POST-STA 담당 C는 PDF의 마지막 장 전체에 있는 **P&R 후 기능검증, DRC/LVS, PEX 연결까지 문서·종합 판정을 책임진다.** 추출 데이터 생성과 기술 설정은 03/04 구현과 연결하고 공통 PDK 설정을 사용한다. 04의 라우터 내부 DRC와 05의 최종 GDS 검증도 구분한다.

### 공통 결과 판정과 재실행

모든 단계는 `stage-result.json`에 `schema_version`, stage/run 식별자, 입력 해시, 도구 버전, 명령, 시작·종료 시각, 출력 경로·해시, 요약 지표, 오류·경고, 상태를 기록한다. 구현 시 필드 이름은 공통 스키마로 확정한다.

| 상태 | 의미 | 다음 단계 처리 |
| --- | --- | --- |
| `passed` | 필수 검증을 실행하여 통과 | 인계 가능 |
| `failed` | 실행 또는 검증 기준 위반 | 원인과 돌아갈 단계 안내, 진행 중지 |
| `blocked` | 입력·모델·도구·RC 자료 부족 등으로 검증 불가 | 필요한 항목 안내, 진행 중지 |
| `estimated` | 근사 RC 등 제한된 조건의 참고 결과 | 정식 통과로 승격하지 않음 |
| `skipped` | 선택 검증을 사유와 함께 생략 | 필수 검증에 사용 불가 |

shell 종료코드만으로 성공을 판단하지 않는다. 도구별 오류와 필수 보고서·산출물·위반 수를 검사한다. 파이프라인 실패를 전달하고, 완료 로그 파일이 있다는 이유만으로 재실행을 생략하지 않는다. 승인된 예외가 있으면 대상·범위·사유·검토자를 별도로 기록하고 원래 위반 수를 보존한다.

RTL 또는 합성에 쓰인 제약이 바뀌면 01/02 이후, core·pin 계획이 바뀌면 03 이후, route/CTS가 바뀌면 04 이후를 무효화한다. 분석 전용 설정만 바뀌는 경우에도 영향 범위를 판별한다. 입력 해시가 달라진 과거 결과를 재사용하지 않는다.

setup/hold 위반 수, WNS/TNS, 미제약 경로, annotation 누락, route/DRC/LVS 오류 등을 도구별 정의와 함께 보고한다. TT만 확인한 결과는 TT 범위의 결과로 표시하고 전 PVT 검증으로 확대 해석하지 않는다.

## 7. 튜토리얼 파일의 공통 형식

Markdown을 원본으로 작성하고 필요하면 HTML로 생성한다. 원본을 두 군데에서 따로 편집하지 않는다. 각 단계 문서에는 다음 항목을 넣는다.

1. 이번 단계의 목적, PDF 대응 페이지, 선행 단계와 완료 조건.
2. 이번 단계에서 받는 파일과 다음 단계에 전달할 파일.
3. 사용자가 빈칸을 채울 설정의 경로·키와, 각 칸의 의미·단위·허용값·필수 여부·값을 결정하는 방법. 빈 양식과 기준 예제의 완성본을 함께 제공한다.
4. 작업 디렉터리, 복사해서 실행할 bash 명령, 도구/환경 조건.
5. 예상 출력, 로그·보고서 위치, 자동 통과 기준과 사람이 검토할 항목.
6. 발생 가능한 증상, 해당 lessons 링크, 진단 명령, 수정 후 다시 시작할 단계.
7. AI가 도움이 되는 시나리오별 사용 시점, 복사·붙여넣기 가능한 프롬프트, 필요한 입력 자료와 기대 결과. 각 프롬프트 옆에 튜토리얼 작성 시 공식 자료로 확인한 권장 모델·effort, 추천 이유, 근거 URL과 확인일을 적는다.
8. `shift_reg_8bit`에 적용한 실제 입력·결과 예와 자기 설계로 바꾸는 방법.

튜토리얼의 명령은 공통 실행기를 호출한다. 같은 Yosys/Tcl/shell 구현을 튜토리얼마다 복제하지 않는다. GUI 화면은 이해를 돕는 보조 자료이며 필수 검증은 가능한 한 CLI에서 실행한다.

## 8. 실패사례·조언을 축적하는 방식

향후 반입 대상은 사용자가 언급한 Basic Tutorial, `ETRI_연구노트`, 「제출 · 설계 · 제작 · 측정 A-Z 가이드」, `MyChip_AI_Starter_Kit_20261106/lessons`이다. 반입 후 중복·버전과 이용 조건을 확인하고 **디지털 흐름에 필요한 내용부터** 정리한다.

`docs/lessons/README.md`에 단계별·증상별 색인을 만들고, 개별 항목은 `LESSON-001-<topic>.md`처럼 안정적인 식별자를 사용한다.

```yaml
id: LESSON-001
title: "문제 또는 조언의 구체적인 이름"
stages: ["02-synthesis-pre-sta", "05-post-sta"]
status: verified  # imported / hypothesis / verified / superseded
source: "원문 상대 경로 또는 URL"
source_pages: "원문의 페이지/절"
platform: nspl05-260820
tool_versions: "재현한 버전"
symptom: "사용자가 보게 되는 로그/현상"
cause: "확인한 원인; 미확인인 경우 구분"
resolution: "해결 방법과 선택 이유"
verification: "재현 및 수정 후 확인 명령·결과"
restart_from: "수정 후 다시 실행할 단계"
evidence: "development/experiments/ 아래 실험 또는 인계 기록"
```

같은 주제라도 다른 PDK·도구 버전의 조언을 일반 규칙으로 합치지 않는다. 원문 인용과 팀의 해석을 구분한다. 잘못된 조언은 삭제만 하지 않고 적용 중단 이유와 대체 항목을 남긴다. 튜토리얼과 AI 프롬프트가 관련 lessons를 명시적으로 읽도록 한다.

첫 검증 사례 후보는 이 문서에서 재현한 `DFFPOSX1` 모델 불일치다. 전체 셀 검증과 처리 방안을 정한 뒤 lessons로 등록한다.

## 9. 튜토리얼 시나리오별 AI 사용 안내 요구사항

이 절은 **향후 튜토리얼에 어떤 AI 안내를 넣어야 하는지**를 정의한다. 구체적인 모델·effort는 각 시나리오의 프롬프트를 작성할 때 공식 자료를 확인하여 정한다.

### 9.1 AI 안내가 필요한 시나리오 식별

M2의 각 담당자는 튜토리얼을 실제로 따라가면서 AI의 도움이 필요한 작업이나 막힐 수 있는 상황을 찾아 안내를 붙인다. 한 단계 안에서도 상황별 프롬프트를 여러 개 제공할 수 있다. 자동 실행만으로 해결되는 작업은 shell 명령으로 안내하고, AI 사용은 선택할 수 있게 한다.

| 단계 | 검토할 시나리오 예 | 프롬프트가 구체적으로 요청할 일 |
| --- | --- | --- |
| 01 | 설계 동작을 정리하고 RTL/TB를 작성하거나 기능검증 실패를 해석해야 함 | 사용자의 기능 명세를 확인하고 RTL·기대값·TB를 작성/검토하거나 최초 불일치를 진단한다. |
| 01/02 | YAML의 타이밍 입력값을 결정하기 어렵거나 SDC 적용 결과가 의도와 다름 | 관련 포트·외부 장치 조건·제약 근거를 확인하고, 필요한 정보와 작성할 칸 또는 수정할 제약을 설명한다. |
| 02 | 합성 매핑·gate-level 기능검증·PRE-STA 실패 | 입력 설정·셀 모델·보고서를 읽어 원인을 구분하고, 최소 수정과 재실행할 단계를 제안하거나 수행한다. |
| 03/04 | 핀·core 계획이 맞지 않거나 CTS·혼잡·라우팅 문제 발생 | 관련 설정과 로그를 검토하여 바꿀 입력 칸과 이유, 재실행 명령, 확인 지표를 제시한다. |
| 05 | POST-STA·RC annotation·DRC/LVS 결과를 해석하기 어려움 | 최종 산출물의 일치와 보고서 근거를 확인하고, 원인·수정 위치·돌아갈 단계·재검증 방법을 설명한다. |

위 표는 시나리오를 찾기 위한 예시다. 실제 튜토리얼의 작업·증상·로그와 연결하여 필요한 항목을 구체화한다.

### 9.2 사용자에게 제공할 프롬프트의 형태

각 시나리오에는 다음 내용을 한곳에서 찾을 수 있게 한다. 프롬프트 본문은 튜토리얼 안의 코드 블록 또는 `docs/prompts/`의 별도 파일로 제공한다.

1. **사용 시점:** 어떤 작업을 할 때 또는 어떤 증상·메시지가 나타났을 때 쓰는지 적는다.
2. **준비할 입력:** agent가 읽을 설정·RTL·TB·로그·보고서의 실제 경로를 적는다. 프로젝트명 등 사용자가 바꿀 부분을 표시한다.
3. **복사·붙여넣기 프롬프트:** 수행할 일, 읽을 자료, 수정 범위, 결과 형식, 검증·재실행 방법을 구체적인 문장으로 작성한다. 사용자가 지시문을 새로 설계할 필요가 없게 한다.
4. **권장 모델·effort:** 그 프롬프트의 작업에 맞는 모델과 설정을 바로 옆에 안내한다. 선정 시점과 근거는 9.3의 기준을 따른다.
5. **기대 결과와 다음 행동:** agent가 어떤 파일·설명·명령을 제공해야 하는지와 사용자가 확인할 결과를 적는다.

실제 제공하는 프롬프트는 가능한 한 프로젝트 경로 등 최소한의 값만 바꿔 사용할 수 있게 한다. 파일에 접근할 수 있는 agent에는 필요한 파일을 직접 읽도록 지시하고, 접근할 수 없는 환경에는 제공해야 할 파일·본문을 명확히 안내한다. 계획서의 추상적인 작업 목록을 그대로 사용자용 프롬프트로 배포하지 않는다.

### 9.3 프롬프트 작성 시 모델·effort를 추천하는 기준

- 해당 튜토리얼·시나리오를 작성하거나 갱신하는 시점에 제공자의 공식 모델 설명, 코딩/agent 활용 안내, 추론 수준·effort 지원 자료를 확인한다.
- 프롬프트별로 권장 모델의 정확한 이름·버전, 실행 환경, 권장 effort, 추천 이유, 공식 근거 URL, 확인일을 함께 기록한다. 사용 환경에서 해당 설정을 지원하는지도 확인한다.
- 공식 자료가 설명하는 일반 능력·지원 설정과, 이를 해당 시나리오에 적용한 작성자의 판단을 구분한다. 공식 자료가 ETRI 설계 작업별 모델을 직접 지정한 것처럼 표현하지 않는다.
- 단계 전체에 한 모델·effort를 일괄 배정하지 않고 실제 작업 난이도와 필요한 도구 사용에 맞춰 안내한다. 대안이 필요하면 동일한 방식으로 근거를 붙인다.
- 모델 교체나 프롬프트 변경 시 관련 공식 자료와 시나리오의 기대 결과를 다시 확인한다.

### 9.4 프롬프트에 포함할 공통 지시

각 시나리오의 구체적인 작업 지시에 다음 원칙을 반영한다.

- 관련 튜토리얼·lessons, 프로젝트 입력, 필요한 단계의 산출물·로그를 확인하고 근거를 제시한다.
- 기능·타이밍 의도가 불명확하면 사용자에게 필요한 정보를 먼저 질문하고 임의의 값으로 채우지 않는다.
- 설정을 바꿀 때는 파일·키·변경 이유를 알려주고, 실행했다면 명령·결과·보고서 위치와 다시 시작할 단계를 남긴다.
- 원본 PDK를 보존하고, 파생 변환이 필요하면 근거와 식별 정보를 기록한다.
- 목표 주기·I/O 조건·기능을 통과 목적으로 임의로 완화하거나, 위반·미지원 항목·실행하지 않은 검증을 숨겨 통과로 처리하지 않는다.

반복 실행·파일 변환·판정은 공통 코드가 수행하고 AI의 자연어 판단을 유일한 합격 기준으로 삼지 않는다.

## 10. 3명의 분담과 인계

M2의 담당자를 A/B/C로 표기한다. 아래는 사람 3명의 튜토리얼·자동화 코드 개발 분담이며 AI sub-agent 병렬 실행 지시가 아니다.

| 담당 | 주 책임 | 담당 파일·검증 | 협업 상대 |
| --- | --- | --- | --- |
| A | 01 Synthesis 준비 + 02 Synthesis 및 PRE-STA | 튜토리얼 01/02, RTL/TB·timing 입력, Yosys/OpenSTA PRE 실행, 면적·셀 목록, 합성 후 기능검증 | B에게 netlist/SDC/area/manifest 전달. C와 기능 모델·제약·STA 정의 공유. |
| B | 03 Auto P&R 준비 + 04 Auto P&R | 튜토리얼 03/04, floorplan/pin/전원/CTS/route, 최종 netlist·GDS·RC 생성 | A의 매핑·면적을 수용. C와 RC 생성·annotation·최종 물리 검증 입력을 공동 검증. |
| C | 05 POST-STA 및 최종 검증 종합 | 튜토리얼 05, OpenSTA POST, P&R 후 기능검증, DRC/LVS·PEX 연결, 최종 판정 | B와 최종 산출물 일관성 확인. A와 전후 제약·셀 모델·테스트벤치 공유. |

M2에서는 담당 단계의 문서와 자동화 코드를 같은 작업 단위로 개발한다. M0·M1에서 준비하고 검증한 폴더 구조·경로·공통 schema·CLI·산출물 이름에 맞춰 구현한다. 공통 계약을 바꿀 때 다른 담당자가 영향을 받는 입력과 인계 예를 같이 갱신한다.

| 인계 | 필수 내용 | 수신자가 확인할 내용 |
| --- | --- | --- |
| A → B | 01/02 `passed`, netlist, 정규 SDC, area와 단위, 셀 목록, PDK/입력 해시 | 모든 셀의 물리 view 존재, 포트·전원 이름, PDK revision, 면적과 floorplan 단위 |
| B → C | 03/04 `passed`, 최종 netlist/SDC/DEF/GDS, RC, CTS/route report, 추출 방식·코너·단위, 해시 | RC/netlist의 instance·net 이름 일치, 최종 revision, annotation 누락, 검증 가능한 GDS·LVS 입력 |
| C → A/B | PRE/POST 비교, 기능/물리 결과, 최초 실패 원인과 재현 명령 | RTL/제약/매핑은 A, core/pin/CTS/route는 B, 검증·추출 설정은 C로 환류 |

상대 단계가 완성되기 전에는 계약 검증용 작은 fixture로 독립 개발할 수 있다. fixture 결과와 실제 P&R 결과를 구분하고, 각 담당 단계의 입력·실행·판정·인계를 검증한다.

## 11. 실행 순서와 진행 현황

실행 계획은 [ROADMAP.md](ROADMAP.md)에서 관리한다. M0 공통 기반·초기 기술 선택·폴더 의존성 조사 → M1 설치·프로젝트 생성·폴더 이행/정리·경로 검증 → M2 단계별 구현 순서와 선행 관계를 그 파일에서 확인한다. M3 기준 예제 통합과 M4 FIR 확장은 후속 작업 후보이며 수행 여부는 추후 결정한다.

각 작업의 ID·상태·검증 근거·다음 행동, M2의 분담, 마일스톤별 완료 조건, 최초 릴리스 체크리스트를 함께 관리한다. 이 문서의 3절에서 설명한 초기 기술 선택도 ROADMAP의 M0-09~12에 포함한다.

## 12. 개발 기록과 완료 판정

`development/` 하나를 개발 과정의 시작점으로 사용한다. 진행 상황은 [ROADMAP.md](ROADMAP.md)의 작업 상태를 갱신하고, 결정·실험·인계의 상세 내용은 하위 폴더에 기록하여 해당 작업에 연결한다. 날짜는 `YYYY-MM-DD`, 기록에는 관련 단계·작업 ID를 붙인다. 이 문서는 목표·요구사항·판정 원칙을 관리한다.

실험 기록의 최소 항목은 **목적, 입력/PDK/도구 버전·해시, 실행 명령·작업 위치, 기대 결과, 실제 결과·로그, 원인 가설과 확인 여부, 변경과 재검증, 다음 행동**이다. 원본의 절대경로에만 의존하지 않게 상대경로·환경 변수를 함께 적는다. 대형 생성물은 재현 방법과 해시·보관 위치를 남긴다.

단계별 개발 완료는 문서 작성만으로 인정하지 않는다. 작성한 입력이 실행 코드에서 실제 사용되고, 실제 결과로 통과·실패가 구분되며, 다음 단계에서 인계 파일을 읽을 수 있어야 한다.

최초 릴리스의 점검 항목·완료 여부·검증 근거는 [ROADMAP의 릴리스 체크리스트](ROADMAP.md#3-최초-릴리스-체크리스트)에서 관리한다.

### 코어 설계 완료와 실제 칩 완성의 구분

기준 PDF는 디지털 코어 구현·검증을 중심으로 한다. **코어 GDS와 TT POST-STA 완료만으로 제작 가능한 전체 칩이 완성되는 것은 아니다.** 후속 칩 수준 작업에는 pad ring, 전원·접지·ESD, 코어와 I/O 전압·구동·타이밍 모델, die 크기, seal ring/제출 조건, bonding/pin map 등을 별도 명세해야 한다.

첫 릴리스는 M0-06에서 검증 가능한 디지털 코어 흐름을 완료 대상으로 채택했다. 이후 `pads_ETRI/`와 새 `ETRI_NSPL_GPIO_250610` 자료를 대조하여 칩 조립·검증·제출 단계로 확장한다. 채택한 코어 범위와 공정 제공자가 요구하는 최종 검증 범위의 차이는 출시 전에 확인하고 README에서 명시한다.

## 부록 A. 최초에 기록할 기술 결정

아래 항목을 검토할 때 [ROADMAP M0](ROADMAP.md#m0-공통-기반과-초기-기술-선택)의 작업에 진행 상태와 결정 기록을 연결한다.

| 결정 항목 | 현재 방향 | 확정에 필요한 근거 |
| --- | --- | --- |
| 기본 PDK | NSPL 260820 디지털 12T 세트 사용을 목표로 함 | 전 view 대응·셀 기능·물리 연결 검증 |
| 원본 PDK 관리 | 저장소 외부 참조 + 식별/해시, 파생물 분리 | 이용·재배포 조건, 팀의 설치 경로 |
| P&R backend | 기존 QFlow 재사용부터 평가 | 새 LEF/격자, CTS, route, RC·GDS 인계 최소 실험 |
| PRE/POST-STA | OpenSTA를 명시적으로 호출 | 버전 고정, 공통 SDC 지원, 보고서 판정 |
| 배선 기생성분 | SPEF 우선 평가, 검증된 SDF 대안 가능 | RC 자료 출처·단위·정확도·annotation coverage |
| 최종 DRC/LVS | 오픈소스 검증 경로 구축 | 규칙 항목별 범위, 층·소자·전원 매핑, 정상·오류 fixture 검증 |
| 제공 FF 모델 | 불일치 재현, 처리 방안 미확정 | 셀별 진리표/이벤트/리셋 검증, 원본·Liberty·필요 시 회로 근거 대조 |
| 입력 형식 | 생성된 YAML의 빈칸 작성, JSON 결과, 정규 SDC 생성 | 칸별 튜토리얼·완성 예, 공통 스키마·도구 지원 범위 |
| 기준 예제 | `shift_reg_8bit`, 이후 FIR | 사용자 합의 완료; 실제 5단계 회귀 검증 필요 |
| 첫 릴리스 범위 | [M0-06](decisions/001-initial-support-environment.md): 단일 클록·단일 5 V 디지털 코어, Ubuntu 24.04 LTS x86_64 CLI를 채택 | 관측 버전의 최종 lock·깨끗한 빌드·전체 흐름은 후속 검증. chip-top은 별도 범위 |

## 부록 B. DFFPOSX1 기능 모델 불일치 재현

이 재현은 설치된 Icarus Verilog와 **원본** 새 PDK 모델을 사용한다. 저장소 루트에서 실행하며 생성물은 임시 디렉터리에만 쓴다. 정상적인 상승 에지 FF 기준값과의 불일치를 관찰하는 진단 코드다.

```bash
PDK_DIGITAL="$(cd ../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR && pwd -P)"
CELL_MODEL="$PDK_DIGITAL/VERILOG/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std.v"
ETRI_REPRO_DIR="$(mktemp -d /tmp/etri-ff-repro.XXXXXX)"

cat > "$ETRI_REPRO_DIR/tb.v" <<'VERILOG'
`timescale 1ns/1ps
module tb;
  reg clk = 0, d = 0;
  reg expected;
  wire q;
  DFFPOSX1 dut (.D(d), .CLK(clk), .Q(q));
  always @(posedge clk) expected <= d;
  initial begin
    #5 clk = 1;
    #5 clk = 0;
    #2 d = 1;
    #3 clk = 1;
    #1;
    $display("D=%b Q=%b posedge_reference=%b", d, q, expected);
    if (q !== expected) $display("MISMATCH");
    $finish;
  end
endmodule
VERILOG

iverilog -s tb -o "$ETRI_REPRO_DIR/simv" "$ETRI_REPRO_DIR/tb.v" "$CELL_MODEL"
vvp "$ETRI_REPRO_DIR/simv"
```

2026-11-14 관찰 결과: `D=1 Q=0 posedge_reference=1`, `MISMATCH`. 제공 모델의 `DFFPOSX1` 선언은 새 PDK의 `VERILOG/*_std.v`, 비교 대상 정의는 `LIB/*_std_tt.lib`의 `cell(DFFPOSX1)` 및 `ff(IQ,NIQ)` 항목에서 확인할 수 있다.
