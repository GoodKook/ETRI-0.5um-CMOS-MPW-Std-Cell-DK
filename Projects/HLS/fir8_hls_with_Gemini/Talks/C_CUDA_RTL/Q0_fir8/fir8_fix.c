#define FILTER_TAP_NUM 8 // 예시 크기

void fir8(acc_t *y, data_t x) {
    #pragma HLS INLINE // 또는 적절한 HLS 프라그마 설정
    
    static data_t shift_reg[FILTER_TAP_NUM] = {0};
    acc_t acc = 0;

    // 1. 시프트 레지스터 업데이트 (역순으로 밀기)
    // 이 루프는 완전히 Unroll되어 병렬 레지스터 시프트로 변환됩니다.
    Update_Loop: for (int i = FILTER_TAP_NUM - 1; i > 0; i--) {
        #pragma HLS UNROLL
        shift_reg[i] = shift_reg[i-1];
    }
    shift_reg[0] = x; // 최신 입력 저장

    // 2. 곱셈 및 누산 (MAC) 연산
    // 모든 곱셈이 동시에 일어나 하드웨어 성능을 극대화합니다.
    MAC_Loop: for (int i = 0; i < FILTER_TAP_NUM; i++) {
        #pragma HLS UNROLL
        acc += (acc_t)shift_reg[i] * filter_taps[i];
    }

    *y = acc;
}
