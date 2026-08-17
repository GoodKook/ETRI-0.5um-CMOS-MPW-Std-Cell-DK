//
// Filename: bricks_out.vh
// Purpose: Defines
//

`define SCREEN_WIDTH    128
`define SCREEN_HEIGHT   64

`define PADDLE_WIDTH    16
`define PADDLE_HEIGHT   8
`define PADDLE_H_BITS   $clog2(`PADDLE_HEIGHT)
`define PADDLE_Y        (`SCREEN_HEIGHT-`PADDLE_HEIGHT)

`define BRICK_WIDTH     8
`define BRICK_HEIGHT    8
`define BRICK_H_BITS    $clog2(`BRICK_HEIGHT)
`define BRICKS_Y0       0

`define BALL_SIZE       8
