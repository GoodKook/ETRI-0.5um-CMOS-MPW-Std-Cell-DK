`timescale 1ns / 1ps

module tb_tetris_core_engine();

    // --- 시뮬레이션 자극(Stimulus) 신호 선언 ---
    reg        clk;
    reg        rst_n;
    reg        tick_i;
    reg        move_left;
    reg        move_right;
    reg        rotate;
    reg        drop_fast;

    // --- 모니터링 출력 신호 선언 ---
    wire       board_out [0:9][0:19];
    wire [3:0] current_block_x;
    wire [4:0] current_block_y;
    wire       tetromino_out [0:1][0:1];
    wire       game_over;
    wire [15:0] score;

    // --- 1. 검증 대상 유닛 (DUT) 인스턴스화 ---
    tetris_core_engine dut (
        .clk(clk),
        .rst_n(rst_n),
        .tick_i(tick_i),
        .move_left(move_left),
        .move_right(move_right),
        .rotate(rotate),
        .drop_fast(drop_fast),
        .board_out(board_out),
        .current_block_x(current_block_x),
        .current_block_y(current_block_y),
        .tetromino_out(tetromino_out),
        .game_over(game_over),
        .score(score)
    );

    // --- 2. 25MHz 클럭 생성 (주기 40ns) ---
    always begin
        #20 clk = ~clk;
    end

    // 반복 연산용 인덱스 변수
    integer idx;

    // --- 3. 테스트 시나리오 동작 정의 ---
    initial begin
        // 초기값 설정
        clk        = 1'b0;
        rst_n      = 1'b0;
        tick_i     = 1'b0;
        move_left  = 1'b0;
        move_right = 1'b0;
        rotate     = 1'b0;
        drop_fast  = 1'b0;

        // 시스템 리셋 해제
        #100;
        rst_n      = 1'b1;
        #40;

        $display("[시뮬레이션 시작] 테트리스 라인 삭제 검증 환경 구축 완료.");

        // =================================================================
        // 시나리오 설정: 최하단 19번 행의 0번~7번, 9번 칸에 강제로 블록을 채워둠.
        // (8번 칸만 비어있는 상태로 만들어, 2x2 블록이 떨어지며 채우도록 유도)
        // =================================================================
        #10;
        dut.board_out[0][19] = 1'b1;
        dut.board_out[1][19] = 1'b1;
        dut.board_out[2][19] = 1'b1;
        dut.board_out[3][19] = 1'b1;
        dut.board_out[4][19] = 1'b1;
        dut.board_out[5][19] = 1'b1;
        dut.board_out[6][19] = 1'b1;
        dut.board_out[7][19] = 1'b1;
        // 8번 칸은 비워둠 (1'b0)
        dut.board_out[9][19] = 1'b1;

        $display("-> 최하단(19번 행) 테스트 셋업 완료: 8번 칸만 비어있음.");

        // =================================================================
        // 블록 이동: 상단 중앙(X=4)에 생성된 2x2 블록을 우측으로 이동시켜 
        // 비어있는 8번 칸 라인(X=8, X=9 영역)으로 정렬
        // =================================================================
        #40;
        // 오른쪽으로 총 4칸 이동 유도 (X 좌표: 4 -> 5 -> 6 -> 7 -> 8)
        for (idx = 0; idx < 4; idx = idx + 1) begin
            move_right = 1'b1;
            #40; // 1클럭 펄스 유지
            move_right = 1'b0;
            #80; // 상태 변화 안정화 대기
        end

        $display("-> 블록 우측 이동 완료. 현재 블록 X 위치 = %d (기대값: 8)", current_block_x);

        // =================================================================
        // 블록 하강: 바닥(Y=18)에 닿을 때까지 주기적으로 tick_i 펄스를 주어 하강시킴
        // =================================================================
        $display("-> 블록 하강 시뮬레이션 시작...");
        for (idx = 0; idx < 18; idx = idx + 1) begin
            tick_i = 1'b1;
            #40; // 1클럭 펄스 유지
            tick_i = 1'b0;
            #80; // 하강 업데이트 대기
        end

        // =================================================================
        // 고정 및 라인삭제 판정 검증: 바닥에 닿은 블록이 Lock 모드에 진입한 후
        // S_CHECK_LINE -> S_CLEAR_LINE을 거쳐 점수가 오르고 라인이 정리되는지 확인
        // =================================================================
        $display("-> 바닥 충돌 감지 지점 도달. 고정(Lock) 및 라인 검사 실행.");
        
        // 블록이 고정 단계 및 라인 삭제 연산을 마칠 수 있도록 클럭 충분히 인가
        #500;

        // 최종 결과 리포트 출력
        $display("=================================================");
        $display("[검증 결과 보고서]");
        $display("  - 현재 게임 오버 상태: %b", game_over);
        $display("  - 누적 획득 점수     : %d (기대값: 100점 - 싱글 클리어)", score);
        $display("  - 삭제 후 8번칸 상태 : %b (기대값: 0 - 윗줄이 당겨 내려옴)", board_out[8][19]);
        $display("  - 삭제 후 9번칸 상태 : %b (기대값: 0 - 윗줄이 당겨 내려옴)", board_out[9][19]);
        $display("=================================================");

        if (score == 16'd100) begin
            $display("[SUCCESS] 테트리스 라인 삭제 및 정밀 점수 판정 알고리즘이 완벽하게 동작합니다!");
        end else begin
            $display("[FAILURE] 시뮬레이션 조건에 맞춘 점수 획득에 실패했습니다. 내부 상태 천이를 점검하세요.");
        end

        $finish; // 시뮬레이션 종료
    end

endmodule
