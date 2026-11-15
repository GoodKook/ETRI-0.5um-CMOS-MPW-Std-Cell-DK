# A/B/C 독립 개발을 위한 준비·이관 안내

기준일: **2026-11-15**. 사용자 지시에 따라 공통 준비를 빠르게 마치고 상세 조사·튜토리얼·자동화를 세 담당자가 병행 개발하도록 범위를 재정렬했다. 상태표는 [ROADMAP](../ROADMAP.md)에서 관리한다.

**이 문서는 인계할 범위와 시작 자료를 정리한 것이다. 공통 계약·프로젝트 생성기·폴더 이행과 M1-08 검증은 아직 미완료다.** 아래 자료를 먼저 읽으며 조사할 수 있고, 공통 구조에서의 정식 병행 개발은 [M2 착수 기준](../ROADMAP.md#m2-착수-기준)을 확인한 뒤 시작한다.

## 지금 공통 준비가 할 일

1. **M0-13:** stage ID, 공통 YAML 키·단위·단계별 필수값, CLI·입출력 이름, 결과 상태·해시와 실제/fixture 구분을 최소 v1로 작성한다. backend 고유 키는 확장 지점으로 둔다.
2. **M0-14:** 팀이 사용할 코드·예제·PDK/모델의 기존→목표 경로와 필수 참조만 우선 정한다. 기존 inventory를 재사용한다.
3. **M1:** 공통 setup/doctor, 프로젝트 생성·입력 오류 처리, 자체 완결 RTL/TB, 필수 경로 이행·참조 수정과 계약 fixture를 구현하고 실제 확인한다.
4. **M1-08:** 각 담당자의 시작 파일·명령·입출력·미해결 소유자를 연결하고 착수 기준의 실행 근거를 기록한다.

최종 backend 선정, 실제 CTS/배선 RC·POST-STA 통과, 미사용 legacy 전체 이동·삭제는 이 준비의 선행조건이 아니다. 아직 없는 M2 실행은 blocked와 이유를 반환하도록 만들고, fixture의 계약 검사 성공을 실제 설계의 passed로 쓰지 않는다.

## 담당별 첫 자료와 본작업

| 담당 | 먼저 읽을 자료 | 맡을 구현·문서 |
| --- | --- | --- |
| **A / M2-01** | [현재 셀 기능 프로파일](../experiments/M0-08-sequential/scope-review/README.md), [기존 합성·P&R 입력](../experiments/M0-09-qflow/README.md), [지원 환경](../decisions/001-initial-support-environment.md) | 01/02의 RTL/TB·입력 제약·합성·PRE-STA·기능검증. B에 netlist/SDC/area·단위·셀 목록·해시를 전달 |
| **B / M2-02** | [M0-09 성공 범위](../experiments/M0-09-qflow/README.md), [M0-10 실제 시도](../experiments/M0-10-cts-rc/README.md), [상세 후속 F1~F6](../experiments/M0-10-cts-rc/FOLLOW_UP.md), [제공 묶음 색인](../experiments/pdk-package-review/README.md) | 03/04의 최종 backend 선택, floorplan/PG/tie·pin access·CTS·route·GDS·배선 RC 생성. 이관한 M0-10~12의 생산 경로·결정 기록을 인수 |
| **C / M2-03** | [기존 annotation 검사기](../experiments/M0-10-cts-rc/annotation.py), [OpenSTA 분석 Tcl](../experiments/M0-10-cts-rc/sta.tcl), [fixture 검증 범위](../experiments/M0-10-cts-rc/results/annotation-probe/validation.json), [공정 규칙/RC 색인](../experiments/pdk-package-review/README.md) | 05의 annotation·POST-STA·P&R 후 기능·DRC/LVS·적용 ANT/ERC와 종합 판정. B와 RC 정확도·최종 물리 인계를 공동 검증 |

M2에서 사용할 `docs/tutorials/01~05`, `flow/stages/`, `examples/`, `platforms/` 등의 실제 파일과 초기 틀은 M0-13/14·M1에서 준비할 대상이다. 이 표가 그 파일들의 현재 존재·구현 완료를 뜻하지 않는다.

## M0-10에서 이어받을 사실

- **실제로 확인:** CTS CLKBUFX4 3개·8 sinks·비반전 2단 연결, 기능 650비교, fixture의 annotation 누락/partial 검출. 설치·버전·재현 근거는 실험 디렉터리에 있다.
- **실제 배선 미완료:** TritonRoute의 DRT-0073 pin access, QRouter의 `_1_`·`clknet_1_0__leaf_clk` 미배선 2개. 종료 0을 성공으로 해석하지 않는다.
- **원자료는 있음:** ITF/TLU+·ICT/p2lvsfile·MIPT/실제 LPE_LIB·Assura calibration 숫자. 검증된 NSPL OpenRCX 변환/rule·reference 비교는 없음.
- **범위 한계:** 보정 패턴은 5,829 net의 기하 생성만 완료. 실제 배선 SPEF와 물리 skew/slew·POST-STA는 미검증/blocked다. 인위적인 SPEF는 실제 배선 RC가 아니다.

| 후속 | 생산·수정 주도 | 공동 확인/수신 |
| --- | --- | --- |
| F1 pin access·PG·route | B | C가 최종 도형/연결 검증과 연계 |
| F2~F4 RC 해석·rule·기준 비교 | B가 생산 경로를 구성 | C가 조건·정확도·판정 범위를 공동 검증 |
| F5 실제 SPEF annotation | C | B가 동일 최종 netlist/DEF/SPEF·해시 제공 |
| F6 CTS·최종 timing | B가 클록 구현·지표 제공 | C가 실제 RC로 POST-STA·coverage 판정, 제약은 A와 공유 |
| 최종 backend 선택·지원 한계 기록 | B | C와 인계 검토, 공통 계약 영향은 A/B/C 협의 |

## 독립 개발과 실제 인계의 구분

C는 B의 배선 완료 전에도 표시된 fixture로 입력/이름 검사, 보고서 판정, 오류 검출과 문서 초안을 개발할 수 있다. 실제 설계의 POST-STA·물리 검증 완료에는 B의 실제 산출물이 필요하다. A→B와 B→C의 최소 계약 fixture는 M0-13에서 공통으로 제공하며, 정상·오류 입력을 함께 둔다.

기본 인계는 SPEF 우선으로 준비하고 SDF 병행 생성을 필수화하지 않는다. RC 단위·코너·pin-cap 포함 범위와 최종 파일 이름/해시는 B/C가 함께 확정한다. schema 변경은 생산자·수신자가 인계 예와 함께 수정한다.

## 기존 작업의 정리 방침

M0-10 실험 디렉터리·최초 실패·후속 시도·실제 결과와 원본/공유 링크 보존 근거는 **현재 경로에서 보존**한다. 공통 준비에서는 추가 실험을 멈추고 B/C의 선택적 참고 자료로 둔다. 특정 핀 이름·근사 RC·종료 2가 들어 있는 진단 코드를 사용자용 공통 flow에 그대로 편입하지 않는다.

`.cache/M0-10/`의 로컬 설치·큰 생성물도 참고용으로 남기고 기존 ignore 규칙을 유지한다. 공통 필수 설치나 검증된 기본 backend로 승격하지 않는다. 이번 정리에서 원본 PDK·기존 공유 라이브러리·실험 결과를 삭제하거나 전체 변경을 원복하지 않는다.

M0-10~12의 작업 상태 **이관**과 과거 설계 결과 **blocked**는 서로 다른 기록이다. 실제 검증이 끝나면 연결한 M2-02/03/05에 실행 근거를 남긴다. 현재 인계 안내만으로 공통 준비나 M2가 완료된 것은 아니다.
