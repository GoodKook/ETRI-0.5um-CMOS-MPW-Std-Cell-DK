/* -----------------------------------------------------------
Filename : fir8.c
Purpose  : FIR Filter
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release
-------------------------------------------------------------- */

#include <stdio.h>
#include "fir8.h"

void fir8( data_t *y, data_t x)
{
    acc_t           acc = 0;
    static data_t   shift_reg[FILTER_TAP_NUM] = {0};

    // 1. 시프트 레지스터 업데이트 (역순으로 데이터를 한 칸씩 밀어냄)
    for (int i = FILTER_TAP_NUM - 1; i > 0; i--)
    {
        shift_reg[i] = shift_reg[i - 1];
    }
    shift_reg[0] = x; // 새로운 입력 샘플 저장

    // 2. 컨볼루션 연산 (MAC: Multiply-Accumulate) 수행
    for (int i = 0; i < FILTER_TAP_NUM; i++)
    {
        acc += (acc_t)shift_reg[i] * filter_taps[i];
    }

    // 3. 16비트 누적 값을 8비트 출력 데이터로 변환 (포화 연산 적용)
    // 입력 최댓값 255 * 계수 총합 150 = 38,250 이므로 acc는 16비트 범위 내에서 안전합니다.
    if (acc > 255)
    {
        *y = 255; // 8비트 상한값으로 제한 (Saturation)
    }
    else
    {
        *y = (data_t)acc; // 안전하게 8비트로 캐스팅 유도
    }
}
