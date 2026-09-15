# 1. Verilator를 사용하여 Verilog와 C++ DPI 소스를 결합하고 컴파일 환경 빌드
# --binary 플래그는 Verilator가 스스로 main 소스를 생성하여 자체 바이너리를 뽑아내도록 유도합니다.
verilator --binary -Wall -Wno-fatal \
    ./space_invaders_engine_glcd.v \
    ../Q6_Bullet_Fire/tb_space_invaders.v \
    ../Q6_Bullet_Fire/sim_display.cpp \
    -LDFLAGS "$(sdl2-config --libs)" \
    -CFLAGS "$(sdl2-config --cflags) -std=c++17" \
    --top-module tb_space_invaders \
    --Mdir obj_dir

# 2. 빌드가 완료되면 생성된 독자 실행 파일을 실행합니다.
./obj_dir/Vtb_space_invaders

