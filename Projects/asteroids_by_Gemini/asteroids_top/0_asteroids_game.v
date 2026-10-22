module asteroids_game (
    input wire clk,
    input wire rst_n,
    input wire frame_tick,
    // 조작 키 입력
    input wire btn_left,
    input wire btn_right,
    input wire btn_thrust,
    input wire btn_fire,
    // 래스터 스트림 출력
    output reg pixel_data
);

    // ---- [내부 동기화용 스캔 카운터 (외부 출력 없음)] ----
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
    wire [4:0] draw_asteroid_array;

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
            // 우주선 방향 회전
            if (btn_left)  ship_dir <= ship_dir - 1'b1;
            if (btn_right) ship_dir <= ship_dir + 1'b1;
            
            // 추진 이동 처리 (Screen Wrapping)
            if (btn_thrust) begin
                case (ship_dir)
                    2'd0: ship_y <= (ship_y == 6'd0)  ? 6'd63  : ship_y - 1'b1;
                    2'd1: ship_x <= (ship_x == 7'd127) ? 7'd0   : ship_x + 1'b1;
                    2'd2: ship_y <= (ship_y == 6'd63) ? 6'd0   : ship_y + 1'b1;
                    2'd3: ship_x <= (ship_x == 7'd0)  ? 7'd127 : ship_x - 1'b1;
                endcase
            end

            // 미사일 발사 및 제어
            if (btn_fire && !bullet_active) begin
                bullet_active <= 1'b1; bullet_x <= ship_x; bullet_y <= ship_y; bullet_dir <= ship_dir;
            end else if (bullet_active) begin
                case (bullet_dir)
                    2'd0: begin if (bullet_y <= 6'd1)  bullet_active <= 1'b0; else bullet_y <= bullet_y - 2'd2; end
                    2'd1: begin if (bullet_x >= 7'd126) bullet_active <= 1'b0; else bullet_x <= bullet_x + 2'd2; end
                    2'd2: begin if (bullet_y >= 6'd62)  bullet_active <= 1'b0; else bullet_y <= bullet_y + 2'd2; end
                    2'd3: begin if (bullet_x <= 7'd1)  bullet_active <= 1'b0; else bullet_x <= bullet_x - 2'd2; end
                endcase
            end

            // 5개 소행성 이동 및 충돌
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

    // ---- [순시 래스터 위치 매핑 렌더링 회로] ----
    wire draw_ship   = (scan_x >= ship_x - 2 && scan_x <= ship_x + 2) && 
                       (scan_y >= ship_y - 2 && scan_y <= ship_y + 2);
                         
    wire draw_bullet = bullet_active && (scan_x == bullet_x) && (scan_y == bullet_y);
    
    genvar k;
    generate
        for (k = 0; k < 5; k = k + 1) begin : gen_ast_render
            assign draw_asteroid_array[k] = ast_active[k] && 
                                           (scan_x >= ast_x[k] && scan_x <= ast_x[k] + 7) && 
                                           (scan_y >= ast_y[k] && scan_y <= ast_y[k] + 7);
        end
    endgenerate

    wire draw_any_asteroid = |draw_asteroid_array;

    // 래스터 스캔 스트림 클럭 출력 동기화
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
