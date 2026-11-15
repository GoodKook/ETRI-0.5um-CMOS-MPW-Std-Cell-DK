# PDK 자료와 기존 조사 근거

기존 PLAN의 자료 조사·관측과 최소 재현을 옮긴 참고 문서다. 목표는 [PLAN.md](PLAN.md), 상세 요구사항은 [REQUIREMENTS.md](REQUIREMENTS.md), 실행 순서·상태는 [ROADMAP.md](ROADMAP.md)를 따른다. 관측과 당시 한계를 기록하며 새 설계 검증의 통과를 선언하지 않는다.

## 1. 직접 확인한 현재 상태

### 1.1 확인한 자료와 한계

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
| [새 PDK의 표준셀 원 설계](../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std/) | OpenAccess schematic/symbol/layout, `tech.db`, 메타데이터와 thumbnail을 확인했다. [기존 M0-08 조사·한계](experiments/M0-08-sequential/scope-review/README.md#12t_std-폴더에서-확인한-것)와 [전체 파일 해시](experiments/M0-08-sequential/scope-review/results/native-views.json)를 대조했고, 활용 범위는 [1.5절](#15-12t_std-원-설계의-활용과-검증-범위)에 정리한다. |
| [ETRI 제공 묶음 전체와 PDF 재대조](experiments/pdk-package-review/README.md) | 전체 14,050개 파일을 해시로 식별하고 주요 소스 96개, Calibre/Assura 규칙·RC·소자 모델·GPIO/패드·기술 설정을 조사했다. PDF 54쪽의 텍스트와 41·45·51쪽 이미지를 제공 Util/SDC와 대조했다. 구성별 활용·제외 범위는 [1.6절](#16-etri-제공-묶음-전체의-활용)에 정리한다. |

새 PDK는 현재 저장소 **외부의 형제 디렉터리**인 `../NSPL_05CMOS_PDK_260820/`에 있다. 그 안의 `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/`를 `PDK_DIGITAL`, `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std/`를 `PDK_STD`로 부른다. 이는 설명용 약칭이며 기존 환경 변수가 아니다. 두 경로를 같은 배포본의 export와 원 설계 자료로 함께 식별하되, 이름·버전 표기만으로 내용의 동등성을 확정하지 않는다.

작업공간 루트의 `tutorial.pdf`는 기준 PDF와 SHA-256이 같았다: `0c84b85d426213d37a551cf00834de4a0300442b5b22f7ccd82a0ae2980a191b`. 표지 제목은 `0.5um Digital CMOS 2P3M 5V Design Basic Tutorial`, Version 1.0이며, 문서 이력은 2026-08-18이다. 사용자가 지정한 이 PDF를 다섯 단계의 기준으로 사용하며 별도 Basic Tutorial 자료의 재확보를 기다리지 않는다.

사용자가 나중에 제공할 실패사례·조언 자료는 이번에 추가 탐색하거나 내용을 수집하지 않았다. 현재 `docs/ETRI_연구노트/`의 존재는 확인되었지만, 본 계획의 세부 조언 근거로 그 내용을 사용하지 않았다. 아직 제공되지 않은 자료를 읽었다고 가정하지 않는다.

### 1.2 현재 도구와 경로

아래는 계획 수립 당시 확인이다. 2026-11-15의 OS·도구 전체 조사, 관측 버전과 향후 고정 조건의 구분은 [M0-06 결정](decisions/001-initial-support-environment.md)과 [실측 기록](experiments/M0-06-environment/README.md)을 참조한다.

- `yosys`, `qflow`, `graywolf`, `qrouter`, `magic`, `netgen`, `sta`, `iverilog`, `verilator`, `klayout` 명령의 존재를 확인했다. `openroad`는 현재 PATH에서 발견되지 않았다.
- 실제 버전 조회 결과는 Yosys `0.71+4` (`02365349e`), OpenSTA `3.2.0`이다. **향후 지원 버전을 이 값으로 확정한 것은 아니다.**
- 새 TT Liberty는 Yosys `read_liberty -lib`에서 38개 셀을 읽었고, OpenSTA `read_liberty`에서도 오류 없이 읽혔다. 이는 입력 형식의 기본 호환성만 확인한 것이다.
- 현재 `~/ETRI050_DesignKit`은 이 저장소를 가리킨다. QFlow의 `/usr/local/share/qflow/tech/etri050/`도 이 링크를 경유하여 기존 `digital_ETRI/`와 `tech/`를 참조한다.
- M0-09에서 새 PDK로 합성·배치·배선·GDS 인계의 제한된 최소 실험을 통과했다. [실제 실행과 한계](experiments/M0-09-qflow/README.md)를 따르며, CTS·검증된 RC·POST-STA·최종 DRC/LVS를 포함한 전체 흐름은 후속 검증 대상이다.

### 1.3 새 PDK와 기존 라이브러리의 차이

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
| 배선 RC | 기존 LEF·파라미터에 RC 값 있음 | 새 기술 LEF에는 RC 키워드가 없고 ITF/TLU+, 묶음 내 ICT/MIPT·QRC/Calibre RC 자료 별도 제공 | 제공 자료의 출처·단위·정의 차이·변환·검증 방식을 정한다. 데이터 부재로 단정하거나 옛 값을 묵시적으로 재사용하지 않는다. |
| PEX 자료 | 기존 Magic 추출 유틸리티 | 셀별 `.pex.netlist` 34개와 Calibre/Assura의 전체 추출용 자료 | 셀 내부 PEX, 설계 배선 RC와 트랜지스터 PEX를 구분한다. 상용 deck의 존재를 오픈소스 추출 통과로 간주하지 않는다. |

새 Liberty 단위는 시간 `ns`, 정전용량 `pF`, 전압 `V`, 전류 `µA`, 저항 `kΩ`이다. 각 도구·파일 형식의 단위 변환을 공통 설정에서 관리한다.

### 1.4 우선 해결할 실제 문제

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

### 1.5 `12T_std` 원 설계의 활용과 검증 범위

`PDK_STD`에는 `.oalib`의 `oaDMFileSys` 선언과 `schematic/sch.oa`, `symbol/symbol.oa`, `layout/layout.oa`가 있는 **OpenAccess 원 설계 라이브러리**가 있다. 2026-11-15 재확인에서 전체 385개 파일의 SHA-256이 [기존 M0-08 manifest](experiments/M0-08-sequential/scope-review/results/native-views.json)의 `file_hashes`와 모두 같았다. `.oa` 107개, `.png` 105개, `.tag` 108개, `.dm` 61개 외에 `tech.db`와 라이브러리·잠금 파일 등이 있다. 아래 대응은 파일 경로와 export의 셀 선언을 대조한 결과이며, OA 내부 연결을 해석한 결과는 아니다.

| 원 설계 자료 | 이번에 확인한 대응 | 활용과 후속 확인 |
| --- | --- | --- |
| 셀별 `layout/layout.oa` | Liberty·LEF의 38개 셀 이름 모두에 대응하는 layout이 있다. 라이브러리 이름과 같은 별도 layout 1개가 있어 총 39개다. | 셀 형상·핀·전원·층과 GDS/LEF export 대응을 조사할 원본으로 보존한다. 별도 layout의 용도는 미확인으로 두며 39번째 합성 셀로 세지 않는다. |
| 셀별 `schematic/sch.oa`, `symbol/symbol.oa` | 각각 34개이며 셀 이름 집합은 CDL·Verilog의 34개와 같다. FILLX1..4에는 두 view가 없다. | 순차 셀의 에지·제어·핀 의미, 조합 셀·클록 버퍼·tie 셀의 회로를 확인할 근거로 연결한다. FILL의 기능 view 부재는 물리 전용 셀 정책으로 처리한다. |
| `tech.db`, `.dm`, `.tag`, thumbnail | 기술 DB·관리 정보와 128×128 미리보기가 있다. 순차 4셀의 12개 thumbnail은 기존 M0-08에서 확인했다. | 기술 DB는 층·단위·연결 기술의 조사 대상으로 보존한다. 이름·`strings`·thumbnail만으로 정확한 연결, GDS 동등성 또는 배선 RC 수치를 확정하지 않는다. |

기본 디지털 실행 입력은 `PDK_DIGITAL`의 Liberty·LEF·Verilog·CDL·GDS와 검증된 기술 어댑터다. `PDK_STD`는 **원 설계 추적·불일치 진단·물리 view 대조**에 활용한다. 현재 PATH에 `oa2ascii`, `oaScan`, `virtuoso`가 없고 전체 OA 연결을 읽은 근거도 없으므로, OA와 export의 회로 동등성·LVS 통과는 미확인이다. OA `.oa`와 OASIS 레이아웃 형식도 구분한다.

M0-13의 플랫폼·인계 명세에는 두 경로, 배포 식별·해시, 원본/파생물 관계, 실제 사용 view와 확인 수준을 담는다. `파일 존재·이름 일치`, `도구 판독`, `기능 대조`, `물리 연결 검증`을 구별한다. M0-14와 M1의 정리에서는 외부 원 설계와 기술·관리 파일을 보존하고 `platforms/`의 참조·색인으로 연결한다. 상용 EDA나 OA reader 설치를 기본 디지털 흐름의 필수 조건으로 추가하지 않는다.

M0-08의 현재 단일 클록·reset-only 프로파일에 대한 모델 처리 결정은 [결정 002](decisions/002-sequential-functional-models.md)를 유지한다. 특정 원 설계 연결·revision과 export의 불일치가 후속 DRC/LVS·PEX에서 쟁점이 될 때만, 사용 가능한 reader나 이미 제공된 ASCII CDL/GDS의 대응 근거를 먼저 확인하고 부족한 부분의 export·확인 자료를 요청한다. OA 원본의 존재를 이유로 재특성화나 검증을 완료 처리하지 않으며, 원본 전체의 재제공을 개발 시작의 선행 조건으로 요구하지 않는다. `tech.db`의 존재도 M0-10의 CTS·최종 배선 RC 검증을 대신하지 않는다.

### 1.6 ETRI 제공 묶음 전체의 활용

사용자가 `NSPL_05CMOS_PDK_260820/` 전체를 ETRI 제공 파일로 지정했다. 이 묶음을 공정 자료의 출발점으로 삼고 디지털 PnR 하위 폴더 밖의 규칙·모델도 함께 참조한다. [전체 조사·PDF 대응·재실행 기록](experiments/pdk-package-review/README.md), [범위별 해시와 주요 소스](experiments/pdk-package-review/results/inventory.json)에 근거를 남겼다. 전체 14,050개 파일의 조사 전후 해시가 같았으며, 아래는 필요한 텍스트 선언·스크립트와 GDS 구조를 확인한 범위다. 전체 OA/바이너리 의미나 대량 calibration 로그를 모두 검증했다는 뜻은 아니다.

| 제공 자료 | 현재 활용 | 범위·남은 확인 |
| --- | --- | --- |
| `PDK_DIGITAL/Util/`, `VERILOG/`, `SDC/` | 기준 RTL/TB·제약, 핀/면적 산정, track·전원·tie·CTS·filler·GDS/STA 인계의 출처 | 상용 명령·수동 복사는 새 입력/자동화 계약으로 옮긴다. 예제 값·오류 무시·제약 완화는 자동 채택하지 않는다. |
| `Calibre/{DRC,ANT,LVS,LVL,PEX}/`, `Assura/{DRC,LVS}/` | 공정 규칙·층/소자/전원·추출 연결의 근거 | 필요한 core 규칙을 출처 rule ID와 연결해 오픈소스 경로를 검증한다. 적용 가능한 antenna/ERC와 미이식 범위를 함께 공개한다. |
| `TECH/*.itf`, `TLU/`, `Calibre/PEX/{MIPT,LPE_LIB}/`, `Assura/QRC/` | 층 두께·저항/유전체·기생성분 기술 자료와 typical/best/worst RC 후보 | 자료는 이미 있다. 단위·층·코너·정의 차이, 선택한 추출기의 입력 변환과 최종 annotation 검증은 남아 있다. TLU+/qrcTechFile·보호된 RC payload는 미판독이다. |
| `Model_Parameter/`, 아날로그 `pcell/std_lay/std_sch`, 루트 기술·map 파일 | LVS/추출 소자·핀 대응과 선택 SPICE/PEX의 출처 | SPICE/Spectre MOS 코너는 디지털 Liberty 코너와 구분한다. 전체 아날로그 실습·PCell 재구현·셀 재특성화는 현재 core 개발 선행 조건이 아니다. |
| `ETRI_NSPL_GPIO_250610/`·GDS, `MPW_PAD_28pin/`·GDS | 후속 IO/pad·seal ring·칩 조립의 확보된 참고 자료 | GPIO와 pad GDS를 KLayout으로 읽었다. 첫 코어 흐름에 pad ring을 강제하지 않으며 IO 모델·전원/ESD·제출 적합성은 별도 검증한다. |
| `cds.lib`, Assura 설정·표시·관리 파일과 calibration 생성물 | 제공 환경과 기술 연결의 추적·보존 | 제공자 절대경로를 그대로 source하지 않는다. calibration `.log/.rpt`는 설계 DRC/LVS 통과 근거나 매 실행의 필수 입력으로 쓰지 않는다. |

`icc2_cts_cmd.tcl`의 CTS 후보는 `CLKBUFX2`, `CLKBUFX4`, `INVX8`이며, `icc2_start_cmd.tcl`에는 MET1/2/3 track, PG rail/mesh, tie fanout 설정이 있다. 후속 실험은 이 근거를 먼저 대조하고 필요한 backend 어댑터만 만든다. RC 자료 간에 폭·절연층 두께·저항 표현 차이가 있어 키 이름과 숫자만 치환하지 않는다. [선언·수치 차이·실행 관측](experiments/pdk-package-review/README.md#바로-사용할-수-있는-기술-근거와-남은-변환)을 따른다.

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
