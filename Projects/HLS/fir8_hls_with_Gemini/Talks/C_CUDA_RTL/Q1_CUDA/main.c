// cuda
#include <iostream>

int main() {
    int data_len = 1000000; // 100만 개의 대량 데이터 처리 예시

    // 1. 호스트(CPU) 메모리 할당 및 초기화
    data_t *h_x = new data_t[data_len];
    acc_t *h_y = new acc_t[data_len];
    coef_t h_filter_taps[FILTER_TAP_NUM] = {0.1f, 0.2f, 0.3f, 0.4f, 0.4f, 0.3f, 0.2f, 0.1f};

    for (int i = 0; i < data_len; i++) {
        h_x[i] = static_cast<data_t>(i % 10); // 샘플 데이터 입력
    }

    // 2. 디바이스(GPU) 메모리 할당
    data_t *d_x;
    acc_t *d_y;
    cudaMalloc((void**)&d_x, data_len * sizeof(data_t));
    cudaMalloc((void**)&d_y, data_len * sizeof(acc_t));

    // 3. 데이터를 호스트에서 디바이스로 복사
    cudaMemcpy(d_x, h_x, data_len * sizeof(data_t), cudaMemcpyHostToDevice);
    // 필터 계수는 GPU의 고속 '상수 메모리'로 복사
    cudaMemcpyToSymbol(d_filter_taps, h_filter_taps, FILTER_TAP_NUM * sizeof(coef_t));

    // 4. CUDA 그리드 및 블록 크기 설정
    int blockSize = 256; // 블록당 스레드 수
    int gridSize = (data_len + blockSize - 1) / blockSize;

    // 5. 커널 실행
    fir_cuda_kernel<<<gridSize, blockSize>>>(d_y, d_x, data_len);
    
    // 에러 체크 및 동기화
    cudaDeviceSynchronize();

    // 6. 결과를 다시 호스트 메모리로 복사
    cudaMemcpy(h_y, d_y, data_len * sizeof(acc_t), cudaMemcpyDeviceToHost);

    // 결과 확인 (앞의 일부 데이터만 출력)
    std::cout << "출력 데이터 예시 (Y):" << std::endl;
    for (int i = 0; i < 10; i++) {
        std::cout << "Y[" << i << "] = " << h_y[i] << std::endl;
    }

    // 7. 메모리 해제
    cudaFree(d_x);
    cudaFree(d_y);
    delete[] h_x;
    delete[] h_y;

    return 0;
}
