# M0-08 자료 확보와 제공자 요청 근거

2026-11-15 (Asia/Seoul). [결정 002의 자료 요청](../../../decisions/002-sequential-functional-models.md#미결정과-해제에-필요한-자료)을 구체화하면서 직접 확보한 자료다. 원본 M0-08 실행·파생 기능 모델·기대값은 바꾸지 않았다. **일반 모델 문헌의 확보와 NSPL 셀의 공인 동작 확인을 구분한다.**

이후 사용자가 단순 동기식 코어 목표를 재확인함에 따라 [필요성 재검토](../scope-review/README.md)에서 다섯 묶음을 조건부 추가 조사로 재분류했다. 아래 자료와 응답 양식은 보존하지만 현재 기능 모델 사용/개발을 위해 전부 받아야 하는 목록은 아니다.

## 직접 확보한 공개 원본

| 자료 | 공식 배포처 | 로컬 자료·용도 |
| --- | --- | --- |
| ngspice User’s Manual **47**, 2026-08-11 | [공식 문서 목록](https://ngspice.sourceforge.io/docs.html), [원본 PDF](https://ngspice.sourceforge.io/docs/ngspice-47-manual.pdf) | [보관 PDF](downloads/ngspice-47-manual.pdf). 763쪽. §7.6.3.3 BSIM3의 LEVEL/VERSION, §12.11.10 HSPICE 호환 모드, §13.5.82 실제 모델 값 조회의 근거 |
| UC Berkeley **BSIM3 3.2** 원본 묶음 | [공식 BSIM3 목록](https://bsim.berkeley.edu/models/bsim3/), [ftpv32.zip](https://www.bsim.berkeley.edu/BSIM4/BSIM3/ftpv32.zip) | [원본 ZIP](downloads/berkeley-bsim32.zip), [읽기용 파생 PDF](downloads/bsim32-manual-derived.pdf), [3.2 변경 설명의 파생 PDF](downloads/bsim32-update-derived.pdf). PDK의 `VERSION=3.2`에 맞는 기본 식·접합 모델 정의를 확보 |
| UC Berkeley **BSIM3 3.2.4** 원본 묶음 | 같은 [공식 목록](https://bsim.berkeley.edu/models/bsim3/), [ftpv324.zip](https://www.bsim.berkeley.edu/BSIM4/BSIM3/ftpv324.zip) | [원본 ZIP](downloads/berkeley-bsim324.zip), [bugfix](downloads/bsim324-bugfix.pdf), [technical note](downloads/bsim324-technical-note.pdf). 확보한 두 문서는 noise 수정에 관한 것으로, 동시 release 문제의 수정 근거나 PDK VERSION 변경 승인으로 사용할 수 없음 |

BSIM3 3.2 매뉴얼은 ZIP 안의 `ftpv32/Mod_doc/b3v32manu.tar.Z`에 PostScript `.prn` 15개로 들어 있다. 파일명을 지정해 안전하게 읽고 Ghostscript로 210쪽 PDF를 만들었다. 원본 ZIP과 내부 문서는 수정하지 않았으며 내부 member별 SHA-256·변환 방법은 [acquisition.json](acquisition.json)에 있다. 생성 PDF는 원본 PDF 배포본이 아닌 **형식 변환본**이다. 3.2 문헌의 NJ 정의는 변환 PDF 133~137쪽에서 확인할 수 있다. NSPL 카드의 `N`을 곧바로 NJ로 바꿔도 된다는 근거는 아니다.

ngspice 매뉴얼의 저자는 Holger Vogt, Giles Atkinson, Dietmar Warning, Paolo Nenzi이며 원문은 CC-BY-SA 4.0이다. Berkeley 자료의 저작권·사용 조건은 원본 ZIP의 `ftpv32/license/licen`, Readme와 문서에 보존했다. 공개 원본 3개의 URL·크기·SHA-256은 [public-sources.json](public-sources.json)과 `acquisition.json`에 있다. PDF·ZIP·변환 작업 파일은 로컬에 보관하고 Git에서는 제외한다. 새 checkout에서는 아래 명령으로 다시 확보한다.

## 배포본에서 추가로 읽어 확보한 정보

총 **76개 로컬 입력**을 해시로 연결했다. PDK의 외부 경로는 `PDK/`, 저장소는 `REPO/`로 표시한다. PDK 파일을 복사·패치하지 않고 필요한 속성·표와 위치를 추출했다.

| 자료 | 확보 결과 | 남은 한계 |
| --- | --- | --- |
| TT Liberty의 생성·환경 정보 | FineSim **Q-2020.03-SP2-1**, SiliconSmart **P-2019.06-5**, typical/TT·5 V·25 °C. header 생성일 2026-06-04/07-02/07-09, library `date=2026-07-20`, `revision 1.0` | 여러 header가 같은 파일에 함께 있음. 어느 characterization 작업이 최종 셀/arc를 만들었는지, 사용 deck·모델 해시는 없음 |
| 측정 기준·LUT | delay 입력/출력 기준 **50%**, slew **20–80%**, 시간 ns·부하 pF. 순차 4셀의 실제 테이블 값·축·template을 [liberty-tables.json](liberty-tables.json)에 추출 | 공개된 값이 있어도 characterization 자극·상태 설정·허용 영역이 확인되는 것은 아님 |
| DFFSRX1 제약 8개 | R/S의 recovery/removal 4개와 상호 non_seq 4개를 [dffsr-constraints.csv](dffsr-constraints.csv)에 정리 | R의 non_seq 테이블과 S의 테이블은 실제 index 축 배열 순서가 다름. min/max만 보거나 같은 축으로 복사하지 않음. 부호·초기 상태·동작 허용 영역의 제공자 해석 필요 |
| MOS corner 파일 | [process-model-files.json](process-model-files.json)에 원본 경로·section 식별. `05cmos_mosfet_corner.lib/.scs`에 TT/SS/FF/SF/FS가 있음 | **MOS corner 존재는 해당 corner의 셀 Liberty 존재나 본 TT characterization과의 동일성 증거가 아님.** 현재 기능 실험은 계속 `05cmos_model_260210.lib`의 MOS section을 사용 |
| 다른 simulator용 모델 | `05cmos_model_241213.scs`도 찾음. 여기에도 N/FC가 있음 | Spectre 문법 파일이 있다는 사실로 ngspice 호환성이 해결되지 않음. 자동 대체하지 않음 |
| native 회로·물리 view | 순차 4셀 각각의 schematic/symbol/layout `.oa`와 thumbnail, CDL·GDS·PEX, Calibre LVS/PEX 규칙·header를 식별·해시 보존 | OA 회로를 해석하거나 GDS를 추출해 LVS하지 않았음. `TOPCELL` 예시 header는 실제 셀 LVS 통과 보고서가 아님 |
| PEX provenance | 순차 셀 PEX의 2026-05-29 생성 기록, Calibre xRC **v2023.2_16.9** header 확인 | 추출에 사용한 GDS·CDL·rule의 해시와 실제 선택 옵션·통과 보고서는 없음 |

원본 전체 파일명 조사에서는 symlink가 가리키는 파일을 포함해 **14,050개 항목**을 봤다. `.rpt/.rep/.sum/.log` 10,209개는 모두 `Assura/QRC/` 아래의 필드 솔버 자료이며, 그 밖의 해당 확장자 보고서는 찾지 못했다. 이 자료를 순차 셀 LVS 결과로 사용하지 않았다. [pdk-search.json](pdk-search.json)에 검색 범위·파일 목록 digest·경로 분류를 보존한다. 이는 파일명과 선택 본문을 조사한 결과이며 바이너리 OA/DB/NDM 내부에 자료가 없다는 증명은 아니다.

저장소의 기존 Liberty Reference Manual, 디지털 PnR·아날로그 가이드 등 PDF 5개도 텍스트를 읽어 검색했다. [document-index.json](document-index.json)에 경로·해시·PDF 쪽·검색어를 남겼다. 표준의 일반 정의나 PnR 절차는 이 NSPL 셀의 공인 release 진리표·characterization 로그·LVS 보고서와 다르다. 공개 검색에서도 **이 revision의 view 해시와 연결되는** 해당 자료를 확보하지 못했다. [검색 범위](web-search.json)를 보존했으며 공개 자료가 존재하지 않는다고 단정하지 않는다.

## ngspice 파라미터 판독 확인

기존 로컬 `Tools/ngspice-47.tar.gz`의 세 소스 member와 압축 해제본을 byte 해시로 대조했다. [ngspice-source.json](ngspice-source.json)에 원본 archive·member 해시를 남겼다. BSIM3v32 registry에는 `nj`, `acm`, `version`이 있고 `n`, `fc`는 없다. parser의 `VERSION=3.2` 분기는 BSIM3v32를 선택한다. 이 소스와 현재 실행 바이너리의 정확한 빌드 대응까지 증명한 것은 아니다.

별도 최소 회로에서 원본 MOS 카드를 그대로 읽고 `op`와 `showmod m1 m2`를 실행했다. TEMP=25 °C, L=0.5 µm, nMOS W=3 µm·pMOS W=6 µm, VGS/VDS 측정용 바이어스를 고정한 **파라미터 판독 시험**이다. 기존 셀 transient 실험을 재작성한 것이 아니다.

| 설정 | N/FC 경고 | 실제 조회된 NJ(nMOS/pMOS) |
| --- | --- | --- |
| 기본 모드, 사용자 `.spiceinit` 읽지 않음 | n/fc 각각 2회 무시 | 1 / 1 |
| `-D ngbehavior=hsa`, 동일 입력·동일 카드 | 같은 경고 유지 | 1 / 1 |

[mos-reader.json](mos-reader.json), [기본 로그](mos-reader-default.log), [hsa 로그](mos-reader-hsa.log)에 실제 argv·종료값·조회 결과를 보존했다. `-n`으로 사용자 설정을 배제했고 전역 `.spiceinit`은 바꾸지 않았다. 원본 카드 N=1.013/0.999가 읽혔다고 해석할 수 없으며, **N→NJ 치환·FC 삭제·VERSION 변경의 물리적 타당성은 여전히 제공자 확인 대상**이다. generic BSIM 문헌과 syntax 호환 옵션만으로 NSPL의 모델 검증을 대신하지 않는다.

## 바로 전달할 수 있는 입력과 재실행

[request-state-cases.csv](request-state-cases.csv)는 기존 M0-08의 R/S 전이 **64개**에 실제 CDL/PEX 관측값을 붙인 요청 양식이다. `Q_prepare`는 두 제어를 바꾸기 전 준비한 상태, `Q_before_ideal`은 해당 전이 직전의 기능 참조 상태다. 공급자 응답은 파일을 별도 이름으로 복사해 `supplier_*` 칸에 작성한다. 생성 원본을 바꾸면 재수집 시 덮어쓸 수 있다. 응답에는 허용/금지 여부, Q의 의미, R/S 50% crossing 기준의 허용 skew 영역과 revision 참조가 필요하다. 상세 요구와 판정 기준은 결정 002의 M08-D1~D5를 따른다.

```bash
# 저장소 루트. 이미 확보한 파일을 사용한 수집·변환·최소 판독 시험
python3 development/experiments/M0-08-sequential/materials/collect.py

# 공개 원본이 없는 새 checkout에서 URL과 고정 SHA-256으로 다시 확보
python3 development/experiments/M0-08-sequential/materials/collect.py --fetch-public
```

두 명령은 원본 PDK를 읽고 이 `materials/` 아래의 생성물만 갱신한다. 네트워크가 제한된 환경에서는 공개 URL 읽기 권한이 필요하다. 수동으로 내려받은 경우 `public-sources.json`의 이름·해시대로 `downloads/`에 두면 네트워크 없이 실행할 수 있다. Python 표준 라이브러리, ngspice, gzip, Ghostscript/ps2pdf, pdftotext가 필요하며 설치는 수행하지 않았다.

전체 LUT를 복제한 `liberty-tables.json`과 전체 MOS 카드 값이 출력되는 `mos-reader-*.log`도 외부 원본에서 재추출하는 로컬 자료로 두고 Git에서는 제외한다. Git에는 제약 요약 CSV·추출 코드·원본/파생 해시와 N/FC·NJ 판독 결과 JSON을 보존한다. 새 checkout에서 전체 LUT·파라미터 로그·PDF를 여는 링크는 위 수집 명령을 실행한 뒤 사용할 수 있다.

실행 중 테이블 차원, 8개 제약 존재, 64개 요청 사례, source/archive 일치, 두 모드의 실제 warning/NJ 값, 내려받은 원본 3개의 고정 SHA-256과 모든 로컬 입력의 보존을 판정한다. 기존 M0-08 `run.json`의 입력 해시도 재확인한다. **이 수집기의 exit 0은 자료 수집·추출·판독 시험 완료이며 M0-08의 전체 셀 qualification 통과가 아니다.**

자료 추가 후 기존 `validate.py --compare-results /tmp/etri-m0-08-replay-20261115 --out /tmp/etri-m008-materials-old-audit`도 다시 실행하여 **679항목**을 통과했다. 재감사 원문은 기존 [checks.json](../validation/checks.json)과 byte 해시가 같아 Git에는 기존 사본을 사용한다. [자료 확보 검증 요약](verification/summary.json)에 결과·명령·해시를 보존했다. 변환 진행 로그·빈 pdftotext 로그·중복 재감사 사본은 로컬에 유지하고 추적에서 제외한다. 요청 CSV의 직접 충돌 전이는 2개이며 그 뒤 상태 유지 관측까지 세는 기존 회로 실험의 4개 실패와 구분한다.
