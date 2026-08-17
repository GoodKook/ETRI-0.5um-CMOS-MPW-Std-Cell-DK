//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_dino_run_tb_exports.h
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul. 31
//

#ifndef VPI_dino_run_TB_EXPORTS_H
#define VPI_dino_run_TB_EXPORTS_H

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
