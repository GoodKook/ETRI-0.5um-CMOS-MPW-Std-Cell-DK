# A/B/C 작업 시작 안내

기준일: **2026-11-15**. 작업 순서와 상태는 [ROADMAP](../ROADMAP.md)에서 관리한다. M0·M1의 준비 후 M2에서 세 사람이 동시에 조사·튜토리얼 초안을 작성하고, M3에서 각자 YAML·실행 코드·검증을 구현한다.

이 문서는 시작 자료와 준비 기준을 제공한다. 담당별 폴더·문서 틀과 접근 확인 결과는 M1 작업을 수행하면서 아래에 연결한다. 이 안내가 있다는 사실만으로 [M2 착수 기준](../ROADMAP.md#m2-착수-기준)이 충족된 것은 아니다.

## 공통 준비

1. **M0-10~13:** 기존 지원 범위·성공/실패·미해결 질문과 담당, stage ID·입출력 종류·단위, 실제 결과/예시 구분 규칙을 이 문서에 정리한다. 별도 스키마·실험 보고서를 새로 만들 필요는 없다.
2. **M0-14:** 새 작업 폴더와 기존 예제·PDK·조사의 경로를 작은 대응표로 연결한다.
3. **M1-01~07:** 현재 환경·자료 접근 방법, 담당별 폴더·다섯 튜토리얼의 목차·기준 예제 참조·공통 변경 절차와 README 시작점을 준비한다.
4. **M1-08:** 실제 파일·목차·링크·자료 접근으로 M2 착수 기준을 확인하고 근거를 연결한다.

전체 YAML·스키마·CLI·프로젝트 생성기·setup/doctor·신규 인계 fixture는 M3에서 작성한다. 기존 실험·원본 PDK·미사용 legacy는 보존한다.

## 담당별 첫 자료와 작업

| 담당 | 먼저 읽을 자료 | M2 조사·튜토리얼 초안 | M3 구현 |
| --- | --- | --- | --- |
| **A / 01·02** | [현재 셀 기능 프로파일](../experiments/M0-08-sequential/scope-review/README.md), [기존 합성·P&R 입력](../experiments/M0-09-qflow/README.md), [지원 환경](../decisions/001-initial-support-environment.md) | RTL/TB·입력 제약·합성·PRE-STA·기능검증·면적과 B 인계 항목 | 공통 기반·생성기와 project/timing YAML·스키마·01/02 실행·검증 |
| **B / 03·04** | [M0-09 성공 범위](../experiments/M0-09-qflow/README.md), [M0-10 실제 시도](../experiments/M0-10-cts-rc/README.md), [상세 후속 F1~F6](../experiments/M0-10-cts-rc/FOLLOW_UP.md), [제공 묶음 색인](../experiments/pdk-package-review/README.md) | backend 후보·floorplan·핀·PG·CTS·route·GDS·RC의 절차·제약·해결 후보 | pins/physical YAML·스키마·backend 선택·03/04 실행·RC 생산 |
| **C / 05** | [기존 annotation 검사기](../experiments/M0-10-cts-rc/annotation.py), [OpenSTA 분석 Tcl](../experiments/M0-10-cts-rc/sta.tcl), [fixture 검증 범위](../experiments/M0-10-cts-rc/results/annotation-probe/validation.json), [공정 규칙/RC 색인](../experiments/pdk-package-review/README.md) | annotation·POST-STA·P&R 후 기능·DRC/LVS·적용 ANT/ERC·PEX 범위와 판정 | verification YAML·스키마·05 실행·종합 판정, B와 RC 정확도·물리 인계 검증 |

M2에서는 자기 자료로 독립적으로 초안을 작성한다. 필요한 YAML 입력 칸은 목록으로 제안하고, 미결정 항목은 담당·확인 방법을 적는다. B의 실제 배선 산출물을 기다리지 않고 C의 조사·문서를 진행할 수 있다.

## 작업 경로와 공통 규칙

| 구분 | 사용할 위치·규칙 |
| --- | --- |
| 튜토리얼 | `docs/tutorials/01-synthesis-preparation.md`, `02-synthesis-pre-sta.md`는 A, `03-pnr-preparation.md`, `04-auto-pnr.md`는 B, `05-post-sta.md`는 C |
| 구현 | `flow/stages/<stage-id>/`와 `templates/digital/`의 담당 단계 파일. M1에서 진입점을 만들고 M3에서 구현 |
| 참고 자료 | 위 표의 기존 실험·결정·PDK 색인. 기준 RTL/TB/SDC와 실제 PDK 경로는 M1에서 접근 확인 후 연결 |
| A → B | 합성 netlist·정규 SDC·area/단위·셀 목록·PDK 식별 |
| B → C | 최종 netlist/SDC/DEF/GDS·배선 RC·CTS/route 보고서·추출 조건/단위/코너 |
| 공통 변경 | README·공통 스키마·플랫폼 설정은 변경 주도자와 영향받는 담당자가 함께 확인. 담당별 브랜치 등 충돌 방지 방식은 M1-04에서 명시 |
| 근거 구분 | 확인한 사실·제안·미확인과 실제 실행·예시·fixture를 구분. 문서 초안 완료와 실제 설계 통과를 구분 |

실제 파일명·키·스키마·manifest·해시 계약과 유효/오류 fixture는 M3에서 생산자·수신자가 구체화한다. 공통 준비에서는 위 입출력의 종류와 단위만 짧게 정리한다.

## M0-10에서 확인한 사실

- **실제로 확인:** CTS CLKBUFX4 3개·8 sinks·비반전 2단 연결, 기능 650비교, fixture의 annotation 누락/partial 검출. 설치·버전·재현 근거는 실험 디렉터리에 있다.
- **실제 배선 미완료:** TritonRoute의 DRT-0073 pin access, QRouter의 `_1_`·`clknet_1_0__leaf_clk` 미배선 2개. 종료 0을 성공으로 해석하지 않는다.
- **원자료는 있음:** ITF/TLU+·ICT/p2lvsfile·MIPT/실제 LPE_LIB·Assura calibration 숫자. 검증된 NSPL OpenRCX 변환/rule·reference 비교는 없음.
- **범위 한계:** 보정 패턴은 5,829 net의 기하 생성만 완료. 실제 배선 SPEF와 물리 skew/slew·POST-STA는 미검증/blocked다. 인위적인 SPEF는 실제 배선 RC가 아니다.

| M3에서 확인할 항목 | 생산·수정 주도 | 공동 확인/수신 |
| --- | --- | --- |
| F1 pin access·PG·route | B | C가 최종 도형/연결 검증과 연계 |
| F2~F4 RC 해석·rule·기준 비교 | B가 생산 경로를 구성 | C가 조건·정확도·판정 범위를 공동 검증 |
| F5 실제 SPEF annotation | C | B가 동일 최종 netlist/DEF/SPEF·해시 제공 |
| F6 CTS·최종 timing | B가 클록 구현·지표 제공 | C가 실제 RC로 POST-STA·coverage 판정, 제약은 A와 공유 |
| 최종 backend 선택·지원 한계 기록 | B | C와 인계 검토, 공통 계약 영향은 A/B/C 협의 |

SPEF 우선으로 평가하며 SDF 병행 생성을 필수화하지 않는다. RC 단위·코너·pin-cap 포함 범위와 파일 식별은 B/C가 실제 구현에서 함께 확정한다. M0-10 진단 코드와 `.cache/M0-10/`은 기존 경로에서 참고용으로 보존하며 공통 flow나 필수 설치로 그대로 채택하지 않는다.
