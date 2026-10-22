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

    // ---- [게임 오브젝트 레지스터 리스트] ----
    reg [6:0] ship_x = 7'd64; reg [5:0] ship_y = 6'd32; reg [1:0] ship_dir = 2'd0;
    reg [6:0] bullet_x;       reg [5:0] bullet_y;       reg [1:0] bullet_dir; reg bullet_active = 1'b0;

    // 소행성 5개 레지스터 구조
    reg [6:0] ast_x [0:4];     reg [5:0] ast_y [0:4];
    reg       ast_dir_x [0:4]; reg       ast_dir_y [0:4]; reg ast_active [0:4];

    // ---- [물리 및 동기 이동 로직] ----
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ship_x <= 7'd64; ship_y <= 6'd32; ship_dir <= 2'd0;
            bullet_active <= 1'b0;
            ast_x[0] <= 7'd15;  ast_y[0] <= 6'd15;  ast_dir_x[0] <= 1'b1; ast_dir_y[0] <= 1'b1; ast_active[0] <= 1'b1;
            ast_x[1] <= 7'd100; ast_y[1] <= 6'd10;  ast_dir_x[1] <= 1'b0; ast_dir_y[1] <= 1'b1; ast_active[1] <= 1'b1;
            ast_x[2] <= 7'd30;  ast_y[2] <= 6'd50;  ast_dir_x[2] <= 1'b1; ast_dir_y[2] <= 1'b0; ast_active[2] <= 1'b1;
            ast_x[3] <= 7'd85;  ast_y[3] <= 6'd45;  ast_dir_x[3] <= 1'b0; ast_dir_y[3] <= 1'b0; ast_active[3] <= 1'b1;
            ast_x[4] <= 7'd64;  ast_y[4] <= 6'd5;   ast_dir_x[4] <= 1'b1; ast_dir_y[4] <= 1'b1; ast_active[4] <= 1'b1;
        end else if (frame_tick) begin
            
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
            end else if (bullet_active) begin
                case (bullet_dir)
                    2'd0: begin if (bullet_y <= 6'd1)  bullet_active <= 1'b0; else bullet_y <= bullet_y - 2'd2; end
                    2'd1: begin if (bullet_x >= 7'd126) bullet_active <= 1'b0; else bullet_x <= bullet_x + 2'd2; end
                    2'd2: begin if (bullet_y >= 6'd62)  bullet_active <= 1'b0; else bullet_y <= bullet_y + 2'd2; end
                    2'd3: begin if (bullet_x <= 7'd1)  bullet_active <= 1'b0; else bullet_x <= bullet_x - 2'd2; end
                endcase
            end

            for (i = 0; i < 5; i = i + 1) begin
                if (ast_active[i]) begin
                    ast_x[i] <= ast_dir_x[i] ? ((ast_x[i] == 7'd127) ? 7'd0 : ast_x[i] + 1'b1) : ((ast_x[i] == 7'd0) ? 7'd127 : ast_x[i] - 1'b1);
                    ast_y[i] <= ast_dir_y[i] ? ((ast_y[i] == 6'd63)  ? 6'd0 : ast_y[i] + 1'b1) : ((ast_y[i] == 6'd0) ? 6'd63  : ast_y[i] - 1'b1);

                    if (bullet_active) begin
                        if ((bullet_x >= ast_x[i] && bullet_x <= ast_x[i] + 7) &&
                            (bullet_y >= ast_y[i] && bullet_y <= ast_y[i] + 7)) begin
                            ast_active[i] <= 1'b0; bullet_active <= 1'b0;
                        end
                    end
                end
            end
        end
    end

    // ---- [하드웨어 내장 스프라이트 ROM 정의] ----
    
    // 1. 4방향 화살표/삼각형 우주선 (5x5 비트맵)
    reg [4:0] ship_rom [0:15];
    initial begin
        // 방향 0: 상향 삼각형 (▲)
        ship_rom[0]  = 5'b00100;
        ship_rom[1]  = 5'b01110;
        ship_rom[2]  = 5'b01110;
        ship_rom[3]  = 5'b11111;
        // 방향 1: 우향 삼각형 (▶)
        ship_rom[4]  = 5'b11000;
        ship_rom[5]  = 5'b11110;
        ship_rom[6]  = 5'b11111;
        ship_rom[7]  = 5'b11110;
        // 방향 2: 하향 삼각형 (▼)
        ship_rom[8]  = 5'b11111;
        ship_rom[9]  = 5'b01110;
        ship_rom[10] = 5'b01110;
        ship_rom[11] = 5'b00100;
        // 방향 3: 좌향 삼각형 (◀)
        ship_rom[12] = 5'b00011;
        ship_rom[13] = 5'b01111;
        ship_rom[14] = 5'b11111;
        ship_rom[15] = 5'b01111;
    end

    // 2. 울퉁불퉁한 소행성 5종 (8x8 비트맵)
    reg [7:0] ast_rom [0:39];
    initial begin
        // Asteroid 0
        ast_rom[0]=8'b00111100; ast_rom[1]=8'b01111110; ast_rom[2]=8'b11100111; ast_rom[3]=8'b11000011;
        ast_rom[4]=8'b11100111; ast_rom[5]=8'b01111111; ast_rom[6]=8'b00111110; ast_rom[7]=8'b00011100;
        // Asteroid 1 (돌출형)
        ast_rom[8]=8'b00011000; ast_rom[9]=8'b00111110; ast_rom[10]=8'b01110111; ast_rom[11]=8'b11100011;
        ast_rom[12]=8'b11110111; ast_rom[13]=8'b01111110; ast_rom[14]=8'b00111100; ast_rom[15]=8'b00011000;
        // Asteroid 2 (움푹 파인 형)
        ast_rom[16]=8'b00111100; ast_rom[17]=8'b01111110; ast_rom[18]=8'b11000111; ast_rom[19]=8'b11000011;
        ast_rom[20]=8'b11110011; ast_rom[21]=8'b01111110; ast_rom[22]=8'b00111100; ast_rom[23]=8'b00011000;
        // Asteroid 3 (각진 별형)
        ast_rom[24]=8'b00100100; ast_rom[25]=8'b01111110; ast_rom[26]=8'b11111111; ast_rom[27]=8'b01111110;
        ast_rom[28]=8'b11111111; ast_rom[29]=8'b01111110; ast_rom[30]=8'b00111100; ast_rom[31]=8'b00011000;
        // Asteroid 4 (크레이터형)
        ast_rom[32]=8'b00111100; ast_rom[33]=8'b01100110; ast_rom[34]=8'b11000011; ast_rom[35]=8'b11011011;
        ast_rom[36]=8'b11000011; ast_rom[37]=8'b01100110; ast_rom[38]=8'b00111100; ast_rom[39]=8'b00011000;
    end

    // ---- [순시 스프라이트 맵 렌더링 연산] ----

    // 1. 우주선 스프라이트 영역 제어 및 주소 추출
    wire ship_hit = (scan_x >= ship_x && scan_x < ship_x + 5) && 
                    (scan_y >= ship_y && scan_y < ship_y + 4);
    wire [2:0] ship_sub_x = scan_x - ship_x;
    wire [1:0] ship_sub_y = scan_y - ship_y;
    wire [3:0] ship_rom_addr = {ship_dir, ship_sub_y}; // 방향(2bit) + 행(2bit)으로 4비트 주소 결합
    wire draw_ship = ship_hit && ship_rom[ship_rom_addr][4 - ship_sub_x];

    // 2. 미사일 렌더링 (단일 도트)
    wire draw_bullet = bullet_active && (scan_x == bullet_x) && (scan_y == bullet_y);

    // 3. 소행성 5종 개별 스프라이트 검사 영역
    wire [4:0] ast_hit_array;
    wire [4:0] draw_asteroid_array;

    genvar k;
    generate
        for (k = 0; k < 5; k = k + 1) begin : gen_ast_sprite
            // 현재 스캔 좌표가 해당 소행성의 8x8 바운딩 박스 안에 있는지 감지
            assign ast_hit_array[k] = ast_active[k] && 
                                     (scan_x >= ast_x[k] && scan_x < ast_x[k] + 8) && 
                                     (scan_y >= ast_y[k] && scan_y < ast_y[k] + 8);
            
            // 바운딩 박스 내부의 서브 좌표 파싱
            wire [2:0] ast_sub_x = scan_x - ast_x[k];
            wire [2:0] ast_sub_y = scan_y - ast_y[k];
            
            // 고유 스프라이트 인덱스(k*8) + 서브 Y 축 오프셋 주소 결합
            wire [5:0] ast_rom_addr = (k * 4'd8) + ast_sub_y;
            
            // 최종 맵 비트 추출
            assign draw_asteroid_array[k] = ast_hit_array[k] && ast_rom[ast_rom_addr][3'd7 - ast_sub_x];
        end
    endgenerate

    wire draw_any_asteroid = |draw_asteroid_array;

    // ---- [최종 동기화 스트림 출력 디바이스] ----
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
