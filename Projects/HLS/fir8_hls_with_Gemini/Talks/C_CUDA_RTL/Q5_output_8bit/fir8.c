
#include <stdio.h>
#include "fir8.h"

// 헤더의 void fir8(acc_t *y, data_t x)에서 *y 타입을 8비트(data_t)로 변경하고자 할 때의 구현입니다.
// 만약 헤더를 고칠 수 없다면 주소 참조 시 형변환을 해야 하므로, 함수 시그니처 자체를 data_t* 로 변경하는 것이 가장 깔끔합니다.

void fir8(data_t *y, data_t x)
{
    acc_t           acc = 0;
    static data_t   shift_reg[FILTER_TAP_NUM] = {0};

    // 1. 시프트 레지스터 업데이트 (뒤에서부터 밀기)
    for (int i = FILTER_TAP_NUM - 1; i > 0; i--)
    {
        shift_reg[i] = shift_reg[i - 1];
    }
    shift_reg[0] = x; // 새로운 입력 저장

    // 2. 필터 연산 (MAC) 수행
    for (int i = 0; i < FILTER_TAP_NUM; i++)
    {
        acc += (acc_t)shift_reg[i] * filter_taps[i];
    }

    // 3. 16비트 누적 값(acc)을 8비트(y)로 최적화 및 스케일링
    // 모든 계수의 합은 150이므로, x의 최댓값이 255일 때 acc의 최댓값은 255 * 150 = 38,250 (16비트 범위 안)
    
    // 방법 A: 단순 상위 8비트 취하기 (필터 이득(Gain)을 낮추어 매핑할 때, 시스템 설계에 따라 Shift 연산 크기 조절)
    // *y = (data_t)(acc >> 7); // 계수 합이 대략 128 부근이므로 7~8비트 우측 시프트가 적절합니다.

    // 방법 B: 포화 연산(Saturation) 적용 (255를 넘으면 255로 제한)
    if (acc > 255) 
    {
        *y = 255;
    }
    else 
    {
        *y = (data_t)acc;
    }
}
