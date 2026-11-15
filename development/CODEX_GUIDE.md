# Codex 개발 작업 실행 안내

## 1. M0·M1을 Codex로 진행하는 방법

이 절의 우선 실행 범위는 **A/B/C의 빠른 독립 개발 착수를 위한 M0·M1 공통 준비**다. M0-10~12의 미완료 상세 구현은 M2 담당자에게 이관했으며 P-10/P-11은 그 담당자의 후속 실행용이다. 향후 최종 사용자용 튜토리얼 프롬프트는 [상세 요구사항 7절](REQUIREMENTS.md#7-튜토리얼-시나리오별-ai-사용-안내-요구사항)에 따라 별도로 작성한다.

한 번에 진행하려면 P-ALL, 작업과 모델을 바꾸며 진행하려면 작업표에 연결한 개별 프롬프트를 사용한다. 각 코드 블록은 그대로 복사할 수 있고, 저장소를 연 Codex가 실제 경로와 현재 상태를 읽도록 작성했다. 이미 완료된 작업은 표의 최신 상태·필요 근거만 확인하고, 입력 변경이나 새 실패 근거가 없으면 반복하지 않는다.

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
| medium | `medium` | P-06의 환경 정리, P-106의 검증 근거 기반 안내 작성에 제안. |
| high | `high` | 구현·실험·검증을 함께 수행하는 P-ALL과 대부분의 개별 개발 작업에 제안. |
| extra high | `xhigh` | P-08의 순차 셀 의미 대조, P-10의 CTS·RC 연계처럼 오류 원인이 여러 파일·도구에 걸친 작업에 제안. |
| max | `max` | 범위를 좁힌 난제가 기존 시도로 해결되지 않고 더 깊은 분석이 필요할 때 P-DIAG에 선택적으로 사용. |
| ultra | `ultra` | 독립 과제를 하위 agent로 나눌 수 있을 때 P-ULTRA에 선택적으로 사용. 공통 파일 편집과 결과 통합은 상위 agent가 맡는다. |

`6.1 Sol`의 모델 ID는 `gpt-6.1-sol`, `6.1 Terra`는 `gpt-6.1-terra`다. Light는 CLI의 Low(`low`), Extra High는 `xhigh`로 표기한다. 실제 선택 가능 범위는 계정·클라이언트·모델에 따라 확인한다. Codex의 `/model`에서 모델과 effort를 선택할 수 있으며, 지원되는 Max/Ultra는 `More reasoning…`에서 확인한다. [공식 모델 설정 안내](https://learn.chatgpt.com/docs/models#choose-a-model)

CLI를 쓰는 경우 저장소 루트에서 다음과 같이 시작한 뒤 프롬프트를 붙여넣는다. 아래 명령은 전역 설정 파일을 수정하지 않는다.

```bash
# P-ALL 또는 일반 구현 작업
codex -m gpt-6.1-sol -c 'model_reasoning_effort="high"'

# P-08 / P-10
codex -m gpt-6.1-sol -c 'model_reasoning_effort="xhigh"'

# P-106: 구현 결과에 근거한 초보자 안내 작성
codex -m gpt-6.1-terra -c 'model_reasoning_effort="medium"'
```

### 1.2 모든 실행 프롬프트에 적용할 공통 규칙

아래 프롬프트는 이 절을 읽도록 지시하므로 공통 규칙을 매번 따로 붙여넣을 필요는 없다.

1. 저장소 루트와 적용되는 `AGENTS.md`, PLAN, REQUIREMENTS, ROADMAP, 관련 PDK 참고 자료와 현재 Git 변경을 먼저 확인한다. 기존 사용자 변경을 보존하고 관련 작업의 실제 상태·근거에서 이어서 진행한다.
2. 조사 결과만 제시하고 끝내지 말고, 요청한 범위의 코드·설정·문서·의미 있는 검증·진행 기록까지 수행한다. 완료 조건을 충족한 작업만 `완료`로 바꾼다.
3. 원본 PDK와 라이브러리 내용·수동 설계물·재현 근거를 보존하고, M0 실험에서 기존 공유 라이브러리나 시스템 기술 링크를 덮어쓰지 않는다. M1의 폴더 이행은 확정한 경로 대응표에 따라 참조를 함께 수정하고, 저장소 외부 링크에 미치는 영향도 확인한다. 외부 설정의 변경은 환경의 권한 절차를 따른다. 실험은 독립 디렉터리에서 수행하고 파생 어댑터·모델·변환의 출처와 해시를 남긴다.
4. 실제 사용한 RTL·설정·PDK·도구 버전, 명령과 작업 디렉터리, 로그·산출물, 기대/실제 결과를 `development/experiments/` 등에 기록한다. 대형 재생성 산출물은 보관 위치·해시·재실행 방법으로 연결한다.
5. 기술 선택은 실행 근거를 보고 Codex가 제안·채택·기록할 수 있다. 기능·타이밍 의도나 지원 정책을 자료에서 결정할 수 없을 때만 필요한 질문을 하고, 그 답을 기다리지 않아도 되는 작업은 계속한다.
6. 권한·네트워크·자료 때문에 실행할 수 없는 작업은 필요한 항목과 다음 명령을 기록하고 해당 행을 `대기`로 둔다. 실행하지 않은 빌드·시뮬레이션·물리 검증은 완료로 쓰지 않는다. 시스템 설치가 필요하면 환경의 권한 절차를 따르며 무조건적인 upgrade/autoremove나 전역 설정 덮어쓰기를 피한다.
7. RC 미확보·ideal clock·TT 한정·미이식 DRC 항목 등을 명시한다. 목표를 낮추거나 타이밍 예외·검증 생략으로 통과시키지 않는다. 모델 간 기능 불일치는 테스트벤치의 입력 시점만 조정하여 숨기지 않는다.
8. M0에서는 최소 계약과 팀 사용 필수 경로 대응을 준비하고, M1에서는 해당 경로 이행·참조 수정·공통 도구 점검·프로젝트 생성·RTL/TB·인계 fixture의 최소 동작을 확인한다. 미사용 legacy 전체 정리·최종 backend·CTS/RC 검증을 공통 준비의 필수 선행조건으로 붙이지 않는다. 미구현 M2 단계는 blocked와 이유를 반환하며 성공을 반환하는 더미로 대체하지 않는다.
9. 작업 종료·실제 장애 발생 시 ROADMAP의 상태·근거·다음 행동과 변경 기록을 맞춘다. 이관 항목은 소유자·후속 작업을 연결하고 원래 검증을 완료로 표시하지 않는다. 최종 응답에는 완료한 준비 작업, 변경 파일, 실제 검증, 미해결/이관과 다음 작업을 적는다.
10. 완료된 단계의 작업·상태·근거를 소급 수정하지 않는다. 새 자료·요구사항·재검증은 미완료 후속 단계나 새 작업으로 연결한다. 완료된 단계용 프롬프트는 당시 작업의 참고용으로 보존한다.
11. 기본은 한 agent로 수행한다. P-ULTRA를 명시적으로 선택한 경우에는 그 프롬프트의 분담 범위와 파일 충돌 방지 규칙을 따른다.
12. 현재 공통 준비는 M0-13/14 → M1-01~08 → [M2 착수 기준](ROADMAP.md#m2-착수-기준)에 집중한다. M0-10~12의 상세 CTS/RC·최종 backend 선택은 M2-02/03/05의 B/C 업무다. 기존 실험을 보존·인계하고 공통 준비에서 자동 재개하지 않는다. 실제/fixture·근사/검증된 결과의 구분과 최종 검증 기준은 유지한다.

PDK 조사·변환·정리에는 [PDK 참고 1.5](PDK_REFERENCE.md#15-12t_std-원-설계의-활용과-검증-범위)를 함께 적용한다. `12T_PnR`은 실행용 export, `12T_std`는 원 OpenAccess 설계로 추적하고, 파일 존재·이름 일치와 실제 판독·기능·물리 연결 검증을 구별한다. 기존 CDL/GDS 등으로 수행할 수 있는 작업을 먼저 진행하며, OA reader가 없다는 이유만으로 현재 디지털 프로파일의 개발을 대기로 돌리지 않는다. 특정 연결·revision 불일치가 확인되면 원본/ASCII export를 대조하고 부족한 부분만 요청한다.

또한 [전체 묶음/PDF 조사](experiments/pdk-package-review/README.md), [PDK 참고 1.6](PDK_REFERENCE.md#16-etri-제공-묶음-전체의-활용)과 [줄일 준비 작업](REQUIREMENTS.md#제공-자료에-따라-줄일-준비-작업)을 적용한다. 공정 규칙·RC·MOS·GPIO/pad는 이미 제공되었으므로 기존 근거에서 이어 가고 필요한 특정 누락·변환만 해결한다. 전체 PDK·스크립트 수동 복사, DB/NDM 재제작, 모든 backend 구현, SPEF 채택 시 SDF 병행, 전체 셀/코너 재특성화와 pad ring을 기본 선행 조건으로 추가하지 않는다. 사용하지 않은 참고/생성 파일을 실행 입력과 구분하고 PDF의 미검증 coverage·오류 무시를 통과 기준으로 복사하지 않는다.

### P-ALL. M0·M1 일괄 진행

**추천: 6.1 Sol / high.** 현재는 세 담당자가 독립 개발을 시작할 공통 준비를 마치는 프롬프트다. 상세 P&R·RC 구현을 먼저 끝내도록 범위를 넓히지 않는다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md를 읽고,
CODEX_GUIDE 1.2에 따라 A/B/C가 빠르게 독립 개발을 시작할 M0·M1 준비를 진행해줘.
development/handoffs/M2-PREPARATION.md의 범위와 현재 Git 변경에서 이어 가줘.

완료된 M0-01~09는 필요한 근거만 재사용하고, M0-10~12는 미완료 이관으로
보존해줘. 상세 CTS·pin access·RC 변환·최종 backend 선택 실험을 여기서 재개하지 마.
그 작업은 M2-02의 B와 M2-03의 C가 이어서 맡아.

먼저 M0-13의 최소 YAML/schema/CLI·입출력·결과·fixture 계약과
M0-14의 팀 사용 필수 경로 대응을 준비해줘. 최종 backend 선택을 기다리지 말고
공통 필드·단위·파일명과 backend 옵션의 확장 지점을 정해줘.
기존 inventory를 재사용하고 미사용 legacy 전체 조사·이동·삭제로 범위를 넓히지 마.

이어 M1의 공통 setup/doctor, 프로젝트 생성·빈칸 YAML·입력 오류 처리,
자체 완결 shift_reg_8bit RTL/TB, 필수 경로 이행과 README를 구현해줘.
담당별 선택 도구 프로파일은 공통 필수 환경과 구분해줘.
프로젝트 생성·입력 검사·RTL simulation·계약 fixture·필수 참조를 실제 확인하고
M1-08의 M2 착수 기준과 담당자별 시작 자료를 채워줘.

미구현 단계는 blocked와 이유를 반환하게 하고 fixture를 실제 설계 통과로
사용하지 마. 물리 단계 최종 검증 기준은 유지하지만 이를 M1 완료 조건으로
추가하지 마. 실제로 완료한 작업만 ROADMAP에 반영하고 다음 행동을 기록해줘.
M2 본구현이나 M3·M4 수행은 이번 공통 준비 범위에 포함하지 마.
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

**대상: M2-02(B)·M2-03(C)의 M0-10 이관 후속 / 추천: 6.1 Sol / extra high.** 공통 준비 P-ALL에서는 실행하지 않는다. 아래는 B/C가 담당 구현을 시작할 때 사용한다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md 1.2절,
development/handoffs/M2-PREPARATION.md,
development/experiments/M0-10-cts-rc/README.md와 같은 폴더의 FOLLOW_UP.md를 읽고,
M2-02/03의 범위에서 M0-10의 미완료 CTS·RC·annotation 작업을 이어서 수행해줘.
기존 성공/실패를 재사용하고 공통 환경 준비의 선행 작업으로 되돌리지 마.

B의 CTS·PG·pin access·route·배선 RC 생산과 C의 추출 정확도·annotation·POST-STA
검증 경계를 확인해줘. 기준을 충족하는 한 경로를 작은 설계에서 완성하고,
최종 netlist/DEF/GDS/RC의 이름·연결·단위·코너·해시를 대조해줘.

제공 Util의 CLKBUFX2/4·INVX8, track/PG와 ITF/TLU+, ICT/p2lvsfile,
MIPT/실제 LPE_LIB에서 시작해 원자료 부재와 검증된 변환 부재를 구별해줘.
SPEF를 택하면 SDF 병행을 필수로 추가하지 마. 셀별 PEX·근사 RC·ideal clock이나
fixture를 실제 배선 RC/POST-STA 통과로 취급하지 마.

기존 실험 코드는 진단용이며 특정 fixture·추정 RC·종료 2가 포함돼 있어.
이를 공통 기준 구현으로 그대로 승격하거나 종료 코드만 바꾸지 말고 실제 판정을 연결해줘.
최소 실패 입력과 수정 후 실행, skew/slew·부하·fanout, RC 변환·정확도와
annotation 누락을 확인하고 M2 작업·실제 인계 근거로 기록해줘.
```

### P-11. 기본 PnR 경로 선택과 결정 기록

**대상: M2-02(B)·M2-05(B/C)의 M0-11/12 이관 후속 / 추천: 6.1 Sol / high.** 최종 backend 선택은 공통 계약·프로젝트 생성기의 선행조건이 아니다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md 1.2절,
development/handoffs/M2-PREPARATION.md와 M0-09/10의 기존 근거를 읽고,
M2-02의 B 주도로 M0-11/12의 최종 backend 선택·결정 기록을 이어서 수행해줘.
C와 RC·STA·최종 물리 인계 조건을 함께 확인해줘.

QFlow 보완/OpenROAD/필요한 혼합 후보 중 실제 요구를 충족하는 한 경로를 선택해줘.
기존 실험의 확정 사실과 미검증을 구별하고 판정에 필요한 최소 실험만 추가해줘.
모든 후보를 전부 완성할 필요는 없어. 혼합을 채택하면 그 실제 경계의
DEF/netlist 이름·연결·clock/PG·층·단위 보존을 확인해줘.

선택/제외 이유, 도구·PDK 식별, 지원 한계·미해결·재검토 조건을 development/decisions/에 기록하고
M2-02/05에 연결해줘. 공통 계약 변경이 필요하면 A/C와 영향받는 입력·인계 예를
함께 갱신하고 M0-10~12를 근거 없이 완료 처리하지 마.
```

### P-13. 공통 개발 계약 v1

**대상: M0-13 / 추천: 6.1 Sol / high.** 세 담당자가 독립 개발을 시작하는 데 필요한 최소 계약을 먼저 만든다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md 1.2절,
development/handoffs/M2-PREPARATION.md를 읽고 M0-13을 수행해줘.
M0-10~12의 최종 backend·CTS/RC 완료를 기다리지 마.

stage ID, 팀 사용 경로, 공통 YAML 키·자료형·단위·단계별 필수값,
정규 SDC 원칙, CLI 입출력·파일명, 결과/오류·해시·도구/PDK 식별,
실제/fixture 구분과 입력 변경의 무효화를 최소 v1로 구체적인 파일에 정의해줘.
backend 고유 키·구현은 B/C의 확장 지점으로 남기고 미확정을 확정처럼 쓰지 마.

기존 inventory와 검증된 제한 셀 프로파일을 재사용해 PDK 실행 export와
원 설계 참조를 구별해줘. 사용하지 않은 OA·calibration 로그를 매 단계
입력 해시에 넣거나 전체 PDK 재조사를 반복하지 마.

A→B와 B→C의 작은 유효/오류 fixture와 확인 명령을 제공해줘.
fixture의 계약 검사 통과와 실제 설계 통과를 구별하고 미구현 단계는
blocked와 이유를 반환하도록 계약해줘. 범용 framework나 전체 backend 구현으로
넓히지 말고 코드·계약 검증·인계 근거와 ROADMAP을 갱신해줘.
```

### P-14. 폴더 의존성 조사와 정리 계획

**대상: M0-14 / 추천: 6.1 Sol / high.** 팀 사용 필수 경로를 우선 조사한다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md 1.2절에 따라
M0-14의 팀 사용 필수 경로 대응을 준비해줘. M0-13과 병행하고
최종 backend·CTS/RC 검증이나 미사용 legacy 전체 조사를 기다리지 마.

scripts/flow/platforms/templates/examples/docs에서 세 담당자가 실제 사용할
코드·예제·모델·PDK 참조의 기존 경로, 참조자, 목표 경로, 이행 방침과
최소 확인 명령을 적어줘. 필요한 설치 링크와 Projects/projects 충돌도 확인해줘.
기존 inventory를 재사용하고 제공 PDK 전체·12T_std 원 설계·수동 설계물·
실험 근거는 보존해줘. 외부 PDK를 복사·이동·삭제하지 마.

미사용 legacy·재생성 생성물은 분류만 남기고 전체 정리를 착수 조건으로 추가하지 마.
M1-07의 필수 이행·참조 수정 순서와 M1-08의 최소 검증을 정해줘.
이 조사에서는 실제 이행을 시작하지 말고 대응표·근거와 ROADMAP을 갱신해줘.
```

### P-101. 설치·빌드·doctor 구현

**대상: M1-01 / 추천: 6.1 Sol / high.** 공통 필수 환경과 담당별 선택 도구를 구별한다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md 1.2절에 따라
M1-01을 구현해줘. M0-06의 환경 근거와 M0-13/14의 최소 계약·경로를 사용하고
M0-11/12의 최종 backend 완료를 선행조건으로 두지 마.

Python·RTL simulation·Yosys/OpenSTA·PDK view 점검 등 공통 개발에 필요한
setup/doctor·관측 버전/소스·해시 기록과 기본 프로파일을 먼저 구현·검증해줘.
후보 P&R/추출 도구는 B용 확장 프로파일로 분리하고 그 미설치가 A/C의 공통 준비를
막지 않게 해줘. 기존 버전이 맞으면 재사용하고 불필요한 재설치/빌드는 하지 마.

실행 export와 원 OA 참조를 구분하고 OA reader·DB/NDM 재제작·상용 EDA를
기본 필수로 넣지 마. 고정 홈 경로 의존성을 없애고 실패 전파·재실행·로그 위치를
다뤄줘. 실제 설치·점검한 범위와 깨끗한 환경에서 미확인한 부분을 구별해줘.
최종 backend 도구의 lock·설치 확장은 B/C 선택 뒤 이어가며, 실행 근거와
남은 작업을 ROADMAP에 기록해줘.
```

### P-102. 프로젝트 생성기와 빈칸 YAML

**대상: M1-02·03 / 추천: 6.1 Sol / high.** 생성기·입력 검증·설명이 같은 schema를 사용해야 한다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M1-02와 M1-03을 구현해줘. 공통 계약 v1을 사용하여
scripts/new-project.sh fir가 projects/fir/와 RTL/TB 틀·빈칸 YAML·
프로젝트 안내를 만들게 해줘. 프로젝트 이름과 top module은 구분해줘.

사용자가 키·들여쓰기·목록 구조를 새로 작성하지 않도록 양식을 생성하고,
각 칸에 필수/선택/자동 표시, 의미·단위·허용값·결정 방법·완성 예와
해당 튜토리얼 안내를 제공해줘. 미입력·잘못된 입력은 파일·키·수정 예를
알려주며 거부하고, 자동 탐색 결과를 갱신할 때 사용자 입력을 보존해줘.
기준 예제 생성 옵션도 연결하되 미구현 단계는 분명히 표시해줘.
임시 프로젝트를 실제 생성·검증하고 코드·안내·결과와 ROADMAP을 갱신해줘.
```

### P-104. 생성·입력 오류 처리 검증

**대상: M1-04 / 추천: 6.1 Sol / high.** 기존 파일 손상과 잘못된 입력의 통과를 실제로 확인한다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M1-04를 수행해줘. 임시 디렉터리에서 정상 생성, 중복 생성, 잘못된
이름·경로 이탈, 다른 작업 위치에서의 호출, 필수 빈칸, 자료형·범위 오류,
알 수 없는 키, 없는 RTL·포트에 대한 실제 동작을 검증해줘.

기존 프로젝트를 덮어쓰지 않는지, 오류 종료와 메시지가 초보자에게
파일·키·수정 방법을 알려주는지 확인해줘. 의미 있는 회귀 검증을 추가하고
발견한 결함은 수정한 뒤 관련 검증을 다시 실행해줘. 코드 줄을 그대로
반복하는 형식적인 테스트는 피하고 결과·명령·한계를 ROADMAP에 기록해줘.
```

### P-105. 기준 예제와 자동 판정 TB

**대상: M1-05 / 추천: 6.1 Sol / high.** 시뮬레이션의 기대값과 실제 실패 감지가 핵심이다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M1-05를 수행해줘. 새 PDK의 shift_reg_8bit 예제를 원본 보존 방식으로
examples/에 준비하고, 기능·클록·리셋 가정을 적은 자체 완결 RTL/TB/설정을
작성해줘. new-project.sh의 예제 옵션으로 독립 프로젝트를 만들 수 있게 해줘.

리셋, 여러 입력 패턴, shift 순서와 지연을 자동 비교하고 실패 시 오류를
반환하는 TB를 실제 실행해줘. 입력을 에지 사이에서도 바꾸어 FF 모델
불일치를 숨기지 않게 해줘. TB가 기능 오류를 감지하는지도 확인해줘.
예제 주기·I/O 조건은 출처와 적용 범위를 적고 모든 설계의 기본값으로
일반화하지 마. RTL 검증과 전체 물리 흐름 검증을 구분하여 기록해줘.
```

### P-106. README와 초보자 안내

**대상: M1-06 / 추천: 6.1 Terra / medium.** 구현과 실험 근거가 준비된 뒤 사용자 안내를 작성한다. 실행 로직의 수정이 필요하면 해당 개발 작업을 다시 열어 Sol로 처리할 수 있다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M1-06을 수행해줘. M0 결정과 M1의 실제 구현·검증 근거를 확인하여
README의 지원 범위, 도구 setup/build·PDK 점검, 프로젝트 생성, 빈칸 YAML
작성, 튜토리얼 진입점, 폴더 역할, 로그·실패 복구 안내를 작성해줘.
M1-07의 목표 구조와 실제 이행 결과에 맞춰 경로와 보존 자료의 위치를 설명해줘.

초보자가 어느 디렉터리에서 무엇을 입력하고 어떤 결과를 확인할지 알 수
있게 써줘. 실제 파일·명령·옵션과 대조하고 가능한 안전한 확인 명령을
실행해줘. 아직 없는 M2 문서·실행 기능은 예정/미구현으로 명시하며,
미구현 링크나 미래의 예시 명령을 현재 동작하는 기능처럼 안내하지 마.
YAML의 칸별 안내·완성 예가 빠진 곳을 지적하고 문서와 ROADMAP을 갱신해줘.
```

### P-107. 폴더 이행·정리와 경로 검증

**대상: M1-07·08 / 추천: 6.1 Sol / high.** 팀 사용 필수 경로 이행과 독립 개발 착수 확인이다.

```text
development/PLAN.md, development/REQUIREMENTS.md, development/ROADMAP.md와
development/CODEX_GUIDE.md 1.2절에 따라
M1-07/08을 수행해줘. M0-14의 팀 사용 경로 대응과 현재 Git 변경을 확인하고,
코드·예제·필수 모델/PDK 참조를 목표 구조로 실제 이행해줘.
공통 설치·프로젝트 생성·템플릿·문서도 같은 경로를 쓰게 맞춰줘.

제공 PDK 전체와 12T_std·수동 설계물·과거 실험은 보존해줘.
실제 사용하는 scripts/Makefile/설정·필수 외부 링크를 함께 확인하고,
미사용 legacy 전체 이동·삭제나 모든 설치 링크 수정을 선행조건으로 넣지 마.
M0-10의 이관 실험을 공통 실행기·필수 설치에 편입하거나 재개하지 마.

doctor, 정상/중복 프로젝트 생성, 빈칸·오류 입력, 자체 완결 RTL/TB,
작은 유효/오류 계약 fixture, 이행에 영향받는 공통 기능을 실제 확인해줘.
기존 기록의 과거 경로와 현재 실행의 잘못된 참조를 구별해줘.
미구현 M2 단계는 blocked와 이유를 반환하게 하고 물리 흐름 통과를 주장하지 마.

담당별 시작 파일·명령·입출력·미해결 소유자·공통 변경 절차를
development/handoffs/M2-PREPARATION.md에 연결하고 ROADMAP의 M2 착수 기준을 확인해줘.
증거가 있는 작업만 완료로 바꾸고 아직 없는 M1 기능을 준비됐다고 쓰지 마.
```

### P-DIAG. 막힌 작업 하나 재진단

**추천: 6.1 Sol / extra high.** 앞선 진단에서도 원인을 좁히지 못한 어려운 한 문제에 한해 `max`를 비교할 수 있다. 실행 자료 부족은 effort를 올리는 것으로 해결되지 않는다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 직전 시도에서 막힌 M0/M1 작업 하나를 재진단해줘. 이 대화에 대상이
명시되지 않았다면 ROADMAP의 공통 준비 범위 내 대기 작업과 근거에서 한 건을
정하고 이유를 알려줘. M2로 이관한 M0-10~12를 자동 재개하지 마.
과거 시도·로그·입력·도구 버전을 먼저 확인해줘.

확인된 사실과 가설, 부족한 자료를 구분하고 원인을 가를 최소 실험을
실제로 수행해줘. 근거가 확보되면 최소 수정 후 재검증하고, 해결되지
않으면 배제한 원인·필요 자료·다음 행동을 기록해줘. 같은 실패 명령만
반복하거나 근거 없이 전체 흐름을 갈아엎지 말고 해당 작업 상태를 갱신해줘.
```

### P-ULTRA. 독립 조사·검증을 나누어 진행

**선택 사항 / 추천: 6.1 Sol / ultra.** 하위 agent를 쓸 수 있는 환경에서 독립 과제를 분담하려는 경우에 사용한다. 기본 P-ALL의 필수 조건은 아니다.

```text
development/PLAN.md, development/REQUIREMENTS.md와
development/ROADMAP.md를 읽고 CODEX_GUIDE 1.2의 공통 규칙에
따라 M0의 독립 조사·검증을 하위 agent에게 분담하여 진행해줘.
지원되는 하위 agent 수에 맞춰 최소 공통 계약, 팀 사용 경로·참조,
프로젝트 템플릿·doctor 준비를 나눠줘. 완료된 조사는 재사용하고
M2로 이관한 CTS/RC·최종 backend 구현을 공통 준비에 다시 넣지 마.

각 하위 agent는 자기 실험 디렉터리와 개별 기록만 작성하게 하고,
ROADMAP·PLAN·공통 schema·공유 라이브러리는 동시에 수정하지 않게 해줘.
상위 agent가 결과를 대조·통합하여 충돌과 누락을 확인하고, 실제 완료한
작업만 ROADMAP에 반영해줘. 하위 agent를 쓸 수 없으면 그 사실을 밝히고
같은 분담 순서로 직접 수행해줘. 개발 작업의 완료 근거와 남은 장애를 보고해줘.
```
