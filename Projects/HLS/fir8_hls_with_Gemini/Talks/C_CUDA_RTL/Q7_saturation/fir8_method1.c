// 방법 1. 수학적 정확도 우선 (정밀도 극대화)
//    계수의 총합인 150으로 직접 나누어 입력 신호와 동일한 부근의 0~255 스케일로 정확하게 맞추는 방식입니다. 나눗셈 연산이 들어가지만 정밀도가 가장 높습니다.
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

    // 3. 정밀도 최적화 다운스케일링 (Gain 보정)
    // 계수 합(150)으로 나누어 입력과 출력의 스케일을 1:1로 맞춥니다.
    // 반올림 효과를 내기 위해 분자에 (150 / 2 = 75)를 더해 정밀도를 향상시킵니다.
    *y = (data_t)((acc + 75) / 150);
}
