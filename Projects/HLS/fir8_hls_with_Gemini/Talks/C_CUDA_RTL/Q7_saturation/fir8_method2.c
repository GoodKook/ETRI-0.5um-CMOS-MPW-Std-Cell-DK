// 방법 2. 고속 비트 시프트 연산 (임베디드 최적화)
// MCU/DSP 등에서 나눗셈 오버헤드를 피하기 위해 사용하는 방식입니다. 계수의 합(150)과 가장 가까운 \(2^7 = 128\) 또는 \(2^8 = 256\)으로 나누는 비트 시프트를 적용합니다.
// 이 필터의 원본 설계 사이트(t-filter) 특성상 8비트 고정소수점(Q7 또는 Q8 Format)으로 계수가 설계되었을 확률이 매우 높습니다. 일반적으로 계수를 만들 때 전체 합이 128 또는 256에 가깝게 정규화되므로 아래와 같이 시프트합니다.
void fir8( data_t *y, data_t x)
{
    acc_t           acc = 0;
    static data_t   shift_reg[FILTER_TAP_NUM] = {0};

    // 1. 시프트 레지스터 업데이트
    for (int i = FILTER_TAP_NUM - 1; i > 0; i--)
    {
        shift_reg[i] = shift_reg[i - 1];
    }
    shift_reg[0] = x;

    // 2. 컨볼루션 연산
    for (int i = 0; i < FILTER_TAP_NUM; i++)
    {
        acc += (acc_t)shift_reg[i] * filter_taps[i];
    }

    // 3. 고속 비트 시프트 및 반올림 연산
    // [선택 A] 계수가 Q7 format(합이 128 기준)으로 설계된 경우 (추천: 이 필터 계수 합인 150과 가장 가깝습니다)
    *y = (data_t)((acc + 64) >> 7);

    // [선택 B] 계수가 Q8 format(합이 256 기준)으로 설계된 경우 (전체적으로 신호가 약 0.5배 감쇄됨)
    // *y = (data_t)((acc + 128) >> 8);
}
