//
// Filename: invaders.vh
// Purpose: Defines
//

`define SCREEN_WIDTH    128
`define SCREEN_HEIGHT   64

`define PADDLE_WIDTH    16
`define PADDLE_HEIGHT   8
`define PADDLE_H_BITS   $clog2(`PADDLE_HEIGHT)
`define PADDLE_Y        (`SCREEN_HEIGHT-`PADDLE_HEIGHT)

`define ALIEN_WIDTH     16
`define ALIEN_HEIGHT    8
`define ALIEN_H_BITS    $clog2(`ALIEN_HEIGHT)
`define ALIENS_Y0       0

`define BALL_SIZE       8
