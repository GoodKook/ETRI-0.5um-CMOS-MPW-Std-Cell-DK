module asteroids_game (
    input wire clk,
    input wire rst_n,
    input wire frame_tick,
    // 분리된 조작 키 입력 포트
    input wire btn_left,
    input wire btn_right,
    input wire btn_thrust,
    input wire btn_fire,
    // 래스터 스트림 출력
    output reg pixel_data
);

    // ---- [내부 동기화용 스캔 카운터] ----
    reg [6:0] scan_x;
    reg [5:0] scan_y;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            scan_x <= 7'd0;
            scan_y <= 6'd0;
        end else begin
            if (scan_x == 7'd127) begin
                scan_x <= 7'd0;
                if (scan_y == 6'd63) scan_y <= 6'd0;
                else scan_y <= scan_y + 1'b1;
            end else begin
                scan_x <= scan_x + 1'b1;
            end
        end
    end

    // ---- [8비트 LFSR 무작위 난수 생성기] ----
    reg [7:0] lfsr_reg;
    wire lfsr_next = lfsr_reg[7] ^ lfsr_reg[5] ^ lfsr_reg[4] ^ lfsr_reg[3];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            lfsr_reg <= 8'hA5; 
        end else begin
            lfsr_reg <= {lfsr_reg[6:0], lfsr_next};
        end
    end

    // ---- [게임 오브젝트 레지스터 리스트] ----
    reg [6:0] ship_x;         reg [5:0] ship_y;         reg [1:0] ship_dir;
    reg       ship_active;
    reg [6:0] bullet_x;       reg [5:0] bullet_y;       reg [1:0] bullet_dir; reg bullet_active;

    // ★ 소행성 5개 레지스터 구조 (위치, 방향, 이동 활성화 여부 추가)
    reg [6:0] ast_x [0:4];     reg [5:0] ast_y [0:4];
    reg       ast_dir_x [0:4]; reg       ast_dir_y [0:4]; // 1: 우/하, 0: 좌/상
    reg       ast_move_x [0:4]; reg       ast_move_y [0:4]; // ★ 1: 해당 축으로 이동, 0: 정지 (상하좌우 분기용)
    reg       ast_active [0:4];

    // ---- [물리 및 동기 이동 로직] ----
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ship_x <= 7'd64; ship_y <= 6'd32; ship_dir <= 2'd0; ship_active <= 1'b1;
            bullet_active <= 1'b0;

            // ★ LFSR 비트를 다각도로 쪼개어 위치(X, Y), 방향(Dir), 이동 여부(Move)를 무작위 설정
            // ast_move_x와 ast_move_y 중 하나만 0이 되면 상하 또는 좌우로만 직선 이동하게 됩니다. 둘 다 1이면 대각선 이동합니다.
            
            // Asteroid 0
            ast_x[0] <= {lfsr_reg[6:0]} & 7'h7F;             ast_y[0] <= {lfsr_reg[5:0]} & 6'h3F;
            ast_dir_x[0] <= lfsr_reg[0];                    ast_dir_y[0] <= lfsr_reg[1];
            ast_move_x[0] <= lfsr_reg[2] | lfsr_reg[3];      ast_move_y[0] <= ~(lfsr_reg[2] & lfsr_reg[3]); // 적어도 한 축은 움직이도록 안전장치 조합
            ast_active[0] <= 1'b1;

            // Asteroid 1
            ast_x[1] <= {lfsr_reg[5:0], lfsr_reg[7]} & 7'h7F; ast_y[1] <= {lfsr_reg[4:0], lfsr_reg[6]} & 6'h3F;
            ast_dir_x[1] <= lfsr_reg[2];                    ast_dir_y[1] <= lfsr_reg[3];
            ast_move_x[1] <= lfsr_reg[4] | lfsr_reg[5];      ast_move_y[1] <= ~(lfsr_reg[4] & lfsr_reg[5]);
            ast_active[1] <= 1'b1;

            // Asteroid 2
            ast_x[2] <= {lfsr_reg[4:0], lfsr_reg[7:6]} & 7'h7F; ast_y[2] <= {lfsr_reg[3:0], lfsr_reg[5:4]} & 6'h3F;
            ast_dir_x[2] <= lfsr_reg[4];                    ast_dir_y[2] <= lfsr_reg[5];
            ast_move_x[2] <= lfsr_reg[6] | lfsr_reg[7];      ast_move_y[2] <= ~(lfsr_reg[6] & lfsr_reg[7]);
            ast_active[2] <= 1'b1;

            // Asteroid 3
            ast_x[3] <= {lfsr_reg[3:0], lfsr_reg[7:5]} & 7'h7F; ast_y[3] <= {lfsr_reg[2:0], lfsr_reg[4:2]} & 6'h3F;
            ast_dir_x[3] <= lfsr_reg[6];                    ast_dir_y[3] <= lfsr_reg[7];
            ast_move_x[3] <= lfsr_reg[0] | lfsr_reg[1];      ast_move_y[3] <= ~(lfsr_reg[0] & lfsr_reg[1]);
            ast_active[3] <= 1'b1;

            // Asteroid 4
            ast_x[4] <= {lfsr_reg[2:0], lfsr_reg[7:4]} & 7'h7F; ast_y[4] <= {lfsr_reg[1:0], lfsr_reg[3:0]} & 6'h3F;
            ast_dir_x[4] <= lfsr_next;                      ast_dir_y[4] <= lfsr_reg[0];
            ast_move_x[4] <= lfsr_reg[3] | lfsr_reg[4];      ast_move_y[4] <= ~(lfsr_reg[3] & lfsr_reg[4]);
            ast_active[4] <= 1'b1;
            
        end else if (frame_tick) begin
            
            // 우주선 조작 제어
            if (ship_active) begin
                if (btn_left)  ship_dir <= ship_dir - 1'b1;
                if (btn_right) ship_dir <= ship_dir + 1'b1;
                
                if (btn_thrust) begin
                    case (ship_dir)
                        2'd0: ship_y <= (ship_y == 6'd0)  ? 6'd63  : ship_y - 1'b1;
                        2'd1: ship_x <= (ship_x == 7'd127) ? 7'd0   : ship_x + 1'b1;
                        2'd2: ship_y <= (ship_y == 6'd63) ? 6'd0   : ship_y + 1'b1;
                        2'd3: ship_x <= (ship_x == 7'd0)  ? 7'd127 : ship_x - 1'b1;
                    endcase
                end

                if (btn_fire && !bullet_active) begin
                    bullet_active <= 1'b1; bullet_x <= ship_x + 2; bullet_y <= ship_y + 2; bullet_dir <= ship_dir;
                end
            end

            // 미사일 이동 처리
            if (bullet_active) begin
                case (bullet_dir)
                    2'd0: begin if (bullet_y <= 6'd1)  bullet_active <= 1'b0; else bullet_y <= bullet_y - 2'd2; end
                    2'd1: begin if (bullet_x >= 7'd126) bullet_active <= 1'b0; else bullet_x <= bullet_x + 2'd2; end
                    2'd2: begin if (bullet_y >= 6'd62)  bullet_active <= 1'b0; else bullet_y <= bullet_y + 2'd2; end
                    2'd3: begin if (bullet_x <= 7'd1)  bullet_active <= 1'b0; else bullet_x <= bullet_x - 2'd2; end
                endcase
            end

            // 소행성 이동 및 전체 충돌 감지 로직
            for (i = 0; i < 5; i = i + 1) begin
                if (ast_active[i]) begin
                    // ★ X축 이동 활성화 시에만 위치 변경 및 화면 워프 처리
                    if (ast_move_x[i]) begin
                        ast_x[i] <= ast_dir_x[i] ? ((ast_x[i] == 7'd127) ? 7'd0 : ast_x[i] + 1'b1) : ((ast_x[i] == 7'd0) ? 7'd127 : ast_x[i] - 1'b1);
                    end
                    // ★ Y축 이동 활성화 시에만 위치 변경 및 화면 워프 처리
                    if (ast_move_y[i]) begin
                        ast_y[i] <= ast_dir_y[i] ? ((ast_y[i] == 6'd63)  ? 6'd0 : ast_y[i] + 1'b1) : ((ast_y[i] == 6'd0) ? 6'd63  : ast_y[i] - 1'b1);
                    end

                    // A. 총알과 소행성 충돌
                    if (bullet_active) begin
                        if ((bullet_x >= ast_x[i] && bullet_x <= ast_x[i] + 7) &&
                            (bullet_y >= ast_y[i] && bullet_y <= ast_y[i] + 7)) begin
                            ast_active[i] <= 1'b0; 
                            bullet_active <= 1'b0;
                        end
                    end

                    // B. 우주선과 소행성 충돌
                    if (ship_active) begin
                        if ((ship_x + 4 >= ast_x[i] && ship_x <= ast_x[i] + 7) &&
                            (ship_y + 3 >= ast_y[i] && ship_y <= ast_y[i] + 7)) begin
                            ship_active <= 1'b0;
                        end
                    end
                end
            end
        end
    end

    // ---- [명시적 색인이 추가된 스프라이트 ROM] ----
    reg [4:0] ship_rom [0:15];
    initial begin
        ship_rom[0]  = 5'b00100; ship_rom[1]  = 5'b01110; ship_rom[2]  = 5'b01110; ship_rom[3]  = 5'b11111; // 상
        ship_rom[4]  = 5'b11000; ship_rom[5]  = 5'b11110; ship_rom[6]  = 5'b11111; ship_rom[7]  = 5'b11110; // 우
        ship_rom[8]  = 5'b11111; ship_rom[9]  = 5'b01110; ship_rom[10] = 5'b01110; ship_rom[11] = 5'b00100; // 하
        ship_rom[12] = 5'b00011; ship_rom[13] = 5'b01111; ship_rom[14] = 5'b11111; ship_rom[15] = 5'b01111; // 좌
    end

    reg [7:0] ast_rom [0:39];
    initial begin
        ast_rom[0]  = 8'b00111100; ast_rom[1]  = 8'b01111110; ast_rom[2]  = 8'b11100111; ast_rom[3]  = 8'b11000011;
        ast_rom[4]  = 8'b11100111; ast_rom[5]  = 8'b01111111; ast_rom[6]  = 8'b00111110; ast_rom[7]  = 8'b00011100;
        ast_rom[8]  = 8'b00011000; ast_rom[9]  = 8'b00111110; ast_rom[10] = 8'b01110111; ast_rom[11] = 8'b11100011;
        ast_rom[12] = 8'b11110111; ast_rom[13] = 8'b01111110; ast_rom[14] = 8'b00111100; ast_rom[15] = 8'b00011000;
        ast_rom[16] = 8'b00111100; ast_rom[17] = 8'b01111110; ast_rom[18] = 8'b11000111; ast_rom[19] = 8'b11000011;
        ast_rom[20] = 8'b11110011; ast_rom[21] = 8'b01111110; ast_rom[22] = 8'b00111100; ast_rom[23] = 8'b00011000;
        ast_rom[24] = 8'b00100100; ast_rom[25] = 8'b01111110; ast_rom[26] = 8'b11111111; ast_rom[27] = 8'b01111110;
        ast_rom[28] = 8'b11111111; ast_rom[29] = 8'b01111110; ast_rom[30] = 8'b00111100; ast_rom[31] = 8'b00011000;
        ast_rom[32] = 8'b00111100; ast_rom[33] = 8'b01100110; ast_rom[34] = 8'b11000011; ast_rom[35] = 8'b11011011;
        ast_rom[36] = 8'b11000011; ast_rom[37] = 8'b01100110; ast_rom[38] = 8'b00111100; ast_rom[39] = 8'b00011000;
    end

    // ---- [순시 스프라이트 맵 렌더링 연산] ----
    wire ship_hit = ship_active && (scan_x >= ship_x && scan_x < ship_x + 5) && 
                    (scan_y >= ship_y && scan_y < ship_y + 4);
    wire [2:0] ship_sub_x = scan_x - ship_x;
    wire [1:0] ship_sub_y = scan_y - ship_y;
    wire [3:0] ship_rom_addr = {ship_dir, ship_sub_y};
    wire draw_ship = ship_hit && ship_rom[ship_rom_addr][4 - ship_sub_x];

    wire draw_bullet = bullet_active && (scan_x == bullet_x) && (scan_y == bullet_y);

    wire [4:0] ast_hit_array;
    wire [4:0] draw_asteroid_array;

    genvar k;
    generate
        for (k = 0; k < 5; k = k + 1) begin : gen_ast_sprite
            assign ast_hit_array[k] = ast_active[k] && 
                                     (scan_x >= ast_x[k] && scan_x < ast_x[k] + 8) && 
                                     (scan_y >= ast_y[k] && scan_y < ast_y[k] + 8);
            
            wire [2:0] ast_sub_x = scan_x - ast_x[k];
            wire [2:0] ast_sub_y = scan_y - ast_y[k];
            wire [5:0] ast_rom_addr = (k * 4'd8) + ast_sub_y;
            
            assign draw_asteroid_array[k] = ast_hit_array[k] && ast_rom[ast_rom_addr][3'd7 - ast_sub_x];
        end
    endgenerate

    wire draw_any_asteroid = |draw_asteroid_array;
    // ---- [최종 동기화 스트림 출력] ----
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pixel_data <= 1'b0;
        end else begin
            if (draw_ship || draw_bullet || draw_any_asteroid)
                pixel_data <= 1'b1;
            else
                pixel_data <= 1'b0;
        end
    end

endmodule

