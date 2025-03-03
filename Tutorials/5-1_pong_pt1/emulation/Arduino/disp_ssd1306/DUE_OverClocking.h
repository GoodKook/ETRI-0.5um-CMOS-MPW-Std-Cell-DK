/*
  Filename: DUE_OverClocking.h
  Over-Clocking Arduino DUE
  Author: GoodKook Lab. goodkook@gmail.com
  History: Mar. 2 2025, First Release
*/

#ifndef _DUE_OVERCLOCKING_H_
#define _DUE_OVERCLOCKING_H_

#if defined(__GNUC__)
#pragma GCC optimize ("Ofast")
#pragma GCC optimize ("inline-functions")
#endif

class DUE_OC
{
public:
  DUE_OC(void)  // Constructor
  {
    // Over-clocking DUE
    // MULA: 18UL for 114MHz, 15UL for 96MHz, 84MHz for 13UL (as in system_sam3xa.c):
    // ex) Initialize PLLA to (18+1)*6=114MHz

#define SYS_BOARD_PLLAR (CKGR_PLLAR_ONE | CKGR_PLLAR_MULA(18UL) | CKGR_PLLAR_PLLACOUNT(0x3fUL) | CKGR_PLLAR_DIVA(1UL))
#define SYS_BOARD_MCKR  (PMC_MCKR_PRES_CLK_2 | PMC_MCKR_CSS_PLLA_CLK)

    //Set FWS according to SYS_BOARD_MCKR configuration 
    EFC0->EEFC_FMR = EEFC_FMR_FWS(4); //4 waitstate flash access
    EFC1->EEFC_FMR = EEFC_FMR_FWS(4);

    // Initialize PLLA to 114MHz
    PMC->CKGR_PLLAR = SYS_BOARD_PLLAR;
    while (!(PMC->PMC_SR & PMC_SR_LOCKA)) {}
    PMC->PMC_MCKR = SYS_BOARD_MCKR;
    while (!(PMC->PMC_SR & PMC_SR_MCKRDY)) {} 

    SystemCoreClockUpdate();  // !!!!! for UART !!!!!
  }

  void digitalWriteDirect(int pin, boolean val)
  {
    if(val) g_APinDescription[pin].pPort -> PIO_SODR = g_APinDescription[pin].ulPin;
    else    g_APinDescription[pin].pPort -> PIO_CODR = g_APinDescription[pin].ulPin;
  }

  int digitalReadDirect(int pin)
  {
    return !!(g_APinDescription[pin].pPort -> PIO_PDSR & g_APinDescription[pin].ulPin);
  }
};

#endif

