;
; Startup code for cc65 (Apple1 version)
;
; This must be the *first* file on the linker command line
;

        .export         _exit
        .export         __STARTUP__ : absolute = 1      ; Mark as startup
        .import         zerobss
        .import    	initlib, donelib
        .import    	callmain, callirq
        .import        	__STARTUP_LOAD__, __BSS_LOAD__	; Linker generated
	.import		__RAM_START__, __RAM_SIZE__	; Linker generated
        .import        	__INTERRUPTOR_COUNT__		; Linker generated

        .include        "zeropage.inc"
        .include        "apple1.inc"

; ------------------------------------------------------------------------

        .segment        "EXEHDR"

        .addr           __STARTUP_LOAD__                ; Start address
        .word           __BSS_LOAD__ - __STARTUP_LOAD__	; Size

; ------------------------------------------------------------------------

        .segment        "STARTUP"

        ldx     #$FF
        txs            		; Init stack pointer

        ; Delegate all further processing to keep STARTUP small
        jsr     init

        ; Avoid re-entrance of donelib. This is also the _exit entry
_exit:
        ; Call module destructors
        jsr     donelib

        ; Jump back to monitor ROM
exit:   jmp	RESET
	

; ------------------------------------------------------------------------

        .segment        "INIT"

        ; Save the zero page locations we need
init:

        ; Clear the BSS data
        jsr     zerobss

        ; Setup the stack
	; The Replica 1 has 32K of RAM from $0000 to $7FFF
	; The Apple 1 has 4K of RAM from $0000 to $0FFF
	;   and 4K from $E000 to $EFFF 
	lda    	#<(RAMTOP+1)
	sta	sp
	lda	#>(RAMTOP+1)
	sta	sp+1

        ; Check for interruptors
        ;lda     #<__INTERRUPTOR_COUNT__
        ;beq     :+

	; Enable interrupts
	cli

        ; Call module constructors
:       jsr     initlib

        ; Push arguments and call main()
        jmp     callmain
