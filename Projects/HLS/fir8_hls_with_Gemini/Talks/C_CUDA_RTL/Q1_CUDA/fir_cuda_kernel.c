// cuda
#include <cuda_runtime.h>
#include <device_launch_parameters.h>

#define FILTER_TAP_NUM 8

// 임의의 데이터 타입 정의 (사용자 환경에 맞게 변경 가능)
typedef float data_t;
typedef float coef_t;
typedef float acc_t;

// 상수 메모리(Constant Memory)를 사용하여 필터 계수를 저장 (성능 최적화)
__constant__ coef_t d_filter_taps[FILTER_TAP_NUM];

// CUDA FIR 필터 커널
__global__ void fir_cuda_kernel(acc_t *d_y, const data_t *d_x, int data_len) {
    // 현재 스레드가 처리할 출력 데이터의 인덱스
    int idx = blockIdx.x * blockDim.x + threadIdx.x;

    // 배열 범위를 벗어나지 않는지 확인
    if (idx < data_len) {
        acc_t acc = 0;

        // 각 스레드가 자신만의 MAC(Multiply-Accumulate) 루프를 수행
        for (int i = 0; i < FILTER_TAP_NUM; i++) {
            // 과거 데이터의 인덱스 계산
            int data_idx = idx - i;

            // 만약 인덱스가 0보다 작으면(초기 상태), 0을 곱하거나 경계 처리를 함
            data_t data = (data_idx >= 0) ? d_x[data_idx] : 0;
            
            acc += data * d_filter_taps[i];
        }

        // 결과 저장
        d_y[idx] = acc;
    }
}
