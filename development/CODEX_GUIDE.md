# Codex 개발 작업 실행 안내

## 1. 단계별 실행 방법

당장의 실행 범위는 **M0·M1의 시작 자료·작업 폴더·참고 자료 접근 준비**다. 준비 후 M2에서 A/B/C가 동시에 조사·초안을 작성하고, M3에서 각자 YAML·실행 코드·검증을 구현한다. 상세 요구사항의 최종 사용자 기능을 공통 준비에서 먼저 완성하려고 범위를 넓히지 않는다.

| 실행할 일 | 프롬프트 |
| --- | --- |
| M0·M1 준비를 한 번에 수행 | [P-ALL](#p-all-m0m1-일괄-진행) |
| 시작 자료·경로·폴더를 나누어 준비 | P-13/14, P-101~106 |
| M2 담당별 조사·튜토리얼 초안 | [P-201](#p-201-담당별-조사와-튜토리얼-초안) |
| M3 공통 기반·프로젝트 생성 | [P-301](#p-301-공통-입력실행-기반과-프로젝트-생성기) |
| M3 담당별 YAML·코드·검증 | [P-302](#p-302-담당별-yaml실행-코드검증) |
| M3의 CTS·RC·backend 선택 | P-10/11 |

이미 완료된 작업은 필요한 근거만 재사용한다. P-06~09는 당시 작업의 참고용으로 보존한다. P-201/P-302는 첫 줄의 담당을 A/B/C 중 자기 역할로 바꿔 사용한다. 세 담당자는 사람 세 명이며, 하위 agent 실행은 P-ULTRA를 명시적으로 선택할 때만 사용한다.

### 1.1 모델·effort 선택과 공식 근거

**공식 자료 확인일: 2026-11-14. 대상 실행 환경: 저장소 파일과 터미널에 접근할 수 있는 Codex/ChatGPT Work.** 모델은 프롬프트를 붙여넣기 전에 UI 또는 CLI에서 선택한다. 본문에 모델명을 적는 것만으로 실행 설정이 바뀌지는 않는다.

| 공식 자료 | 이 문서에서 사용하는 근거 |
| --- | --- |
| [OpenAI 모델 안내: 모델 선택](https://learn.chatgpt.com/docs/models#recommended-models) | 6.1 Sol은 복잡하고 장기간 이어지는 코드·문서 작업, 6.1 Terra는 글쓰기·시각 정보 등의 용도로 안내한다. 이를 근거로 구현·EDA 진단에는 Sol, 근거가 정리된 초보자 문서 작성에는 Terra를 제안한다. |
| [OpenAI 모델 안내: effort](https://learn.chatgpt.com/docs/models#pick-a-reasoning-effort) | Light/Low는 범위가 명확한 작업, Medium은 속도와 깊이의 균형, High/Extra High는 여러 단계·자료·선택지가 있는 어려운 작업에 맞춘 안내다. |
| [OpenAI 모델 안내: Max·Ultra](https://learn.chatgpt.com/docs/models#know-when-to-use-max-or-ultra) | Max는 한 작업에 더 깊게 추론하며, Ultra는 하위 agent로 독립 작업을 나누어 진행한다. 대부분의 작업에는 Max/Ultra가 필요하지 않다고 설명한다. |
| [Codex 설정 참조](https://learn.chatgpt.com/docs/config-file/config-reference) | `model_reasoning_effort`는 모델·클라이언트가 제공하는 `low`, `medium`, `high`, `xhigh`, `max`, `ultra` 등을 사용한다. |
| [OpenAI GPT-6 실무 가이드](https://openai.com/index/practical-guide-building-gpt-6/) | 기본 추론 수준에서 시작해 과제에 따라 조정하고, 독립 수행 범위와 완료 기준을 프롬프트에 명확히 쓰도록 안내한다. |
| [OpenAI effort 평가 안내](https://developers.openai.com/api/docs/guides/deployment-checklist#set-up-reasoningeffort) | 높은 effort의 품질 이득·비용을 실제 과제로 평가한다. 이 API 자료를 Codex의 Ultra 지원 여부를 판정하는 근거로 쓰지는 않는다. |

위 자료는 일반적인 모델·effort 선택 근거다. **작업별 추천은 이를 ETRI 개발 과제에 적용한 작성자의 제안이며, OpenAI가 이 PDK 작업에 특정 설정을 지정하거나 성능을 보증한 것은 아니다.** 실제 결과에 따라 조정한다.

| UI에서 선택할 이름 | CLI의 설정값 | 이 실행 안내에서의 사용 기준 |
| --- | --- | --- |
| light | `low` | 이미 검증된 짧은 문구·표 정리 등 범위가 작은 작업에 사용 가능. |
| medium | `medium` | M0·M1의 자료·폴더 정리와 M2의 근거 기반 초안 작성에 제안. |
| high | `high` | M3의 구현·실험·검증과 여러 도구를 대조하는 조사에 제안. |
| extra high | `xhigh` | P-08의 순차 셀 의미 대조, P-10의 CTS·RC 연계처럼 오류 원인이 여러 파일·도구에 걸친 작업에 제안. |
| max | `max` | 범위를 좁힌 난제가 기존 시도로 해결되지 않고 더 깊은 분석이 필요할 때 P-DIAG에 선택적으로 사용. |
| ultra | `ultra` | 독립 과제를 하위 agent로 나눌 수 있을 때 P-ULTRA에 선택적으로 사용. 공통 파일 편집과 결과 통합은 상위 agent가 맡는다. |

`6.1 Sol`의 모델 ID는 `gpt-6.1-sol`, `6.1 Terra`는 `gpt-6.1-terra`다. Light는 CLI의 Low(`low`), Extra High는 `xhigh`로 표기한다. 실제 선택 가능 범위는 계정·클라이언트·모델에 따라 확인한다. Codex의 `/model`에서 모델과 effort를 선택할 수 있으며, 지원되는 Max/Ultra는 `More reasoning…`에서 확인한다. [공식 모델 설정 안내](https://learn.chatgpt.com/docs/models#choose-a-model)

CLI를 쓰는 경우 저장소 루트에서 다음과 같이 시작한 뒤 프롬프트를 붙여넣는다. 아래 명령은 전역 설정 파일을 수정하지 않는다.

```bash
# M3 구현 작업
codex -m gpt-6.1-sol -c 'model_reasoning_effort="high"'

# P-08 / P-10
codex -m gpt-6.1-sol -c 'model_reasoning_effort="xhigh"'

# M0·M1 자료·폴더 정리: Sol / medium, 문서 작성 P-105: Terra / medium
codex -m gpt-6.1-terra -c 'model_reasoning_effort="medium"'
```

### 1.2 모든 실행 프롬프트에 적용할 공통 규칙

1. 저장소 루트와 적용되는 `AGENTS.md`, PLAN, REQUIREMENTS, ROADMAP, 관련 참고 자료와 현재 Git 변경을 확인한다. 기존 사용자 변경과 완료된 작업·실험 기록을 보존한다.
2. 이번 마일스톤의 완료 조건까지 수행한다. M0·M1은 자료·폴더·접근 확인, M2는 조사·문서 초안, M3는 YAML·코드·실제 검증이 산출물이다. 최종 요구사항을 모든 단계의 선행조건으로 적용하지 않는다.
3. 원본 PDK·라이브러리·수동 설계물·실험 결과를 보존한다. 새 작업 폴더를 만들고 필요한 참조만 연결한다. 실제 사용하는 파일을 옮길 때는 참조와 영향을 확인하며, 미사용 legacy 전체 조사·이동·삭제로 범위를 넓히지 않는다.
4. 기존 M0-06~10, 전체 PDK/PDF 조사와 제한 셀 프로파일을 출발점으로 사용한다. 기존 inventory·해시 검사를 이유 없이 반복하지 않는다. M0·M1에서는 추가 CTS/RC·backend 실험, 전체 도구 설치·빌드를 진행하지 않는다.
5. M0·M1에서는 stage ID·담당·경로·입출력 종류·단위와 공통 변경 절차만 짧게 정리한다. 전체 YAML 키·실행 가능한 스키마·CLI·manifest·신규 fixture·프로젝트 생성기·setup/doctor는 M3에서 구현한다.
6. 확인한 사실·제안·미확인, 실제 실행·예시·fixture를 구분한다. 근사 RC·ideal clock·미검증 물리 결과를 설계 통과로 표시하지 않는다. M3에서 미구현 단계 실행은 blocked와 이유를 반환한다.
7. M2에서는 기준 PDF의 다섯 단계와 담당 경계 안에서 각 담당자가 목차·제목·설명 순서와 세부 구성을 자율적으로 정한다. M0·M1에서 공통 목차나 튜토리얼 틀을 미리 만들지 않는다. 상대 담당자의 실행 코드·실제 산출물을 기다리지 않고 자기 자료로 초안을 작성한다. 필요한 추가 조사는 담당 범위에 한정한다. 명령을 실행했다면 입력·도구/PDK·작업 경로·결과·한계를 기록한다.
8. 기술 선택은 근거를 바탕으로 진행하고 지원 의도 등 꼭 필요한 정보만 질문한다. 자료·권한 때문에 막히면 필요한 항목·다음 행동을 적고 독립적으로 가능한 작업을 계속한다.
9. 완료 조건을 충족한 작업만 ROADMAP에서 완료로 바꾼다. 상태·근거·다음 행동을 맞추고 최종 응답에는 변경 파일·확인 결과·남은 작업을 적는다. 문서 작성만으로 EDA 실행이나 M2 착수 준비가 완료됐다고 쓰지 않는다.
10. 기본은 한 agent로 수행한다. P-ULTRA를 명시적으로 선택하면 담당별 독립 경로만 분담하고 공통 파일과 최종 상태 갱신은 상위 agent가 맡는다.

PDK 사용 시 [원 설계 활용 범위](PDK_REFERENCE.md#15-12t_std-원-설계의-활용과-검증-범위), [전체 묶음/PDF 조사](experiments/pdk-package-review/README.md), [줄일 준비 작업](REQUIREMENTS.md#제공-자료에-따라-줄일-준비-작업)을 따른다. `12T_PnR` 실행 export와 `12T_std` 원 설계 참조를 구분하고, OA reader·DB/NDM 재제작·전체 PDK 복사·모든 backend 구현·전체 셀/코너 재특성화·pad ring을 기본 선행조건으로 추가하지 않는다.

### P-ALL. M0·M1 일괄 진행

**추천: 6.1 Sol / medium.** 세 담당자가 바로 조사·문서 작성을 시작할 수 있는 상태까지 준비한다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md를 읽고 1.2절에 따라 M0·M1의 남은 준비를 수행해줘.
완료된 M0-01~09와 기존 실험·입력·결과·실패 기록은 보존해줘.

M0-10~14는 기존 근거의 확인 범위·미해결 질문, A/B/C 분담,
stage ID·주요 입출력 종류·단위, 참고 경로와 공통 파일 변경 절차를
development/handoffs/M2-PREPARATION.md에 짧게 정리해줘.
기존 inventory를 재사용하고 추가 EDA 실험이나 상세 schema 설계를 하지 마.

M1에서는 담당별 문서·구현 폴더를 만들고,
기준 PDF·RTL/TB/SDC·PDK·기존 조사에 접근하는 경로를 연결해줘.
튜토리얼 목차·본문은 미리 만들지 말고 M2에서 각 담당자가 구성하도록 해줘.
현재 환경과 담당별 첫 작업을 README·시작 문서에서 찾을 수 있게 하고,
실제 파일·링크·접근 여부로 M2 착수 기준을 확인해줘.

전체 YAML·스키마·프로젝트 생성기·설치 자동화·신규 인계 fixture는 M3의
담당 업무야. M0·M1에서 먼저 만들거나 검증 대상으로 추가하지 마.
기존 실험·외부 PDK·미사용 legacy는 보존하고 필요한 새 경로와 참조만 정리해줘.
실제로 확인한 준비 작업만 ROADMAP에 반영하고 M2·M3 본작업을 시작하지 마.
```

### P-06. 지원 환경 정리

**대상: M0-06 / 추천: 6.1 Sol / medium.** 환경과 기존 자료를 대조하고 개발 조건을 정리하는 작업이다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M0-06을 수행해줘. 실제 OS·도구 버전·경로·PDK 위치를 조사하고,
현재 자료와 재현 가능한 지원 조건을 바탕으로 최초 지원 환경을 정리해줘.
현재 설치 버전과 향후 고정할 버전을 구분하고, 추후 검증 조건도 적어줘.

기존 지시로 정할 수 있는 기술 선택은 진행하고, 지원 범위 등에 꼭 필요한
사용자 의도가 빠져 있을 때만 질문해줘. 결정 기록과 ROADMAP을 갱신해줘.
```

### P-07. PDK inventory와 view 대응표

**대상: M0-07 / 추천: 6.1 Sol / high.** 여러 파일 형식을 교차 검사하는 코드와 근거가 필요하다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M0-07을 수행해줘. 외부 NSPL_05CMOS_PDK_260820의 디지털 12T
자료와 기존 라이브러리의 Liberty/LEF/Verilog/CDL/GDS·기술 설정을 조사해줘.

재실행 가능한 inventory/비교 코드를 만들고 필요한 view·파일 해시·셀/핀
이름·방향·전원·단위·층·site/grid의 대응, 누락과 불일치를 표로 정리해줘.
물리 전용 셀과 기능 셀을 구분하고 파일이 존재하는 것과 의미가 일치하는
것을 구분해줘. 읽지 못한 view는 미확인으로 표시하고 필요한 도구를 적어줘.
원본은 보존하고 코드·실행 명령·검증 결과를 기록하여 ROADMAP을 갱신해줘.
```

### P-08. 순차 셀 기능 모델 검증

**대상: M0-08 / 추천: 6.1 Sol / extra high.** 에지·비동기 제어·여러 view의 의미가 얽힌 작업이다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M0-08을 수행해줘. PDK_REFERENCE의 부록 B의 DFFPOSX1 불일치를 출발점으로,
새 PDK의 순차 셀별 에지, latch enable, 비동기 set/reset와 동시 제어 동작을
Liberty·제공 Verilog·확인 가능한 회로 자료와 대조해줘.

입력을 두 에지 사이에서도 바꾸는 의미 있는 자동 판정 테스트를 작성하고
실행해줘. 기능 모델의 문제와 실제 셀·타이밍 모델의 불확실성을 구분해줘.
근거가 확보되면 원본과 분리된 파생 기능 모델/패치 및 검증 기준을 만들고
재검증해줘. 실제 실리콘 동작을 확인한 것처럼 쓰거나, TB 시점 변경만으로
불일치를 숨기지 마. 근거가 충돌하면 필요한 공정 자료와 미결정을 남기고,
실험·처리 방안·원본/파생 해시를 연결하여 ROADMAP을 갱신해줘.
```

### P-09. QFlow 새 PDK 호환성 실험

**대상: M0-09 / 추천: 6.1 Sol / high.** 도구 실행·어댑터 수정·최초 실패 추적이 필요한 작업이다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M0-09를 수행해줘. 필요한 inventory·셀 모델 결과를 확인한 뒤,
독립된 실험 디렉터리에서 새 NSPL 12T view와 shift_reg_8bit를 사용하여
셀 읽기→합성→배치→배선→GDS 인계의 최소 실험을 실제 실행해줘.

설치된 기존 etri050 링크와 공유 라이브러리는 보존하고, 필요한 플랫폼
어댑터·설정은 별도로 작성해줘. 층·격자·핀·전원·셀 이름, 단위와 최종
GDS의 셀 누락을 확인해줘. 실패하면 최초 실패의 최소 입력·명령·로그와
원인, 수정 후 결과를 기록해줘. 조사 완료와 전체 흐름 통과를 구분하고
QFlow 재사용의 가능 범위·남은 장애를 정리하여 ROADMAP을 갱신해줘.
```

### P-10. CTS·배선 RC 경로 검증

**대상: M3-03(B)·M3-04(C) / 추천: 6.1 Sol / extra high.** 담당 구현을 수행할 때 사용한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2, REQUIREMENTS의 단계별 계약,
담당 튜토리얼 초안, development/experiments/M0-10-cts-rc/README.md와
같은 폴더의 FOLLOW_UP.md를 읽고 M3-03/04의 CTS·RC·annotation을 구현해줘.
기존 성공/실패를 출발점으로 쓰고 이미 수행한 실험 기록은 보존해줘.

B의 CTS·PG·pin access·route·배선 RC 생산과 C의 추출 정확도·annotation·POST-STA
검증 경계를 확인하고 기준을 충족하는 한 경로를 작은 설계에서 완성해줘.
최종 netlist/DEF/GDS/RC의 이름·연결·단위·코너·해시를 대조해줘.
제공 Util의 CTS/track/PG와 ITF/TLU+·ICT/p2lvsfile·MIPT/실제 LPE_LIB에서
시작하고 원자료 부재와 검증된 변환 부재를 구별해줘.

SPEF 채택 시 SDF 병행은 필수로 추가하지 마. 근사 RC·ideal clock·fixture를
실제 배선 RC/POST-STA 통과로 취급하지 마. 기존 진단 코드를 공통 flow로
그대로 승격하거나 종료 코드만 바꾸지 말고 실제 판정을 연결해줘.
skew/slew·부하·fanout, RC 정확도와 annotation 누락을 확인하고
최소 실패 입력·수정 후 실행과 실제 인계 근거를 M3에 기록해줘.
```

### P-11. 기본 PnR 경로 선택과 결정 기록

**대상: M3-03(B)·M3-05(A/B/C) / 추천: 6.1 Sol / high.** M2의 후보 조사를 실제 경로 선택으로 연결한다.

```text
development/ROADMAP.md, CODEX_GUIDE 1.2, REQUIREMENTS와 담당 초안,
M0-09/10의 기존 근거를 읽고 M3-03의 B 주도로 기본 P&R 경로를 선택해줘.
C와 RC·STA·최종 물리 인계 조건을 확인하고 선택에 필요한 최소 실험을 수행해줘.
QFlow 보완/OpenROAD/필요한 혼합 후보 중 기준을 충족하는 한 경로를 선택하고,
혼합 경계의 DEF/netlist·clock/PG·층·단위 보존을 확인해줘.

선택/제외 이유·도구/PDK 식별·지원 한계·미해결·재검토 조건을
development/decisions/에 기록하고 M3-03/05에 연결해줘.
공통 입력·인계 변경은 생산자·수신자와 확인하고 예제·설명·스키마를 함께 맞춰줘.
```

<a id="p-13-공통-개발-계약-v1"></a>

### P-13. 시작 자료와 최소 작업 규칙

**대상: M0-10~13 / 추천: 6.1 Sol / medium.** 시작 문서 하나에 기존 사실과 최소 작업 규칙을 정리한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M0-10~13을 준비해줘.
기존 결정 001/002, M0-09/10과 PDK 조사 근거에서 확인 범위·미해결 질문을
development/handoffs/M2-PREPARATION.md에 연결해줘. 기존 실험은 수정하지 마.

A=01/02, B=03/04, C=05의 stage ID·담당 파일·참고 자료,
A→B의 netlist/SDC/area, B→C의 최종 netlist/DEF/GDS/RC 등
주요 입출력 종류·단위만 짧은 표로 적고 공통 파일 변경 절차를 정해줘.
확인한 사실·제안·미확인, 실제 결과·예시를 구별하는 규칙도 적어줘.

전체 YAML 키·스키마·CLI·manifest·fixture나 별도 기술 보고서는 만들지 마.
최종 backend 선정·CTS/RC 실험은 M3의 담당 구현이야.
문서와 링크를 확인하고 해당 준비 작업의 상태·근거를 ROADMAP에 반영해줘.
```

<a id="p-14-폴더-의존성-조사와-정리-계획"></a>

### P-14. 작업 경로와 참조 계획

**대상: M0-14 / 추천: 6.1 Sol / medium.** 즉시 사용할 경로만 정한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M0-14를 수행해줘.
기존 inventory를 사용해 튜토리얼·단계별 코드·템플릿의 담당 경로와
기준 RTL/TB/SDC·PDK·실험 자료의 원래 위치를 시작 문서의 한 표로 연결해줘.
새 폴더 생성·필요한 참조 수정과 접근 확인 방법만 정해줘.
전체 저장소의 의존성 재조사·legacy 이동·삭제나 외부 PDK 복사는 하지 마.
M1에서 바로 만들 경로와 확인 방법을 남기고 ROADMAP을 갱신해줘.
```

<a id="p-101-설치빌드doctor-구현"></a>

### P-101. 현재 환경과 자료 접근 안내

**대상: M1-01 / 추천: 6.1 Sol / medium.** 이 준비 단계에서는 현재 환경과 접근 방법을 안내한다. 설치 자동화·doctor 구현은 M3-06에서 수행한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M1-01을 수행해줘.
M0-06의 환경 기록을 재사용하고 현재 Git·Python·편집 환경,
설치된 EDA 실행 파일과 공유/외부 PDK·필수 참고 자료의 위치를 확인해줘.
없는 도구는 담당별 필요 목록으로 남기고 자료 접근에 필요한 방법을 안내해줘.
새 setup/doctor·프로파일·lock을 구현하거나 EDA를 설치·빌드하지 마.
확인한 명령·접근 결과와 한계를 시작 문서 및 ROADMAP에 기록해줘.
```

<a id="p-102-프로젝트-생성기와-빈칸-yaml"></a>

### P-102. 담당별 작업 폴더 준비

**대상: M1-02 / 추천: 6.1 Sol / medium.** 지금은 담당별 작업 폴더와 진입점을 준비한다. 생성기·YAML 구현은 P-301/P-302를 사용한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M1-02를 수행해줘.
REQUIREMENTS의 목표 경로에서 docs/tutorials·lessons·prompts,
stage ID별 flow/stages와 templates/digital·platforms·examples의 최소 진입점을
만들어줘. 빈 폴더는 짧은 역할 안내로 추적하고 담당을 표시해줘.

담당 경계는 기준 PDF의 다섯 단계와 A=01/02, B=03/04, C=05를 따라줘.
튜토리얼 파일·목차·본문을 미리 만들지 마. M2에서 각 담당자가
자기 문서의 목차·제목·설명 순서와 세부 구성을 자율적으로 정해 작성해.
YAML·스키마·프로젝트 생성기·실행 더미는 만들지 마.
작업 폴더·예정 편집 경로·담당과 참고 링크를 확인하고 ROADMAP을 갱신해줘.
```

<a id="p-103-생성입력-오류-처리-검증"></a>

### P-103. 담당 경로와 공통 변경 절차

**대상: M1-03 / 추천: 6.1 Sol / medium.** 지금은 작업 충돌을 피할 규칙을 정한다. 생성·입력 오류 검증은 M3-06에서 수행한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M1-03을 수행해줘.
A/B/C의 튜토리얼·단계 코드·템플릿 경로와 공통 파일을 구분하고,
README·스키마·플랫폼 설정의 변경 주도자와 확인할 상대를 정해줘.
담당별 브랜치 등 현재 작업 방식에 맞는 충돌 방지 방법을 시작 문서에 적어줘.
아직 없는 생성기나 YAML 오류 처리의 구현·테스트로 범위를 넓히지 마.
담당 경로의 중복과 안내의 명확성을 확인하고 ROADMAP을 갱신해줘.
```

<a id="p-104-기준-예제와-자동-판정-tb"></a>

### P-104. 기준 예제와 기존 검증 근거

**대상: M1-04 / 추천: 6.1 Sol / medium.** 기존 예제와 검증 근거를 찾을 수 있게 한다. TB 개선과 실제 재검증은 M3-02에서 수행한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M1-04를 수행해줘.
기존 shift_reg_8bit RTL/TB/SDC와 M0-08/09의 명령·검증 결과를 찾아
examples의 진입점과 시작 문서에 연결해줘. 필요하면 최소 파일만 복사하되
원본·클록/리셋·셀 모델 프로파일과 제약 출처는 보존해줘.
실제 파일·참고 링크를 확인하고 새 TB·YAML·생성기 연결·EDA 재실행은
이번 준비에 추가하지 마. 준비 근거를 ROADMAP에 기록해줘.
```

<a id="p-105-readme와-초보자-안내"></a>

### P-105. README와 담당별 시작 안내

**대상: M1-05 / 추천: 6.1 Terra / medium.** 담당자가 작업을 시작할 경로를 안내한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M1-05를 수행해줘.
README에 현재 지원 범위·폴더 역할·A/B/C의 M2 작성 파일·기존 참고 자료와
첫 조사 항목을 연결해줘. M1에서 준비한 실제 경로·접근 방법을 사용해줘.
앞으로 만들 생성기·YAML·설치 명령을 현재 기능으로 안내하지 마.
링크를 확인하고 최종 사용자 안내는 M3 구현과 함께 완성할 범위로 명시해줘.
```

<a id="p-106-폴더-이행정리와-경로-검증"></a>

### P-106. 새 작업 경로와 착수 확인

**대상: M1-06·07 / 추천: 6.1 Sol / medium.** 필요한 경로를 연결하고 병렬 집필 준비를 확인한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 M1-06/07을 수행해줘.
M0-14의 최소 경로표대로 새 작업 폴더와 필요한 자료 참조를 연결해줘.
파일을 옮기는 경우 실제 사용하는 참조만 함께 수정하고 기존 실험·외부 PDK·
수동 설계물·미사용 legacy는 보존해줘.

A/B/C의 문서·구현 작업 폴더와 예정 편집 경로·담당 규칙, 기준 PDF·
RTL/TB/SDC·PDK·기존 조사 자료 접근을 확인하고 ROADMAP의 M2 착수 기준을
확인해줘. 튜토리얼 파일·목차의 사전 생성은 착수 조건에 넣지 마.
생성기·전체 YAML·setup/doctor·EDA 실행·계약 fixture를 추가하지 마.
development/handoffs/M2-PREPARATION.md에 담당별 첫 작업과 확인 결과를 연결하고
근거가 있는 준비 작업만 완료로 바꿔줘.
```

### P-201. 담당별 조사와 튜토리얼 초안

**대상: M2-01~05 / 추천: 6.1 Sol / medium.** 세 사람이 자기 역할로 각각 실행한다.

```text
이번 담당: A

development/ROADMAP.md, REQUIREMENTS, CODEX_GUIDE 1.2와
development/handoffs/M2-PREPARATION.md를 읽고 내 담당의 M2 작업을 수행해줘.
A는 01/02, B는 03/04, C는 05를 맡아. 기준 PDF의 단계 경계와 기존 조사·
실험을 출발점으로 자기 튜토리얼 파일을 만들고, 목차·제목·설명 순서와
세부 구성은 자율적으로 정해줘. 목적·원리·도구·입출력·절차·예상 결과·
판정 기준·실패 복구·출처는 필요한 위치에서 설명해줘.
미실행 명령·수치는 예시/미검증으로 표시해줘.

M3에서 만들 YAML의 입력 항목·단위·결정 방법, 담당 도구·설치 필요,
앞뒤 단계 인계와 미해결 질문·확인 방법을 목록으로 정리해줘.
상대 담당자의 코드·실제 산출물을 기다리지 말고 내 문서를 진행해줘.
필요한 추가 조사는 내 범위에 한정하고 공통 파일 변경은 상대와 확인해줘.
전체 YAML·스키마·자동화 구현이나 실제 전체 흐름 통과를 완료 조건으로 넣지 마.
확인된 조언·AI 도움이 필요한 상황을 적고 담당 M2 행에 초안과 남은 문제를 연결해줘.
```

### P-301. 공통 입력·실행 기반과 프로젝트 생성기

**대상: M3-01 / 추천: 6.1 Sol / high.** A가 주도하고 B/C가 검토한다.

```text
development/ROADMAP.md, REQUIREMENTS, CODEX_GUIDE 1.2와
M2의 튜토리얼·입력 항목·인계 목록을 읽고 M3-01을 구현해줘.
공통 project.yaml·단위·stage ID·스키마·결과/오류·manifest·해시·무효화 규칙을
B/C의 담당 입력과 맞추고 최소 공통 구현을 만들어줘.
scripts/new-project.sh와 run-stage.sh, 단계별 템플릿 조립·검증을 연결해줘.
미완성 단계는 blocked와 이유를 반환하고 사용자의 기존 파일은 보존해줘.
담당자가 자기 YAML·스키마·코드를 독립적으로 추가할 경계를 명확히 해줘.
정상 생성·중복/잘못된 이름 거부·다른 작업 위치에서의 호출을 실제 확인하고,
공통 입력과 작은 인계 예를 검증해 ROADMAP에 근거를 남겨줘.
```

### P-302. 담당별 YAML·실행 코드·검증

**대상: M3-02~08 / 추천: 6.1 Sol / high.** 복잡한 CTS·RC 진단은 P-10을 함께 사용한다.

```text
이번 담당: A

development/ROADMAP.md, REQUIREMENTS, CODEX_GUIDE 1.2와
내 담당 M2 초안·M3 공통 계약을 읽고 담당 YAML·스키마·코드·검증을 구현해줘.
A는 project.yaml의 설계 입력·timing.yaml과 01/02,
B는 pins.yaml·physical.yaml과 03/04,
C는 verification.yaml과 05를 맡아. 공통 키·플랫폼·RC 경계는 상대와 확인해줘.

각 YAML은 필수/선택/자동 칸, 의미·단위·허용값·결정 방법·완성 예를 갖추고
튜토리얼과 실제 스키마·명령·오류 메시지가 일치하게 해줘.
담당 도구의 setup/doctor·버전·해시·로그, 작은 유효/오류 fixture와 실제 예제
검증을 준비해줘. 미구현 상대 단계는 명시한 fixture로 개발할 수 있지만
실제 단계 완료와 최종 인계에는 실제 netlist/SDC/DEF/GDS/RC를 사용해줘.

M3의 기능·STA·CTS·배선 RC·최종 DRC/LVS·적용 규칙 기준을 충족하고,
누락·타이밍 실패·RC 미확보를 성공으로 표시하지 마.
입력 변경 후 재실행·오래된 결과 방지, README·lessons·AI 안내도 담당 범위에서
맞춰줘. 실제 실행 근거와 미해결·상대에게 필요한 자료를 ROADMAP에 연결해줘.
```

### P-DIAG. 막힌 작업 하나 재진단

**추천: 6.1 Sol / extra high.** 범위를 좁힌 난제에 한해 `max`를 비교할 수 있다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 현재 마일스톤에서 막힌 작업
하나를 재진단해줘. 과거 시도·로그·입력·도구 버전에서 사실과 가설을 구분하고,
현재 단계의 완료 조건에 꼭 필요한지 먼저 확인해줘.
M0·M1 준비 중에는 M3의 생성기·YAML·설치 자동화·CTS/RC 문제를 선택하지 마.
필요한 최소 확인·수정 후 결과를 기록하고 해결되지 않으면 필요한 자료·다음 행동을
남겨줘. 같은 실패 명령을 반복하거나 전체 흐름을 갈아엎지 마.
```

### P-ULTRA. 독립 조사·검증을 나누어 진행

**선택 사항 / 추천: 6.1 Sol / ultra.** 명시적으로 하위 agent 분담을 선택할 때 사용한다.

```text
development/ROADMAP.md와 CODEX_GUIDE 1.2에 따라 현재 마일스톤의 독립 작업을
하위 agent에게 분담해줘. M0·M1은 시작 자료 색인·담당 경로·작업 폴더·접근 확인만
나누고, M2는 담당별 초안, M3는 담당별 구현을 나눠줘.
공통 파일과 ROADMAP은 상위 agent만 수정하고 담당 경로의 충돌을 피하게 해줘.
이미 완료된 조사·실험은 보존하고 현재 단계의 범위를 넓히지 마.
상위 agent가 결과·근거를 대조하고 실제 완료한 작업만 반영해줘.
하위 agent를 쓸 수 없으면 같은 분담 순서로 직접 수행해줘.
```
