# 최초 테스트의 timing collision 기록

2026-11-15. 새로 만든 matrix 시험 준비 단계가 CLK와 D를 같은 시점에 바꾼 사실을 회로 비교 중 발견했다. 첫 실행 결과를 최종 결과로 덮지 않고 보존했다. [최종 실험](../README.md)의 원본 기능 모델 오류와 구분한다.

- [입력열](stimulus.json), [실행 결과](results.json), [실행·입력·산출물 해시](run.json), 실패/판정 로그와 두 회로 view의 관측 CSV를 Git에 보존한다. TB·SPICE deck·빈 성공 compile 로그는 입력열과 코드에서 재생성하므로 로컬에 유지하고 추적에서 제외한다.
- [당시 runner 원문](run.py.txt)과 [당시 직접 작성한 모델](nspl12t_seq_functional.v)의 해시가 당시 `run.json`의 코드/모델 입력 해시와 일치함을 최종 감사에서 확인한다. runner는 당시 위치를 기준으로 작성된 snapshot이다.
- 644시점·2,571비교에서 원본은 678개, 파생 참조는 0개, CDL/PEX는 각각 463개 불일치였다. 회로의 다수 차이는 D/CLK 동시 변화에서 생긴 상태가 이후 유지된 것이었다. 실패 관측 수를 독립적인 결함 수로 세면 안 된다.
- 최종 시험에서는 matrix의 data 준비와 clock 변화를 다른 action으로 나눴다. 클록 사이 D 변화와 원본의 기능 불일치는 유지한다. 원래의 동시 R/S 해제도 그대로 검사하며 별도 clock/data 충돌 실험을 추가했다.

이전 입력열 자체를 현재 runner로 다시 관측할 수 있다. 모델 주석·runner가 개선되었으므로 새 실행의 전체 파일 해시가 과거와 같다는 주장은 아니다. `--replay-stimulus`는 정상 기능 qualification용이 아니며 기록한 충돌을 재현하는 진단 옵션이다.

```bash
python3 development/experiments/M0-08-sequential/run.py \
  --replay-stimulus development/experiments/M0-08-sequential/attempt-01/stimulus.json \
  --out /tmp/etri-m0-08-attempt01-replay
```

로컬 SPICE deck은 당시 경로·출력 경로를 담으며 해시는 manifest에 있다. 새 checkout에서는 위의 별도 출력 경로로 재생성한다. 당시 `.dat`/`.vvp`의 해시는 manifest에 있으나 이 archive에 복제하지 않았다. 최초 실행기의 성공 exit 0은 진단 실행 완료만 나타냈던 결함도 있다. 최종 runner는 미해결 회로 차이를 저장한 뒤 **exit 1**로 종료한다.
