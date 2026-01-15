//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_apple_1_WozMon_tb_exports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2024, Aug. 31
//

#ifndef VPI_apple_1_WozMon_TB_EXPORTS_H
#define VPI_apple_1_WozMon_TB_EXPORTS_H

#ifdef __cplusplus
extern "C"
{
#endif
void init_sc     (void);
void exit_sc     (void);
void sample_hdl  (void *In_vector);
void drive_hdl   (void *Out_vector);
void exec_sc     (void *invector, void *outvector);
#ifdef __cplusplus
}
#endif

#endif
