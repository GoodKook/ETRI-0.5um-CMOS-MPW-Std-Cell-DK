;
; Ullrich von Bassewitz, 07.11.2002
;
; void _randomize (void);
; /* Initialize the random number generator */
;

    	.export	       	__randomize
	.import		_srand

        .include        "apple1.inc"

__randomize:
        ldx     #$EA            ; Use random value supplied by ROM
        lda     #$55
        jmp     _srand          ; Initialize generator

