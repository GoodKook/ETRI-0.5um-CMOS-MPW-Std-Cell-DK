/*****************************************************************************/
/*                                                                           */
/*                                 apple1.h				     */
/*                                                                           */
/*                   Apple I system specific definitions		     */
/*                                                                           */
/*                                                                           */
/*                                                                           */
/* (C) 2000  Kevin Ruland, <kevin@rodin.wustl.edu>                           */
/* (C) 2003  Ullrich von Bassewitz, <uz@cc65.org>                            */
/*                                                                           */
/*                                                                           */
/* This software is provided 'as-is', without any expressed or implied       */
/* warranty.  In no event will the authors be held liable for any damages    */
/* arising from the use of this software.                                    */
/*                                                                           */
/* Permission is granted to anyone to use this software for any purpose,     */
/* including commercial applications, and to alter it and redistribute it    */
/* freely, subject to the following restrictions:                            */
/*                                                                           */
/* 1. The origin of this software must not be misrepresented; you must not   */
/*    claim that you wrote the original software. If you use this software   */
/*    in a product, an acknowledgment in the product documentation would be  */
/*    appreciated but is not required.                                       */
/* 2. Altered source versions must be plainly marked as such, and must not   */
/*    be misrepresented as being the original software.                      */
/* 3. This notice may not be removed or altered from any source              */
/*    distribution.                                                          */
/*                                                                           */
/*****************************************************************************/



#ifndef _APPLE1_H
#define _APPLE1_H

/* Check for errors */
#if !defined(__APPLE1__) && !defined(__REPLICA1__)
#  error This module may only be used when compiling for the Apple 1!
#endif

/*****************************************************************************/
/*                                   Data				     */
/*****************************************************************************/

/*****************************************************************************/
/*                                   H/W				     */
/*****************************************************************************/

#define	KBD	(*(unsigned char *)0xD010)	/* Read keyboard and clear strobe */
#define	KBDRDY	(*(unsigned char *)0xD011)	/* Keyboard strobe */
#define	VID	(*(unsigned char *)0xD012)	/* Write to video hardware */

/*****************************************************************************/
/*                                   Code				     */
/*****************************************************************************/

unsigned int __fastcall__ keypressed(void);
unsigned int __fastcall__ readkey(void);
void __fastcall__ writevid(unsigned char);

/* End of apple1.h */
#endif
