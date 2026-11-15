# M0-06 실행 환경 조사

- 확인일: 2026-11-15 (Asia/Seoul)
- 목적: 설치된 OS·도구·경로·외부 PDK를 확인하여 최초 지원 대상과 향후 고정 조건의 근거를 남긴다.
- 결정: [최초 지원 환경](../../decisions/001-initial-support-environment.md)
- 실제 결과: [observed-2026-11-15.json](observed-2026-11-15.json). 명령 argv, 작업 디렉터리, 종료코드, 원문 출력, 실행 파일·주요 PDK 파일 SHA-256을 포함한다.

## 재실행

저장소 루트에서 Python 표준 라이브러리만 사용한다. 설치·sudo·다운로드·원본 변경은 없다. 도구가 파일을 생성하더라도 임시 디렉터리에 한정하고 종료 시 지운다. JSON에 적힌 `/tmp/etri-m0-06-*`는 당시 작업 위치이며 보존 경로가 아니다. OpenSTA Tcl 입력은 아래 코드에 명시되어 있어 재생성할 수 있다.

```bash
python3 development/experiments/M0-06-environment/collect.py \
  --pdk-root ../NSPL_05CMOS_PDK_260820 > /tmp/etri-environment.json
python3 -m json.tool /tmp/etri-environment.json > /dev/null
```

`--pdk-root`를 생략하면 스크립트 위치에서 저장소의 형제 PDK를 계산하므로 호출한 작업 디렉터리에 의존하지 않는다. 다른 시스템은 실제 PDK 위치를 지정한다. 기존 기록을 덮어쓰지 않고 새 파일로 비교한다. 수집기는 도구 누락·조회 실패도 JSON에 남기므로 자체 exit 0을 환경 합격 판정으로 사용하면 안 된다. M1의 doctor를 구현한 것은 아니다.

## 기대 결과와 실제 결과

기대는 도구별 실제 실행 경로·버전 확보, 기존 링크와 외부 PDK 확인, 새 TT Liberty의 기본 읽기 재확인이다. RTL·SDC를 넣은 설계 실험은 이 작업의 입력에 포함하지 않았다.

| 확인 | 실제 결과·해석 |
| --- | --- |
| OS/CPU | Ubuntu 24.04.5 LTS, x86_64, WSL2 커널, glibc 2.39. 상세 패키지 revision도 기록. |
| EDA 조회 | Icarus/vvp, Yosys/ABC, OpenSTA, QFlow, QRouter, Magic, Netgen, KLayout, Verilator, ngspice의 버전 확보. 전체 소스 commit은 대부분 아직 미확인. |
| GrayWolf | `-h`가 미지원으로 exit 65. 실행 가능성과 바이너리 해시만 확인. 버전 미확인으로 남김. 배치 실행 실패의 증거는 아님. |
| QRouter | 첫 수동 `qrouter -v`는 DISPLAY `:0` 연결 실패. 설치 wrapper를 읽어 batch 옵션을 확인하고 `qrouter -h`로 재조회하여 `1.4.90.T`, exit 0 확인. `-nog -v`에서도 배너는 나오지만 `-v`가 인수를 요구하므로 수집기는 도움말 명령을 사용. 배선은 실행하지 않음. |
| GTKWave | `--version`은 exit 0이지만 GTK 초기화 실패 메시지로 버전 확보 불가. GUI 미검증으로 남김. |
| OpenROAD | 현재 PATH에 없음. 시스템 전체에 설치 파일이 없다는 주장과 구분. |
| Liberty smoke | Yosys `read_liberty -lib`는 38개 셀 import, exit 0. OpenSTA `read_liberty`는 오류 없이 `LIB_READ_COMPLETED`, exit 0. 시작 배너에서 `3.2.0 f2e10f1da1`도 확인. 합성·타이밍 검사 통과를 뜻하지 않음. |
| PDK/링크 | 새 PDK는 외부 형제 경로. 주요 view 17개와 QFlow 아카이브 해시 기록. 기존 QFlow 기술 링크 11개가 기존 라이브러리를 가리키며 모두 유효함을 확인. |

수집기 `liberty_smoke`는 임시 작업 디렉터리에서 다음 입력을 재생성한다.

```text
yosys -p 'read_liberty -lib "<PDK_DIGITAL>/LIB/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std_tt.lib"'
sta -no_init -exit <temporary>/read-lib.tcl

# read-lib.tcl
read_liberty {<PDK_DIGITAL>/LIB/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std_tt.lib}
puts LIB_READ_COMPLETED
exit
```

버전 문자열만 같아도 빌드가 다를 수 있어 실행 파일 SHA-256을 함께 남겼다. QRouter처럼 wrapper가 실행하는 구성 요소는 별도 해시도 기록했지만, 이는 설치 전체의 lock이 아니다. 소스·submodule·빌드 의존성·설정의 고정은 M1-01에서 수행한다.

기존 `Tools/build_tools.sh`, `prerequisites.sh`, `DK_env`, 개별 빌드 스크립트를 읽어 무고정 `git pull`, 시스템 upgrade/autoremove, 고정 홈 경로, Ubuntu-24 KLayout 패키지, QFlow 아카이브 및 전역 링크 의존성을 확인했다. 설치 스크립트는 실행하지 않았다. PDK `shift_reg_8bit.v`의 상승 에지/비동기 active-low reset과 Liberty의 5 V/25 °C도 읽어 지원 대상과 대조했다.

원인·변경: GUI 조회 실패는 배치 도움말을 사용해 QRouter 버전 조사 범위에서 해소했다. GTKWave는 선택 도구로 실패를 보존했다. 공유 라이브러리·PDK·시스템 링크·설치 파일은 수정하지 않았다. 다음 행동은 M0-07/08의 view·순차 모델 검증과 M0-09/10의 실제 backend 적합성 실험이며, 구체적인 지원 승격 조건은 결정 기록에 있다.

## 기록 자체의 확인

수집기를 저장소 루트에서 실행한 뒤 `/tmp`에서도 절대경로와 명시적 `--pdk-root`로 재실행했다. 두 JSON의 도구 실행 파일 해시·PDK 17개 파일 식별·기존 링크 12개(홈 링크 포함)가 일치했다. Liberty 38개 import 및 OpenSTA 완료 출력·exit 0, QRouter 도움말 exit 0, GrayWolf exit 65, OpenROAD PATH 누락, GTKWave 초기화 실패가 기록과 일치함을 검사했다. JSON 파싱, 새 문서의 상대 파일 링크, `git diff --check`도 확인했다. 다른 OS나 깨끗한 호스트에서 재현한 결과는 아니다.
