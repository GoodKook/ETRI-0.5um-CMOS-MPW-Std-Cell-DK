# A/B/C 작업 시작 안내

기준일: **2026-11-15**. 작업 순서와 상태는 [ROADMAP](../ROADMAP.md)에서 관리한다. M0·M1의 준비 후 M2에서 세 사람이 동시에 조사·튜토리얼 초안을 작성하고, M3에서 각자 YAML·실행 코드·검증을 구현한다.

이 문서는 M0-10~13의 기존 근거 색인·최소 작업 규칙과 M0-14의 [작업 경로·원본 참조 계획](#m0-14-작업-경로와-원본-참조)을 제공한다. 실제 폴더 생성과 담당별 접근 확인 결과는 M1 작업을 수행하면서 아래에 연결한다. 이 안내가 있다는 사실만으로 [M2 착수 기준](../ROADMAP.md#m2-착수-기준)이 충족된 것은 아니다.

## 공통 준비

1. **M0-10~13:** 아래에 기존 지원 범위·성공/실패·미해결 질문과 담당, stage ID·입출력 종류·단위, 근거 구분·공통 변경 규칙을 정리했다. 완료 범위는 준비 문서이며 실제 CTS/RC·POST-STA의 미완료 판정은 유지한다.
2. **M0-14:** 아래 한 표에 새 작업 폴더·담당 파일과 기존 예제·PDK·조사의 원래 경로, M1에서 연결·확인할 방법을 정리했다. 폴더 생성·담당별 접근 확인은 미실행이다.
3. **M1-01~06:** 현재 환경·자료 접근 방법, 담당별 작업 폴더·기준 PDF/예제 참조·공통 변경 절차와 README 시작점을 준비한다. 튜토리얼의 목차·본문은 M2에서 각 담당자가 자율적으로 구성한다.
4. **M1-07:** 실제 작업 폴더·예정 편집 경로·참고 링크·자료 접근으로 M2 착수 기준을 확인하고 근거를 연결한다.

전체 YAML·스키마·CLI·프로젝트 생성기·setup/doctor·신규 인계 fixture는 M3에서 작성한다. 기존 실험·원본 PDK·미사용 legacy는 보존한다.

## 확인 범위와 미해결 질문

아래 사실은 **기존 결정·실험 기록에서 확인한 범위**다. 이번 준비에서 EDA를 재실행하거나 inventory·해시를 다시 생성한 결과가 아니다. 과거 문서의 M0/M1 실험·선정·lock 일정은 당시 기록으로 보존하며, 현재 작업 시점은 [ROADMAP](../ROADMAP.md)과 [CODEX_GUIDE 1.2](../CODEX_GUIDE.md#12-모든-실행-프롬프트에-적용할-공통-규칙)를 따른다.

| 출발 근거 | 확인한 사실·채택 범위 | 미해결 질문·다음 담당 |
| --- | --- | --- |
| [결정 001](../decisions/001-initial-support-environment.md) | Ubuntu 24.04 LTS x86_64 CLI, 단일 상승 에지·단일 5 V 코어, TT 5 V/25 °C를 최초 지원 대상으로 채택. 설치 버전은 검증 후보 | 새 Ubuntu 환경에서 어느 도구 버전·설정으로 같은 기준 예제를 재현할 수 있는가? 아래 질문 1. pad ring·다중 클록·전 PVT signoff는 범위 밖 |
| [결정 002](../decisions/002-sequential-functional-models.md), [제한 프로파일의 실제 매핑·기능 결과](../experiments/M0-08-sequential/scope-review/README.md) | DFFPOSX1 및 S=1인 reset-only DFFSRX1 사용. 기준 async-reset RTL은 DFFSRX1 8개, RTL/파생 모델 650비교 통과; 원본 모델 602불일치 보존 | 실제 합성 결과가 허용 셀·S=1 제한을 지키고, 비동기 reset 해제 타이밍까지 검사되는가? 아래 질문 2. M08-D1~D5의 추가 자료는 필요 발생 시 조건부 조사 |
| [M0-07 view 대응·한계](../experiments/M0-07-pdk-inventory/README.md), [PDK 원 설계 활용 범위](../PDK_REFERENCE.md#15-12t_std-원-설계의-활용과-검증-범위) | 실행용 `12T_PnR` export와 `12T_std` OA 원 설계 구분. LEF S 방향 2건·Verilog 제어 핀 3건 불일치 조사 | 각 도구가 읽는 논리·핀·레이아웃이 같은 셀을 뜻하는가? 아래 질문 3. OA 전체 판독이나 모든 셀 검증은 착수 조건이 아님 |
| [M0-09 최소 경로](../experiments/M0-09-qflow/README.md), [실제 결과](../experiments/M0-09-qflow/results/result.json), [GDS 검사](../experiments/M0-09-qflow/results/gds-check.json) | QFlow→GrayWolf→QRouter→별도 DEF/전원 adapter→KLayout 최소 실험 통과. 16 instance·21 net·93 endpoint, 검사 범위의 셀 누락/open/short 0 | 기존 예제를 위해 넣은 보정 중 무엇을 정식 흐름에서 유지·검증해야 하는가? 아래 질문 4. 최소 GDS 인계 성공과 최종 공정 검증은 구분 |
| [M0-10 실제 시도](../experiments/M0-10-cts-rc/README.md), [실제 판정](../experiments/M0-10-cts-rc/results/result.json), [후속 F1~F6](../experiments/M0-10-cts-rc/FOLLOW_UP.md) | CTS 연결·기능과 annotation fixture 검출만 확인. 실제 route/RC/POST-STA는 미완료 | 배선이 막힌 이유는 무엇이며, 배선 RC 계산과 최종 타이밍을 무엇으로 검증할 것인가? 아래 질문 5~8. M2는 조사, M3-03/04는 구현·실험 |
| [전체 PDK/PDF 조사](../experiments/pdk-package-review/README.md), [기존 inventory](../experiments/pdk-package-review/results/inventory.json) | 전체 14,050파일·주요 소스 96개·PDF 54쪽 조사. Util CTS/track/PG, ITF/TLU+·ICT/p2lvsfile·MIPT/실제 LPE_LIB, Calibre/Assura 규칙 확보 | 어느 RC 자료를 어떤 단위로 변환하고 무엇과 비교할 것인가? 제공 공정 규칙 중 무엇을 실제 검사했는가? 아래 질문 6·7·9. 자료 전체 재제작은 선행조건이 아님 |

## 미해결 질문의 뜻과 확인 방법

위 표의 질문을 아래와 같이 풀어 쓴다. **현재 남은 문제와 앞으로 확인할 방법**이며, 해결 결과를 새로 얻었다는 뜻은 아니다. M2에서는 기존 근거로 조사·초안을 작성하고, 실제 도구 설치·흐름 구현·추가 CTS/RC 실험·최종 선정은 해당 M3 작업에서 수행한다.

1. **다른 환경에서도 같은 설계 결과를 다시 만들 수 있는가?** 현재 설치된 프로그램의 버전과 실행 경로는 기록돼 있다. 하지만 버전 문자열이 같다고 빌드에 쓴 소스·라이브러리·옵션까지 같다는 뜻은 아니다. 예를 들어 GrayWolf는 정확한 소스 revision이 아직 확인되지 않았고, 현재 설치 전체를 깨끗한 환경에서 재현한 근거도 없다.

   **확인 방법·담당:** A/B/C가 자기 단계에 필요한 도구의 소스·패키지 식별과 빌드 조건을 조사한다. M3-06에서 새 지원 환경에 설치해 기준 예제를 실행하고 단계별 기능·연결·타이밍 판정을 재현할 수 있는지 확인한다. 설치 성공과 설계 검증 성공은 따로 기록한다. 출발 근거는 위 결정 001이다.

2. **기능 비교를 통과한 회로가 실제 클록·리셋 조건에서도 안전한가?** 파생 기능 모델의 비교 통과는 지연을 넣지 않은 논리 동작의 확인이다. 기준 회로의 DFFSRX1은 S를 1로 묶어 사용하지 않는 set을 비활성으로 유지한다. R에 연결된 `rst_n`은 실제로 쓰는 비동기 reset이므로, reset 해제가 클록 에지에 너무 가까울 때의 시간 조건인 recovery/removal까지 확인한 것은 아니다.

   **확인 방법·담당:** A는 합성 netlist의 허용 셀·단일 클록·S=1 연결과 RTL/gate 기능 비교 방법을 정리한다. A/C는 reset을 클록과 어떤 관계로 해제한다고 가정할지 명시하고, M3-02/04에서 유효한 setup/hold·recovery/removal 검사가 빠지지 않는지 확인한다. reset 경로를 분석에서 제외하는 false path로 실패를 감추지 않는다. 이중 set/reset 동작의 지원이나 재특성화가 필요해질 때만 결정 002의 조건부 추가 자료를 조사한다.

3. **합성·배치배선·회로 검증에 쓰는 파일들이 같은 셀과 핀을 가리키는가?** Liberty는 기능·타이밍, LEF는 배치 크기·핀 위치, GDS는 실제 도형, CDL은 회로 연결을 제공한다. 이름이나 셀 개수가 같아도 이 내용이 일치한다고 단정할 수 없다. 실제로 FAX1/HAX1의 S 핀 방향과 일부 제공 Verilog의 제어 핀 이름에 불일치가 있었고, OA 원 설계와 export 전체의 연결 동등성도 확인되지 않았다.

   **확인 방법·담당:** A/B/C는 실제 사용 셀부터 핀 이름·방향·전원과 원본/파생 파일의 대응을 대조한다. 이후 실제 물리 검증에서 GDS에서 읽은 회로 연결과 소스 회로가 맞는지 확인한다. 특정 연결이 설명되지 않을 때 해당 원 설계를 참조하며, OA 전체를 읽거나 모든 셀을 재검증해야 M2를 시작할 수 있는 것은 아니다. 출발 근거는 위 M0-07과 PDK 원 설계 활용 범위다.

4. **M0-09의 보정 경로를 정식 P&R 흐름으로 쓰려면 무엇을 더 책임져야 하는가?** 기존 성공은 DEF 형식·전원 표현을 별도로 보정하고 KLayout으로 GDS를 조립한 경로다. QFlow를 그대로 실행한 전체 흐름의 성공과는 범위가 다르다. 층마다 배선 격자의 시작 위치가 보존되는지, 셀을 놓는 줄인 ROW 정보가 전달되는지, 빈틈을 채우는 filler의 전원·well 연결이 맞는지도 남아 있다.

   **확인 방법·담당:** B는 M2-02에서 기존 보정 중 필요한 부분과 유지보수 범위를 조사하고, C와 최종 검증 입력을 대조한다. M3-03에서 QFlow 보완·OpenROAD·혼합 후보 중 실제 CTS·배선·RC·최종 인계 조건을 충족하는 한 경로를 선택한다. 모든 후보의 완성을 요구하지 않으며, 선택 이유와 남는 제한을 기록한다. 출발 근거는 위 M0-09와 아래 후보표다.

5. **셀 핀이 있는데 왜 배선이 붙지 않으며, 어떤 수정이 필요한가? — F1** pin access는 핀에 배선이나 층간 연결인 via를 공정 규칙에 맞게 붙일 수 있는 위치를 뜻한다. TritonRoute는 일부 CLK·버퍼 입력 핀에서 이 위치를 찾지 못했다. 혼합 후보의 QRouter는 S=1을 전달하는 `_1_`과 클록 가지 `clknet_1_0__leaf_clk` 두 선을 연결하지 못했다. 어느 도형·격자·간격 조건이 원인인지는 아직 확정되지 않았다.

   **확인 방법·담당:** B는 M2에서 실패 핀 하나의 원 LEF/GDS, via 크기·덮임·간격, 배치 후 주변 셀과 전원선을 대조해 원인 후보를 좁힌다. M3-03에서 근거가 있는 배치·격자·접근 경로 수정을 실험하고, C와 최종 도형의 미배선·단선·단락 및 netlist 연결을 확인한다. 장애물 선언이나 간격 규칙을 지워 오류만 없애는 것을 해결로 보지 않는다. 상세 근거는 기존 FOLLOW_UP의 F1이다.

6. **제공된 RC 숫자는 정확히 무엇을 뜻하며, 어느 자료를 변환해 쓸 것인가? — F2** RC는 배선의 저항 R과 정전용량 C다. ITF·ICT·MIPT 등에 숫자는 있지만, 같은 이름의 항목이 같은 물리 조건·단위를 뜻하는지는 확인이 필요하다. 예를 들어 VIA1의 ITF RPV=1.5와 p2lvsfile의 `res=2, unit_area=0.36`은 같은 크기·개수의 via를 뜻하는지와 면적 정규화 방식부터 확인해야 한다. 디지털 Liberty의 TT와 RC typical도 서로 다른 조건이므로 이름만으로 하나로 합치지 않는다.

   **확인 방법·담당:** B/C가 M2에서 실제 사용하는 MET1~3·VIA1~2의 원자료·층·단위·코너·적용 범위를 조사한다. M3-03/04에서 선택한 자료를 추출기 입력으로 옮기는 변환을 구현·검증한다. 의미가 불명확한 특정 항목만 추가 설명을 요청하며 원자료 전체를 다시 요청하지 않는다. 상세 근거는 기존 FOLLOW_UP의 F2다.

7. **추출된 RC가 맞다는 것을 무엇과 비교하고, 어느 정도 차이를 허용할 것인가? — F3/F4** 5,829개 보정 패턴은 비교용 배선 형상을 만든 결과이며 RC 정확도 시험의 통과 개수가 아니다. 현재는 그 형상에 대한 신뢰할 수 있는 기준 RC와 추출 결과를 비교한 근거가 없다. 계산이 실행되거나 SPEF 파일이 생겼다는 사실만으로 값의 정확도를 판단할 수 없다.

   **확인 방법·담당:** B/C는 기존 calibration 자료를 기준값으로 해석할 수 있는지부터 조사한다. M3에서 출처·단위·형상을 추적할 수 있는 기준값을 확보하고, 배선/via 저항·접지에 대한 C·이웃 선 사이의 coupling C를 비교한다. 보정에 쓰지 않은 별도 형상도 확인하고 실제 설계의 폭·간격·층이 검증 범위에 드는지 대조한다. 허용 오차는 기준 데이터의 정확도와 분석 용도에 근거해 비교 전에 정하며, 지금 임의의 합격률을 넣지 않는다. 상세 근거는 기존 FOLLOW_UP의 F3/F4다.

8. **실제 배선 RC가 올바른 회로에 빠짐없이 반영되고, 그 상태에서 타이밍을 만족하는가? — F5/F6** annotation은 SPEF의 RC를 netlist의 해당 선·핀에 연결하는 작업이다. 현재 fixture 시험은 일부 RC나 핀 이름을 일부러 바꿨을 때 검사기가 누락을 찾는지만 확인했다. 실제 최종 netlist/DEF/GDS/SPEF 묶음은 아직 없다. 클록 버퍼의 논리 연결·기능이 맞아도 각 플립플롭에 도착하는 클록 지연과 그 차이인 skew가 허용 범위인지까지 확인된 것은 아니다.

   **확인 방법·담당:** M3에서 B는 같은 최종 배선에 대응하는 파일과 RC 생성 조건을 넘기고, C는 이름·단위·코너·revision과 annotation 누락을 확인한다. 그 후 실제 버퍼·배선 지연을 반영해 클록 도착 차이, 신호 전이 시간인 slew, 부하·fanout과 setup/hold·reset recovery/removal을 판정한다. A/B/C가 설계 의도에 맞는 skew 목표도 정해야 하며, 기존 uncertainty 값을 그대로 허용 skew로 쓰지 않는다. 실제 배선과 검증된 RC가 없으면 이 판정은 계속 blocked다. 상세 근거는 기존 FOLLOW_UP의 F5/F6다.

9. **최종 GDS가 공정 규칙과 원래 회로를 만족한다는 것은 어디까지 검사했는가?** M0-09의 도형 연결 검사는 명시한 범위의 셀 누락·단선·단락을 확인했다. 공정 규칙에 따른 전체 DRC나 트랜지스터 연결을 비교하는 LVS를 통과했다는 뜻은 아니다. Calibre/Assura 규칙 파일이 배포본에 있어도 선택한 오픈소스 도구에서 같은 검사를 실제로 실행한 근거는 별도로 필요하다.

   **확인 방법·담당:** C는 M2-03에서 현재 코어에 적용할 폭·간격·덮임·격자·전원 연결, DRC/LVS와 적용 가능한 antenna/ERC 항목을 제공 규칙의 출처에 연결한다. M3-04에서 B의 실제 최종 GDS·회로 입력으로 실행해 검사한 범위와 미지원·미검증을 구분한다. 필수 설계 배선 RC와 선택 트랜지스터 PEX 시뮬레이션도 따로 판정한다. 출발 근거는 위 전체 PDK/PDF 조사와 [05의 검증 범위](../REQUIREMENTS.md#4-다섯-단계의-개발-계약)다.

## P&R 후보의 조사 출발점

아래는 기존 증거 색인이며 최종 backend 채택이 아니다. B는 M2-02에서 후보를 조사하고 C와 M2-05에서 인계 조건을 대조한다. **실제 경로 선택·추가 CTS/RC 실험과 결정 기록은 B의 M3-03, C의 M3-04 및 공동 M3-05에서 수행한다.**

| 후보 | 기존 근거의 확인 범위 | 남은 확인 |
| --- | --- | --- |
| QFlow 보완 | [M0-09 성공·실패·재사용 한계](../experiments/M0-09-qflow/README.md#qflow-재사용-범위와-다음-작업) | 질문 4: 형식·전원 보정을 유지할 범위와 층별 격자·배치 줄 정보의 보존. 질문 5~9: 실제 CTS 배선·RC·최종 검증까지 연결 가능한가? |
| OpenROAD | [M0-10 실행·실패](../experiments/M0-10-cts-rc/README.md#실제-실행과-판정): CTS topology·기능 확인, TritonRoute pin access 실패 | 질문 5: 규칙에 맞게 핀과 전원선을 연결해 배선을 끝낼 수 있는가? 질문 6~9: NSPL RC 변환·정확도 비교와 최종 검증이 가능한가? |
| 혼합 | [M0-10 DEF 경계·QRouter 후보](../experiments/M0-10-cts-rc/README.md#실제-실행과-판정): 논리/형식 경계 대조, 미배선 2개 | 질문 4·5: 도구 사이에서 클록·전원·층·단위를 유지하며 미배선을 해소할 수 있는가? 질문 6~9: 같은 최종 배선으로 RC·타이밍·물리 검증이 가능한가? |

## 담당별 첫 자료와 작업

| 담당 | 먼저 읽을 자료 | M2 조사·튜토리얼 초안 | M3 구현 |
| --- | --- | --- | --- |
| **A / 01·02** | [현재 셀 기능 프로파일](../experiments/M0-08-sequential/scope-review/README.md), [기존 합성·P&R 입력](../experiments/M0-09-qflow/README.md), [지원 환경](../decisions/001-initial-support-environment.md) | RTL/TB·입력 제약·합성·PRE-STA·기능검증·면적과 B 인계 항목 | 공통 기반·생성기와 project/timing YAML·스키마·01/02 실행·검증 |
| **B / 03·04** | [M0-09 성공 범위](../experiments/M0-09-qflow/README.md), [M0-10 실제 시도](../experiments/M0-10-cts-rc/README.md), [상세 후속 F1~F6](../experiments/M0-10-cts-rc/FOLLOW_UP.md), [제공 묶음 색인](../experiments/pdk-package-review/README.md) | backend 후보·floorplan·핀·PG·CTS·route·GDS·RC의 절차·제약·해결 후보 | pins/physical YAML·스키마·backend 선택·03/04 실행·RC 생산 |
| **C / 05** | [기존 annotation 검사기](../experiments/M0-10-cts-rc/annotation.py), [OpenSTA 분석 Tcl](../experiments/M0-10-cts-rc/sta.tcl), [fixture 검증 범위](../experiments/M0-10-cts-rc/results/annotation-probe/validation.json), [공정 규칙/RC 색인](../experiments/pdk-package-review/README.md) | annotation·POST-STA·P&R 후 기능·DRC/LVS·적용 ANT/ERC·PEX 범위와 판정 | verification YAML·스키마·05 실행·종합 판정, B와 RC 정확도·물리 인계 검증 |

M2에서는 자기 자료로 독립적으로 초안을 작성한다. 필요한 YAML 입력 칸은 목록으로 제안하고, 미결정 항목은 담당·확인 방법을 적는다. B의 실제 배선 산출물을 기다리지 않고 C의 조사·문서를 진행할 수 있다.

## Stage ID와 담당 파일

아래는 [목표 구조·분담](../REQUIREMENTS.md#8-3명의-분담과-인계)에 따른 **편집 경로 합의**다. 문서 작성 폴더·구현 폴더는 M1에서 준비하고 튜토리얼 파일은 M2에서 각 담당자가 만든다. 목차·제목·설명 순서는 기준 PDF의 담당 단계 안에서 자율적으로 정한다. 아래 경로는 이번 준비에서 생성·실행을 확인했다는 뜻은 아니다. 문서 경로는 `docs/tutorials/`, 구현 경로는 `flow/stages/` 기준이다.

| stage ID | 담당 | 튜토리얼 파일 / 구현 폴더 | 참고 자료 |
| --- | --- | --- | --- |
| `01-synthesis-preparation` | A | `01-synthesis-preparation.md` / `01-synthesis-preparation/` | 결정 001/002·제한 프로파일, [단계별 요구사항](../REQUIREMENTS.md#4-다섯-단계의-개발-계약), 기준 PDF 7–13쪽 |
| `02-synthesis-pre-sta` | A | `02-synthesis-pre-sta.md` / `02-synthesis-pre-sta/` | M0-08/09 RTL/TB·합성·기능 결과, 기준 PDF 15–24쪽 |
| `03-pnr-preparation` | B | `03-pnr-preparation.md` / `03-pnr-preparation/` | M0-09 view/단위·전체 PDK 조사의 Util/핀/면적 한계, 기준 PDF 26–28쪽 |
| `04-auto-pnr` | B | `04-auto-pnr.md` / `04-auto-pnr/` | M0-09/10·F1~F6·PDK CTS/PG/RC 자료, 기준 PDF 30–41쪽 |
| `05-post-sta` | C | `05-post-sta.md` / `05-post-sta/` | M0-10 annotation 검사기·fixture 한계·PDK 공정 규칙/RC 색인, 기준 PDF 43–54쪽 |

[기준 PDF와 PDK 경로 색인](../PDK_REFERENCE.md#11-확인한-자료와-한계)을 사용한다. 기준 RTL/TB/SDC의 직접 참조와 M1 접근 확인 계획은 아래 대응표에 연결한다. M3 입력 템플릿은 `templates/digital/` 아래 A가 `project.yaml`·`constraints/timing.yaml`과 RTL/TB, B가 `constraints/pins.yaml`·`physical.yaml`, C가 `verification.yaml`을 맡는다. 여기서는 소유 경계만 정하며 양식·키는 만들지 않는다.

## M0-14 작업 경로와 원본 참조

**경로·참조 계획 완료, 실제 준비는 M1에서 수행한다.** 아래 새 경로는 저장소 루트 기준이며 아직 생성하지 않았다. [M0-07 파일 inventory](../experiments/M0-07-pdk-inventory/results/files.csv)·[view 대응표](../experiments/M0-07-pdk-inventory/results/views.csv), [전체 묶음의 기존 inventory](../experiments/pdk-package-review/results/inventory.json)의 `components`·`selected_sources`와 기존 실험 기록을 재사용했다. 전체 의존성·inventory·해시 재조사는 하지 않았다.

`PDK_ROOT`는 외부 배포본 루트(현재 저장소 형제 `../NSPL_05CMOS_PDK_260820/`), `PDK_DIGITAL`은 그 아래 `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/`, `PDK_STD`는 `NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std/`를 뜻한다. 기존 환경 변수가 있다는 가정은 하지 않는다. 표의 원본 링크는 현재 배치를 기준으로 하며, 다른 위치를 쓰는 담당자는 아래 방법으로 경로를 지정한다.

| 담당·용도 | M1에서 만들 폴더 / 이후 편집할 파일 | 보존할 원래 위치·기존 근거 | M1에서 연결·접근 확인할 방법 |
| --- | --- | --- | --- |
| **A / 01** | `docs/tutorials/`, `flow/stages/01-synthesis-preparation/`, `templates/digital/rtl/`, `templates/digital/tb/`, `templates/digital/constraints/`. M2 문서 `docs/tutorials/01-synthesis-preparation.md`; M3 템플릿 `templates/digital/project.yaml`, `templates/digital/constraints/timing.yaml` 및 RTL/TB | 기준 PDF 7–13쪽; `PDK_DIGITAL/VERILOG/`의 [원본 RTL][m014-rtl]·[제공 TB][m014-tb], `PDK_DIGITAL/SDC/`의 [제공 SDC][m014-sdc]. 자동 판정 TB의 소스는 [M0-08 scope-review/run.py](../experiments/M0-08-sequential/scope-review/run.py)의 `stimulus(True)`·`bench()` | 3개 원본 파일을 읽고 원본 위치를 폴더 역할 안내에 링크한다. 제공 TB는 출력 관찰용, 기존 자동 판정 TB는 별도 출처로 구분한다. SDC는 설계 의도 검토용 원본이며 정규 SDC 확정은 M3-02에서 수행한다 |
| **A / 02** | `flow/stages/02-synthesis-pre-sta/`. M2 문서 `docs/tutorials/02-synthesis-pre-sta.md`; 템플릿은 위 A 경로 공유 | 기준 PDF 15–24쪽; [TT Liberty][m014-lib], [원본 셀 Verilog][m014-cell-v], [M0-08 파생 기능 참조](../experiments/M0-08-sequential/derived/nspl12t_seq_functional.v)·[제한 프로파일](../experiments/M0-08-sequential/scope-review/profile.json), [M0-08 실제 결과](../experiments/M0-08-sequential/scope-review/results/run.json), [M0-09 입력·실행 명령](../experiments/M0-09-qflow/README.md#선행-근거와-실제-입력)·[결과](../experiments/M0-09-qflow/results/result.json) | Liberty·원본/파생 모델·프로파일·결과를 읽고 M0-08/09 README 참조를 역할 안내에 둔다. 생성 TB의 로컬 출력이 없어도 위 생성 소스와 보존 결과를 참조할 수 있는지 확인한다 |
| **B / 03** | `flow/stages/03-pnr-preparation/`. M2 문서 `docs/tutorials/03-pnr-preparation.md`; M3 템플릿 `templates/digital/constraints/pins.yaml`, `templates/digital/physical.yaml` | 기준 PDF 26–28쪽; [macro LEF][m014-lef]·[기술 LEF][m014-techlef], `PDK_DIGITAL/Util/`의 [pin/면적 helper][m014-util], [M0-09 adapter와 한계](../experiments/M0-09-qflow/README.md#어댑터와-물리-인계-확인) | LEF 두 파일과 `Util/ICC2_PIN_SETUP`, `pin_place`, `core_size_calculation`을 읽는다. helper의 기존 조사·한계를 링크하며 상용 명령을 실행하지 않는다. A→B의 netlist/SDC/area는 기존 실험의 참고 결과로 구분한다 |
| **B / 04** | `flow/stages/04-auto-pnr/`. M2 문서 `docs/tutorials/04-auto-pnr.md`; 템플릿은 위 B 경로 공유 | 기준 PDF 30–41쪽; [원본 GDS][m014-gds], `PDK_DIGITAL/`의 [Util][m014-util]·[TECH][m014-tech]·[TLU][m014-tlu], [M0-09 결과·실패](../experiments/M0-09-qflow/README.md), [M0-10 결과·실패](../experiments/M0-10-cts-rc/README.md)·[F1~F6](../experiments/M0-10-cts-rc/FOLLOW_UP.md) | CTS/track/PG·RC 원자료와 기존 로그의 읽기 경로를 역할 안내에 연결한다. M0-09 로컬 GDS가 없으면 기존 `results/gds-check.json`·재실행 안내를 참조하고 이번 준비에서 재생성하지 않는다. M0-10 실제 RC/POST-STA blocked를 유지한다 |
| **C / 05** | `flow/stages/05-post-sta/`. M2 문서 `docs/tutorials/05-post-sta.md`; M3 템플릿 `templates/digital/verification.yaml` | 기준 PDF 43–54쪽; [CDL][m014-cdl], `PDK_ROOT/`의 [Calibre][m014-calibre]·[Assura][m014-assura]·[Model_Parameter][m014-mos], [M0-10 annotation.py](../experiments/M0-10-cts-rc/annotation.py)·[sta.tcl](../experiments/M0-10-cts-rc/sta.tcl)·[fixture 판정](../experiments/M0-10-cts-rc/results/annotation-probe/validation.json), [공정 규칙·RC 색인](../experiments/pdk-package-review/README.md#바로-사용할-수-있는-기술-근거와-남은-변환) | CDL과 각 디렉터리의 접근·참조 대상 파일 읽기를 확인한다. B와 `Assura/QRC/typical/`, `Calibre/PEX/MIPT/`, `Calibre/PEX/LPE_LIB/`를 함께 참조한다. 기존 annotation fixture와 실제 최종 RC/POST-STA를 구분해 링크한다 |
| **A 통합, B/C 각 단계** / 문서 시작점 | 위 `docs/tutorials/`와 `docs/lessons/`, `docs/prompts/`, `docs/reference/` | [기준 PDF][m014-pdf], [PDK 참고 자료](../PDK_REFERENCE.md), [담당별 첫 자료](#담당별-첫-자료와-작업), 기존 `docs/ETRI_0p5um_NSPL_260820/` | 각 폴더의 짧은 `README.md`에 담당·이 시작 문서·기존 원문 링크만 둔다. 루트 `README.md`에 이 시작 문서의 진입 링크를 추가한다. PDF 읽기·링크 확인; 튜토리얼 파일·공통 목차는 M2에서 작성한다 |
| **B 주도, A/C 확인** / 플랫폼 참조 | `platforms/nspl05-260820/` | [실행용 12T_PnR][m014-digital]와 [원 설계 12T_std][m014-std], 위 M0-07·전체 묶음 inventory, [원 설계의 활용·한계](../PDK_REFERENCE.md#15-12t_std-원-설계의-활용과-검증-범위). 기존 `tech/`, `digital_ETRI/` 및 설치 alias는 비교 기준으로 보존 | `README.md`에 외부 경로 지정법·export/원 설계 구분·기존 inventory 링크를 둔다. 두 디렉터리의 읽기/탐색과 `PDK_STD/tech.db` 읽기 가능 여부를 확인한다. OA 의미 판독·기능/물리 동등성 검증은 별개다 |
| **A 주도, B/C 참조** / 기준 예제 | `examples/shift_reg_8bit/` | 위 원본 RTL/TB/SDC와 M0-08/09의 TB 생성 소스·실행 명령·판정, [M0-10 후속 한계](../experiments/M0-10-cts-rc/FOLLOW_UP.md) | `README.md`에서 원래 파일과 기존 결과로 직접 연결한다. M1은 참조 방식으로 준비하며 복사·symlink는 필요 없다. 새 예제 RTL/TB/YAML·자동 판정 체계는 M3-02에서 구현한다 |
| **A 통합, 각자 확인** / 환경·실험 | 새 실험 폴더 없음. 기존 `development/decisions/`, `development/experiments/` 유지 | [환경 결정 001](../decisions/001-initial-support-environment.md), [M0-06 환경 기록](../experiments/M0-06-environment/observed-2026-11-15.json), [셀 모델 결정 002](../decisions/002-sequential-functional-models.md), 위 M0-07~10·전체 묶음 조사 | M1-01에서 Git·Python·편집 환경과 필요한 기존 도구의 위치를 확인한다. 각 역할 안내에서 해당 실험 README·보존 결과·실패 기록을 링크한다. 기존 실험의 기본 출력 경로·코드·공유 설정은 수정하지 않는다 |

[m014-pdf]: <../../docs/ETRI_0p5um_NSPL_260820/05_NSPL 0.5um Digital CMOS 2P3M 5V Design Tutorial(PnR)_V1.0.pdf>
[m014-digital]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/
[m014-std]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std/
[m014-rtl]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/VERILOG/shift_reg_8bit.v
[m014-tb]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/VERILOG/shift_reg_8bit_tb.v
[m014-sdc]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/SDC/shift_reg_8bit.sdc
[m014-lib]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/LIB/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std_tt.lib
[m014-cell-v]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/VERILOG/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std.v
[m014-lef]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/LEF/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std.lef
[m014-techlef]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/LEF/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_tech.lef
[m014-gds]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/GDS/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std.gds
[m014-cdl]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/CDL/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std.cdl
[m014-util]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/Util/
[m014-tech]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/TECH/
[m014-tlu]: ../../../NSPL_05CMOS_PDK_260820/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR/TLU/
[m014-calibre]: ../../../NSPL_05CMOS_PDK_260820/Calibre/
[m014-assura]: ../../../NSPL_05CMOS_PDK_260820/Assura/
[m014-mos]: ../../../NSPL_05CMOS_PDK_260820/Model_Parameter/

### M1 생성·참조 수정 순서와 접근 확인

1. **M1-01:** 각자 저장소 루트에서 아래 예시처럼 외부 위치를 지정한다. 다른 위치라면 먼저 `export PDK_ROOT=/실제/배포본/경로`로 지정한다. 이는 세션 변수이며 전역 설정·설치 alias를 바꾸지 않는다.

   ```bash
   REPO_ROOT="$(git rev-parse --show-toplevel)"
   export PDK_ROOT="${PDK_ROOT:-$REPO_ROOT/../NSPL_05CMOS_PDK_260820}"
   PDK_DIGITAL="$PDK_ROOT/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_PnR"
   PDK_STD="$PDK_ROOT/NSPL_0p5um_Digital_CMOS_2P3M_5V_V1p1_12T_std"
   test -d "$PDK_DIGITAL" && test -r "$PDK_DIGITAL" && test -x "$PDK_DIGITAL"
   test -d "$PDK_STD" && test -r "$PDK_STD" && test -x "$PDK_STD"
   test -f "$PDK_DIGITAL/VERILOG/shift_reg_8bit.v" && test -r "$PDK_DIGITAL/VERILOG/shift_reg_8bit.v"
   test -f "$PDK_DIGITAL/VERILOG/shift_reg_8bit_tb.v" && test -r "$PDK_DIGITAL/VERILOG/shift_reg_8bit_tb.v"
   test -f "$PDK_DIGITAL/SDC/shift_reg_8bit.sdc" && test -r "$PDK_DIGITAL/SDC/shift_reg_8bit.sdc"
   ```

   **예시·M1에서 각 담당이 실행 예정.** 각 `test`의 종료 코드를 개별 확인하고, 표의 다른 파일도 `test -f`·`test -r`, 디렉터리는 `test -d`·`test -r`·`test -x`로 확인한다. 실패하면 대상 경로·부족 자료/권한·다음 행동을 남긴다. 파일 읽기 가능 여부와 OA/compiled view의 의미 판독은 구분한다.
2. **M1-02~04/06:** 표의 폴더만 `mkdir -p`로 생성한다. 상위 `flow/stages/`, `templates/digital/`, `platforms/`, `examples/`도 이때 생긴다. 각 폴더는 담당·예정 파일·원본 링크를 적은 짧은 `README.md`로 추적하고 `test -d`·`test -w`로 작업 가능 여부를 확인한다. 템플릿 부모 `templates/digital/README.md`에는 A/B/C 파일 소유를 함께 적는다. 단계별 템플릿 파일·스키마·실행 더미는 만들지 않는다.
3. **M1-05/06:** 루트 README → 이 시작 문서 → 새 폴더의 역할 안내 → 기존 원본·실험으로 링크를 연결한다. 새 역할 안내에서 링크할 때는 그 파일 위치 기준으로 상대경로를 계산한다. 현재 문서의 `../../../NSPL_…` 링크를 다른 깊이의 문서에 그대로 복사하지 않는다. 사람별 PDK 배치가 다르면 `PDK_ROOT`와 그 아래 상대경로를 함께 안내한다. 원본 경로는 유지하므로 기존 Makefile·실험 실행기·도구 설치 링크의 참조 수정은 필요 없다.
4. **M1-07:** A/B/C별로 작업 경로·예정 편집 파일·실제 PDK 루트·확인 명령/결과·확인일·접근 불가 항목과 다음 행동을 이 문서에 기록한다. 새 README의 로컬 링크/앵커를 확인하고 `git diff --check`를 수행한 뒤 [M2 착수 기준](../ROADMAP.md#m2-착수-기준)을 판정한다. 현재 M0-14는 경로 계획의 문서 링크·대상 존재만 확인하며, M1이나 M2 착수 준비 완료를 대신하지 않는다.

이번 계획의 참조 방식은 문서 링크와 외부 경로 지정이다. 새 폴더 생성·역할 안내·루트 README 진입 링크 외의 이행은 계획하지 않는다. `legacy/` 생성·기존 자료 이동/삭제·외부 PDK 복사·공유 라이브러리 변경은 하지 않는다. `examples/fir/`의 본 작업은 M4, 생성기·YAML·스키마·setup/doctor·신규 fixture·EDA 실행은 해당 M3 작업에 남긴다.

**M0-14 문서 확인 기록 — 2026-11-15:** 변경한 두 문서의 로컬 링크 165회(고유 대상 50곳)·Markdown 앵커 75개, 표 열 수·코드 블록과 `git diff --check`를 확인했다. 링크 대상의 존재·현재 계정의 읽기/디렉터리 탐색은 확인됐으며 끊어진 참조는 없었다. 이는 현재 문서의 참조 확인이다. M1의 폴더 생성·A/B/C별 작업 권한/외부 PDK 접근 확인은 아직 수행하지 않았다.

## 주요 입출력 종류와 단위

아래 단위는 **인계 시 명시할 최소 규칙**이다. 실제 결과에 적용됐는지는 M3에서 확인한다. 제공 디지털 Liberty의 TT·5 V·25 °C와 RC corner는 따로 식별한다.

| 경계 | 주요 입력 → 출력 종류 | 단위·확인 사항 |
| --- | --- | --- |
| 01 → 02 / A | RTL/TB·clock/reset 의도·Liberty → 확인한 RTL/TB 목록·정규 SDC·기능 결과 | 시간 ns, 부하 pF; 포트·극성·제약 대상 유지 |
| **A → B / 02 → 03** | 합성 netlist·동일 정규 SDC·area·셀 목록·PDK 식별 → floorplan/핀 계획 | netlist 이름은 단위 없음; SDC ns/pF; area는 µm²로 의미·산출 근거 명시, Liberty area와 LEF 치수 대응 확인 |
| 03 → 04 / B | netlist/SDC·floorplan/핀·전원·CTS/route 계획 → 배치배선 입력 | 길이 µm, 면적 µm², utilization은 0–1 비율 또는 % 중 표기 명시; site/grid 정렬 |
| **B → C / 04 → 05** | 최종 netlist/SDC/DEF/GDS·배선 RC(SPEF 우선)·CTS/route 보고서·추출 조건 → POST-STA·기능/물리 검증 입력 | DEF DBU/µm·GDS 길이/DBU는 파일 선언 확인; RC의 R/C는 SPEF 선언·배율 명시 후 Ω/pF 등 분석 단위로 변환; 시간 ns. pin-cap 포함 범위·코너·revision 일치 확인 |
| C → A/B | PRE/POST 비교·기능/DRC/LVS·적용 ANT/ERC 결과·최초 실패 → 수정 위치·재실행 범위 | timing ns, RC Ω/pF, 위반·누락·coverage는 건수와 분모/제외 사유 명시 |

Liberty의 관측 단위는 [PDK 참고 자료](../PDK_REFERENCE.md#13-새-pdk와-기존-라이브러리의-차이)의 ns/pF/V/µA/kΩ다. Ω 변환 시 배율을 확인한다. [M0-09의 실제 예](../experiments/M0-09-qflow/README.md#어댑터와-물리-인계-확인)는 DEF 100 DBU/µm, GDS 0.001 µm/DBU이며 모든 backend에 고정할 값은 아니다. 실제 산출물 파일명·상세 형식·스키마·manifest·해시 계약·fixture는 M3에서 생산자/수신자가 구체화한다.

## 공통 파일 변경 절차

1. 각 담당자는 자기 브랜치 또는 별도 worktree에서 위 담당 파일을 편집한다. 다른 담당자의 파일이나 기존 실험 결과를 덮어쓰지 않는다. M1-03에서 실제 작업 경로·브랜치와 충돌 여부를 확인한다.
2. README·PLAN/REQUIREMENTS/ROADMAP·이 안내·공통 실행 기반은 A가 통합을 주도한다. 플랫폼의 물리/RC 설정은 B가 주도하고 C가 검증 범위를 확인한다. 공통 스키마와 템플릿 조립도 M3에서 A 주도·B/C 검토로 변경한다.
3. 공통 변경 주도자는 목적·변경 경로·영향 stage·입출력/단위 변화·미결정을 짧은 변경 설명에 먼저 적고 생산자/수신자에게 공유한다. A→B는 A/B, B→C는 B/C, 공통 SDC·PDK·stage ID 변화는 A/B/C가 함께 확인한다.
4. 같은 공통 파일의 편집은 한 명이 맡아 순서대로 통합한다. 영향받는 담당자의 확인 뒤 관련 문서·참조·인계 예를 함께 맞춘다. M3에 코드/스키마가 생기면 그것도 같은 변경에 맞추고, 현재는 미구현 파일을 만들지 않는다.
5. 링크·단위·단계 경계를 점검하고 새 근거와 다음 행동을 ROADMAP에 반영한다. 충돌 시 완료된 결정·실험을 소급 수정하지 않고 후속 문서/새 결과 경로로 기록한다.

## 사실·제안·미확인과 결과의 표시

- **확인한 사실:** 출처 링크와 확인 범위를 붙인다. 기존 기록을 읽었으면 ‘기존 실행 기록에서 확인’으로 쓰고 이번 재실행으로 표현하지 않는다.
- **제안:** 후보·예상 절차·미실행 명령/수치는 ‘제안’ 또는 ‘예시·미실행’으로 표시하고 검증할 담당·단계를 적는다. 위 담당/변경 절차 합의와 실제 도구 지원 여부는 구별한다.
- **미확인:** 확인하지 못한 연결·정확도·호환성은 미확인으로 남기고 필요한 자료·다음 확인 방법을 적는다. 파일 존재·해시 식별·형식 판독을 의미 일치·물리 통과로 확대하지 않는다.
- **실제 결과:** 입력·도구/PDK·작업 경로·명령·로그·판정·한계를 기존 실행 근거에 연결한다. 성공·실패를 함께 보존하며 종료 코드 0만으로 통과 처리하지 않는다.
- **예시/fixture:** 설명용 가상 값·합성 SPEF·검사기 시험은 각 표/명령/수치 옆에 표시한다. 아래 fixture 검출 수치는 실제 검사기 시험 결과지만 실제 배선 RC 정확도·설계 annotation 통과는 아니다.
- **판정:** 준비/초안 완료와 설계 통과를 분리한다. 근사 RC는 `estimated`, 필수 입력 부재·미구현은 `blocked`와 이유를 남긴다. ideal clock·미검증 물리 결과·미검증 경로를 POST-STA/설계 통과로 합산하지 않는다. 세부 상태는 [공통 결과 판정](../REQUIREMENTS.md#공통-결과-판정과-재실행)을 따른다.

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
