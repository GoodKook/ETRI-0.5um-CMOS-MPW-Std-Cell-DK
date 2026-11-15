# 최초 지원 환경과 버전 고정 조건

- 결정일: 2026-11-15 (Asia/Seoul)
- 관련 작업: [ROADMAP M0-06](../ROADMAP.md#m0-공통-기반과-초기-기술-선택)
- 결정 성격: 최초 개발·릴리스의 지원 대상과 검증 조건을 채택한다. 현재 환경 전체가 재현·물리 검증을 통과했다는 선언은 아니다.
- 근거: [환경 조사·재실행 방법](../experiments/M0-06-environment/README.md), [실측 명령·출력·해시](../experiments/M0-06-environment/observed-2026-11-15.json), PLAN 1~3절·5절·12절. 외부 최신 버전을 추천하는 작업이 아니라 로컬 설치 및 기존 설치 스크립트를 대조한 결정이다.

## 채택한 OS와 실행 조건

최초 지원 프로파일은 **Ubuntu 24.04 LTS / x86_64 / Linux CLI / NSPL 260820 디지털 12T / TT 디지털 코어**로 정한다. 현재 확보된 재현 기준 호스트는 WSL2의 Ubuntu 24.04.5 LTS다. 배치 실행을 필수 경로로 하며 GUI는 선택한다. 동일 Ubuntu의 native Linux도 지원 대상으로 삼되, 깨끗한 native 환경에서 설치·최소 예제를 검증하기 전에는 검증된 환경으로 표기하지 않는다. 현재 WSL2조차 전체 RTL-to-GDS 검증 완료 상태가 아니다.

| 구분 | 실제 관측 | 지원·재현 조건 |
| --- | --- | --- |
| OS | `/etc/os-release`: Ubuntu 24.04.5 LTS, `VERSION_ID=24.04`, noble | 최초 배포판 계열은 24.04 LTS로 제한. point release·패키지 revision은 실제 검증 시 기록하며 전체 계열의 무조건 호환을 주장하지 않음. |
| 커널·CPU | Linux `6.18.33.1-microsoft-standard-WSL2`, `x86_64` | WSL2를 기준 호스트로 사용. 커널을 EDA 소스 버전처럼 고정하지 않으며 변경 후 최소 회귀 확인. Windows host/WSL 애플리케이션 버전은 이번 Linux 셸에서 조사하지 않음. |
| 파일 시스템 | 저장소 `/home/wbyoon/snu_ssc/ETRI-0.5um-CMOS-MPW-Std-Cell-DK` | WSL 내부 Linux 파일 시스템에서 실행. 첫 경로 계약은 공백·셸 특수문자 없는 절대경로, 대소문자 구분. `/mnt/c` 등 Windows 드라이브·네트워크 파일 시스템은 미검증. |
| 기본 런타임 | glibc `2.39`, Bash `5.2.21`, Python `3.12.3`, Tcl/Tk `8.6.14`, tcsh `6.24.10` | 기존 QFlow는 tcsh와 Tcl/Tk를 쓰므로 bash만으로 의존성을 충족했다고 판단하지 않음. 정확한 패키지 revision은 실측 JSON에 보존. YAML/schema 의존성은 M0-13/M1-01에서 추가 고정. |
| 빌드 환경 | GCC 실행 파일 `13.3.0`, Clang `18.1.3`, CMake `3.28.3`, GNU Make `4.3`, Git `2.43.0` | 관측값이며 깨끗한 빌드의 검증값은 아님. `gcc` 메타패키지 버전과 실제 컴파일러 버전을 구분. 빌드 도구·개발 헤더·옵션도 M1-01 lock에 포함. |
| 화면 | 현재 `qrouter -v`는 DISPLAY 연결 실패, GTKWave도 GTK 초기화 실패 | 필수 CLI에는 유효한 DISPLAY를 요구하지 않음. QRouter는 `-h` 또는 `-nog` 경로 사용. GUI/WSLg/X11은 별도 선택 검증. |

Ubuntu 이외 배포판, Ubuntu 다른 주 버전, ARM64, macOS, Windows 직접 실행, Docker/컨테이너 배포는 최초 보장 범위에서 제외한다. 현재 자료는 apt와 Ubuntu-24용 KLayout 패키지를 사용하므로, 조사한 Ubuntu 24.04에서 재현 경로를 먼저 줄이는 것이 타당하다. 컨테이너나 다른 배포판을 지금 추가하면 별도 설치·GUI·PDK 마운트 검증이 필요하다. CPU 수·RAM·디스크 최소치는 전체 빌드·예제를 측정한 뒤 제시하며 임의의 수치를 만들지 않는다.

## 설계와 검증의 경계

첫 릴리스의 완료 대상은 **표준셀 기반, 단일 상승 에지 클록, 단일 5 V 전원 도메인의 작은 동기식 디지털 코어**다. 기준은 `shift_reg_8bit`, 확장은 FIR이며, FIR 전체 실행과 M3/M4의 수행 여부는 기존 ROADMAP의 후속 결정 사항을 유지한다. 크기 상한은 아직 측정하지 않았으므로 임의의 gate 수를 지원 성능으로 약속하지 않는다.

기준 RTL의 `clk`, active-low 비동기 `rst_n`, `din`, `dout[7:0]`를 확인했다. 이 리셋 형태는 지원 검증 대상에 포함하되, M0-08의 순차 셀·비동기 제어 검증과 후속 recovery/removal 검사 전에는 통과로 취급하지 않는다. 리셋·주기·I/O delay·부하는 설계별 입력이며 예제 수치를 모든 설계의 기본값으로 복사하지 않는다.

최초 프로파일은 합성 가능한 RTL과 레지스터/조합 논리로 제한한다. 다중 클록·CDC, 생성/게이팅 클록, DDR·래치 기반 설계, SRAM 등 hard macro, 다중 전압·전원 차단, 복잡한 DFT는 별도 검증 전 미지원으로 명시하고 M0-13/M1 입력 검증에 반영한다. 아날로그·HLS·FPGA·보드 실습과 pad ring/ESD/seal ring/bonding/MPW 제출은 첫 코어 흐름의 완료 대상에서 제외한다. 디지털 DRC/LVS·추출에 필요한 모델은 보존한다.

타이밍 범위는 제공 Liberty의 **TT, 5 V, 25 °C**다. 전 PVT signoff나 제작 가능한 chip-top 완료를 의미하지 않는다. 셀 모델 불일치, CTS, 최종 배선 RC, GDS merge, DRC/LVS 규칙 이식은 미검증이다. CTS 부재는 ideal clock, 근사 RC는 `estimated`, 필수 자료 부족은 `blocked`로 구분하며 POST-STA 통과로 바꾸지 않는다. 오픈소스 EDA만 필수로 사용하고 AI는 선택 사항으로 유지한다.

## 현재 설치 버전과 향후 고정할 버전

아래 **설치값은 후속 검증을 시작할 후보**다. 버전 문자열·실행 파일 해시가 있다고 소스 재빌드가 재현되는 것은 아니다. 표의 후보는 모두 아직 최종 지원 버전으로 고정하지 않았다. 후보 변경은 실패 재현 또는 적합성 근거와 함께 기록한다.

| 도구·역할 | 현재 PATH와 실측 버전 | 향후 고정 대상·채택 조건 |
| --- | --- | --- |
| Icarus Verilog / vvp — 필수 기능검증 | `/usr/local/bin/iverilog`, `/usr/local/bin/vvp`: `14.0 (devel)`, `s20260301-986-gaf170a0b5` | 이 revision을 우선 후보로 전체 commit·소스 해시 확보. M0-08의 순차 셀 검사 및 M1-05의 자동 판정 TB로 검증. devel을 이유 없이 stable 버전으로 추정·대체하지 않음. |
| Yosys + ABC — 필수 합성 | `/usr/local/bin/yosys`: `0.71+4`, `02365349e`; `/usr/local/bin/yosys-abc`: ABC `1.01`, 빌드일만 출력 | Yosys 전체 commit과 submodule/ABC 전체 revision을 한 세트로 고정. ABC `1.01`만으로 식별 불충분. 새 12T 합성·gate 기능검증으로 후보 채택. |
| OpenSTA — 필수 PRE/POST 분석 | `/usr/local/bin/sta`: `3.2.0`, 시작 배너 `f2e10f1da1` | 전체 commit·CUDD 등 빌드 의존성·옵션 고정. 정규 SDC, PRE 분석, 최종 RC annotation 검사 필요. 자동 생성되는 QFlow 예시 SDC는 사용 기준으로 삼지 않음. |
| QFlow — P&R 평가 후보 | `/usr/local/bin/qflow`: `1.4 revision 100` | 동봉 ETRI 아카이브 `1.4.100_etri050`와 SHA-256을 후보 입력으로 사용. 설치본이 그 아카이브와 동일하다는 검증은 미실시. M0-09~12에서 backend 채택 시에만 필수 lock에 포함. |
| GrayWolf — 배치 후보 | `/usr/local/bin/graywolf`: 실행 확인, `-h` 미지원(exit 65), 버전/commit 미확인 | 실행 파일 SHA-256만 확보. 소스 revision을 복원·재빌드하여 M0-09에서 검증해야 고정 가능. 버전을 추정하지 않음. |
| QRouter — 배선 후보 | `/usr/local/bin/qrouter`: `-h`에서 `1.4.90.T` | 전체 소스 revision, Tcl wrapper와 `qrouter.so` 등 구성 요소 고정. M0-09/10의 배선·RC 검증 필요. |
| OpenROAD — CTS/P&R 평가 후보 | 현재 PATH에서 없음 | 버전 미지정. M0-10~12의 실험·경로 선택 후 사용할 경우 전체 commit/submodule·빌드 의존성 고정. 설치만으로 PDK CTS/RC 지원을 인정하지 않음. |
| Magic — GDS/추출·물리검증 후보 | `/usr/local/bin/magic`: `8.3.698` | 소스 revision과 검증된 NSPL 기술·추출 설정을 함께 식별. 기존 ETRI tech 파일을 새 PDK용으로 간주하지 않음. |
| Netgen — LVS 후보 | `/usr/local/bin/netgen`: `1.5.328` | EDA Netgen임을 배너로 확인. 소스 revision·NSPL setup·정상/오류 LVS fixture를 함께 검증. |
| KLayout — GDS 검사 CLI, GUI 선택 | `/usr/bin/klayout`: `0.30.7`; dpkg `0.30.7-1` | 현 설치 스크립트의 Ubuntu-24 `klayout_0.30.7-1_amd64.deb`를 후보로 사용. 실제 패키지 다운로드 해시와 GDS batch 검증 후 고정. DRC 담당 도구는 backend/규칙 검증에 따름. |
| Verilator — 선택 lint/보조 시뮬레이션 | `/usr/local/bin/verilator`: `5.055 devel`, `v5.054-219-g12ce86083` | 사용할 경우 전체 revision과 예제 호환성 확인. SystemC/GSL을 디지털 필수 경로에 묵시적으로 추가하지 않음. |
| GTKWave — 선택 GUI | `/usr/local/bin/gtkwave`: 존재, 버전 조회는 GTK 초기화 실패 | 버전 미확인. GUI 환경에서 재조회·파형 열기 후 선택 프로파일에 고정. exit 0을 GUI 정상으로 해석하지 않음. |
| ngspice — 선택 트랜지스터 시뮬레이션 | `/usr/local/bin/ngspice`: `47`, KLU 빌드 | 선택 PEX 시뮬레이션에 채택 시 소스·모델·옵션 별도 고정. 필수 배선 RC 생성을 대체하지 않음. |

지금 확정하는 것은 도구 역할과 후보를 검증할 조건이다. 최종 P&R 한 가지와 추출/물리검증 조합은 M0-09~12의 실험으로 정한다. M0-06을 마쳤다는 이유로 M0-11/12의 backend 결정까지 완료하지 않는다.

M1-01의 목표 `flow/toolchain.lock.json`에는 채택한 각 도구의 전체 commit 또는 원본 아카이브/패키지 URL+SHA-256, submodule, 빌드 옵션, 의존성·컴파일러 버전, 설치 prefix, 패치 해시, 실행 파일 식별과 검증 로그를 넣는다. 현재는 이 lock과 setup/doctor가 아직 없다. 기존 `Tools/*_build.sh`의 `git pull`은 버전 고정이 아니며, OpenSTA 스크립트의 CUDD `3.0.0` checkout도 현재 링크된 CUDD의 증거가 아니다. 기존 광범위 upgrade/autoremove 스크립트는 이번에 실행하지 않았다.

## PDK와 경로 계약

원본은 외부에 보존하고 **`PDK_ROOT`를 NSPL 배포 묶음 루트로 지정**한다. 디지털 하위 폴더만을 `PDK_ROOT`로 혼동하지 않는다. 다음은 현재 셸에서 쓸 수 있는 경로 설정 예이며 설치·환경 파일을 변경하지 않는다.

```bash
# 저장소 루트에서 실행
export PDK_ROOT="$(cd ../NSPL_05CMOS_PDK_260820 && pwd -P)"
PDK_DIGITAL="$PDK_ROOT/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR"
```

관측된 `PDK_ROOT`는 `/home/wbyoon/snu_ssc/NSPL_05CMOS_PDK_260820`이다. LIB/LEF/GDS/VERILOG/CDL/TECH/TLU/SDC의 주요 파일 17개 경로·SHA-256은 실측 JSON에 있다. 이는 묶음 전체 inventory가 아니며, M0-07에서 셀별 PEX·소자 모델·물리 원본까지 필요한 view를 확장 식별한다. 폴더명의 `260820`, `V1p1`, `12T`만으로 동일 PDK라고 인정하지 않는다. 권한·이용·재배포 조건도 별도 확인하고 미확인 원본을 저장소나 공개 이미지에 복제하지 않는다.

현재 `~/ETRI050_DesignKit`은 이 checkout을 가리키며 `/usr/local/share/qflow/tech/etri050/`의 11개 링크는 이 홈 링크를 통해 기존 `tech/`와 `digital_ETRI/`를 참조한다. 조사 시 모두 대상이 존재했다. 이 링크와 기존 `DK_HOME`/`DK_STD_CELL`은 호환 경로이며 새 NSPL 플랫폼의 선택 수단으로 사용하지 않는다. 현재 셸에 `Tools/DK_env`를 source하거나 링크를 수정하지 않았다. 새 실행기는 저장소 위치와 명시적 PDK 경로를 계산하고, M0 실험은 별도 플랫폼 어댑터·임시 디렉터리를 사용한다.

## 지원 검증을 닫는 조건과 재검토

1. **M0-07/08:** PDK view·셀·핀·전원·층·단위·해시를 대응시키고, 기준 RTL에 필요한 순차 셀과 비동기 리셋을 실제 자동 판정한다. 원본/파생 모델의 식별을 보존한다.
2. **M0-09~12:** 동일 PDK·작은 코어로 합성→배치→CTS→배선→GDS, 최종 netlist/RC 이름·단위·annotation을 검증하여 backend 하나를 선택한다. 혼합 경로면 왕복 보존도 검사한다. RC/DRC 범위 부족은 명시하고 통과시키지 않는다.
3. **M0-13, M1-01:** 위 지원 범위를 입력 검사와 필수/선택 프로파일에 반영한다. 깨끗한 Ubuntu 24.04 x86_64 WSL2에서 고정 입력으로 빌드·재실행·실패 전파·doctor·PDK 검사를 수행한다. native Ubuntu는 별도의 같은 검사 후 검증 목록에 추가한다. 네트워크·sudo 필요 단계와 로그를 기록한다.
4. **M1-04/05/08:** 다른 작업 위치·다른 checkout/PDK 경로에서 실행하고 기존 홈 링크 없이 동작하는지 확인한다. 중복 생성·미지원 설정·빈칸·없는 PDK를 거부하고 RTL 자동 판정 TB가 기능 오류를 검출하는지 확인한다. 경로 이행 후 동일 최소 실험을 다시 수행한다.
5. **M2 및 릴리스:** 필수 기능검증·PRE/POST-STA·CTS·GDS·DRC/LVS·배선 RC의 정상/오류 입력을 실행하고 검증 범위를 공개한다. 실제 전체 회귀 작업은 ROADMAP에서 수행하기로 정한 범위에 연결한다. 이 결정만으로 R-01 등 릴리스 체크를 표시하지 않는다.

PDK 해시·필수 도구·OS/아키텍처 변경, 현재 후보의 기능/형식 실패, CTS/RC/DRC 지원 부재, 새 PVT·다중 클록·chip-top 요구가 생기면 관련 근거를 다시 확인하고 결정을 갱신한다. 버전만 올린 뒤 이전 통과 결과를 재사용하지 않는다.
