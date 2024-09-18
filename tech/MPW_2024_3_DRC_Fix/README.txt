DRC 수정(2024년 9월 18일)
-----------------------

I. 내역

2024-3차 내칩 MPW에 제출한 GDS[1]에 대하여 SNU-ISRC[3]로부터 케이던스 켈리버(Cadence Calibre)에서 수행한 로그[2]를 받아 검토 후 Magic의 테크 파일[4] 수정 사항 임

II. 오류 및 조치사항

II-1. DRC룰:2.ACT.S
	- Minimum ACT space is 1.0um
	- IOFILLER18의 액티브 레이어 폭이 이웃 GPIO와 간격이 벌어짐
	- 좁은 간격은 인접 레이어와 결합(merge)되어도 무관함
	- 필러 셀 수정

II-2. DRC룰:3.PL1.S3/S4
	- S3: Minimum POLY1 in field space to ACT is 0.5um
	- S4: Minimum poly/ACT intercept to opposite ACT space 0.5um
	- Std-Cell version:e 수정(폴리와 액티브의 이격 거리 0.6um)

II-3. DRC룰: 5.NSD.E
	- Minimum NSD to ACT extension is 0.5um
	- Magic Tech 의 액티브에서 디퓨젼 확대 생성룰 수정
	- ETRI/cifout: ndiff, pdiff 레이어의 생성 룰 변경(전방향으로 .5um 확장)
	  (blot-or: #990, #995, #1000, #1008)

II-4. DRC룰: 5.NSD.S1, 6.PSD.S1
	- Minimum NSD space is 0.75um (Merge if the space is less than 0.75um)
	- Minimum PSD space is 0.75um (Merge if the space is less than 0.75um)
	- 인접 NSD/PSD와 구분이 필요한 경우와 결합되어도 무관한 경우가 구분 되어야 함
	- IOFILLER18의 경우 결합 되어야 하지만 표준 셀은 트랜지스터의 용도에 따라 분리 필요
	- 표준 셀 전면 수정/version e: 이격이 필요한 디퓨젼/액티브 간격 1.8um
		(ACT에서 NDS 확장 0.5um, 인접 NDS 이격거리 0.8um)

II-5. DRC룰: 7.CONT.E2/E3/S2/W
	- Minimum CONT to POLY1 extension is 0.5um
	- Minimum CONT to MET1 extension is 0.6um
	- Minimum CONT in POLY1 to ACT space is 1.0um
	- Min/Max CONT Size is 0.6um x 0.6um or 0.6um x 1.2um(Waive 사항임)
	- Magic Tech (ETRI-G/cifin) CONT 레이어의 생성룰 변경(1.2x1.2 에서 0.6x0.6 으로)

II-6. DRC룰: 7.CONT.E4
	- Minimum CONT to POLY2 extension is 0.5um
	- Poly2와 METAL1이 multiple contact 되어 있으므로 Waive 요망

II-7. DRC룰: 8.MET1.W/S1/S2/bad1
	- Minimum MET1 width is 0.8um
	- Minimum space of MET1(both line < 10um) is 0.8um
	- Minimum space of wide MET1(one or both line >=10um) space is 1um
	- MET1 must exist with CONT or VIA1 layer.
	- 칩 로고 영역 DRC 제외 (메탈 1, 2, 3)

II-8. DRC룰: 9.VIA1.bad2/E2
	- Single VIA1 is not allowed
	- Minimum VIA1 to MET1 width >= 10 of extention is 0.6um
	- Waive: Single VIA

II-9. DRC룰: 9.VIA1.W
	- Min/Max VIA1 Size is 0.8um x 0.8um
	- VIA1/2 크기 부정형/Filler Cell 수정

II-10.MET2.W
	- Minimum MET2 width is 1.0um
	- Waive: METAL2의 폭이 1.0um이나 너무 굵어서 자동배선 불가피하여 0.9um로 함


III. 2024-2차 접수 때 중요 수정사항[5]

	- 트랜지스터 채널 영역이 액티브에서 제외되는 오류 수정
	- GPIO에 ESD레이어 빠짐 수정

IV. 결론

- “내칩 MPW”[7]는 기본적으로 풀-커스텀 레이아웃을 접수하여 칩을 제작해 주는 서비스 임. 따라서 RTL 합성 방법으로 칩을 제작하려는 경우 설계자(지원자)가 표준 셀 및 각종 설계 자동화 도구의 사용 방안을 마련 해야 함.
- 경희대학교 표준-셀 디자인 킷 개발 팀[8]은 합성기와 자동 배치 배선기 등 오픈-소스 자동화 도구[9]를 도입하여 설계 방법론 및 플로우를 확립하고자 하였음.
- 이에 공개된 OSU050 표준-셀[6]을 사용하려 했으나 NSPL의 디자인 룰과 배치되는 사항이 다수 존재하고 메탈 층 갯수의 제한으로 자동 배선 도구가 작동할 수 없음
- OSU050(AMI 0.5)와 NSPL 0.5u CMOS의 디자인 룰 상이한 주요 사항
	NSD/PSD 이격거리
	METAL 굵기 및 이격
	배선용 메탈 트랙 변경
		- 피치 3um로 변경
		- 트랙 갯수 9T를 13T로 확장
	VIA-CUT 0.8x0.8
	적층 비아(Stacked VIA)사용 불가
- 표준-셀 재설계 후 오픈-소스 자동화 도구를 도입한 설계 방법론 수립 후 실리콘 검증을 시도함
	- 2023년 첫 시도에서 GPIO 불러오기 중 POLY2 레이어 빠짐
		-> 칩 검증 실패
	- 2024년 1차 MPW로 두번째 시도에서 트랜지스터 채널 ACT 레이어 끊어짐
		-> 칩 검증 실패
	- 2024년 2차 MPW로 세번째 시도 진행 중 케이던스 캘리버 교차 검증으로 일부 오류 수정
		-> 2024년 9월 현재 공정 진행중(DGIST)
	- 2024년 3차 MPW로 네번째 시도 진행 중 케이던스 캘리버의 전체 오류 로그를 SNU-ISRC로 부터 제공 받아 표준-셀 전면 수정(Version D에서 E로 변경)
		-> 2024년 9월 현재 GDS 검토 중
- 상용 EDA도구와 오픈-소스 도구를 활용한 설계 플로우의 교차 검증이 필요한 시점임
- 시스템 반도체 설계 개발 방법론 수립과 실리콘 검증의 길이 험난 하지만 관련 기관과의 협력을 통해 검증을 수행코자 함.

V. 참고

	[1] 27_fir_pe_Top.gds
	[2] 27_fir_pe_Top.drc.results
	[3] SNU-ISRC/지상엽(팀장), syj@snu.ac.kr
	[4] SCN3ME_SUBM.30.ETRI.tech, https://github.com/GoodKook/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/blob/main/tech/SCN3ME_SUBM.30.ETRI.tech
	[5] DGIST/이상한(선임)/ leesh22@dgist.ac.kr
	[6] OSU SOC 2.7, http://vlsiarch.ecen.okstate.edu/flows/MOSIS_SCMOS/osu_soc_v2.7/osu_soc_v2.7.tar.gz
	[7] NSPL 0.5um CMOS DK, http://mpw.kion.or.kr
	[8] KHU Design-Kit, https://github.com/GoodKook/ETRI-0.5um-CMOS-MPW-Std-Cell-DK
	[9] Qflow, http://opencircuitdesign.com/qflow/



