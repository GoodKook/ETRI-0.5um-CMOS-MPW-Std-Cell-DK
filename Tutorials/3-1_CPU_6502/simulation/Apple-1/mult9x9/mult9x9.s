;
; File generated by cc65 v 2.13.3
;
	.fopt		compiler,"cc65 v 2.13.3"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank, tmp1, ptr1, ptr2
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_printf
	.export		_main

.segment	"RODATA"

L0001:
	.byte	$25,$6C,$64,$20,$78,$20,$25,$6C,$64,$20,$3D,$20,$25,$6C,$64,$0A
	.byte	$00,$2D,$2D,$25,$6C,$64,$2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D,$0A,$00

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"BSS"

L0003:
	.res	4,$00
L0004:
	.res	4,$00
L0005:
	.res	2,$00

.segment	"CODE"

;
; int i = 0;
;
	lda     #$00
	sta     L0005
	sta     L0005+1
;
; for (x=2000; x<=9000; x+=1000)
;
	ldx     #$07
	lda     #$D0
	sta     L0003
	stx     L0003+1
	ldy     #$00
	sty     L0003+2
L0024:	sty     L0003+3
	lda     L0003+3
	sta     sreg+1
	lda     L0003+2
	sta     sreg
	ldx     L0003+1
	lda     L0003
	jsr     pusheax
	ldx     #$23
	lda     #$00
	sta     sreg
	sta     sreg+1
	lda     #$29
	jsr     toslteax
	jeq     L0008
;
; for (y = 1000; y<=9000; y+=1000)
;
	ldx     #$03
	lda     #$E8
	sta     L0004
	stx     L0004+1
	ldy     #$00
	sty     L0004+2
L0023:	sty     L0004+3
	lda     L0004+3
	sta     sreg+1
	lda     L0004+2
	sta     sreg
	ldx     L0004+1
	lda     L0004
	jsr     pusheax
	ldx     #$23
	lda     #$00
	sta     sreg
	sta     sreg+1
	lda     #$29
	jsr     toslteax
	jeq     L0011
;
; printf("%ld x %ld = %ld\n", x, y, (x*y));
;
	lda     #<(L0001)
	ldx     #>(L0001)
	jsr     pushax
	lda     L0003+3
	sta     sreg+1
	lda     L0003+2
	sta     sreg
	ldx     L0003+1
	lda     L0003
	jsr     pusheax
	lda     L0004+3
	sta     sreg+1
	lda     L0004+2
	sta     sreg
	ldx     L0004+1
	lda     L0004
	jsr     pusheax
	lda     L0003+3
	sta     sreg+1
	lda     L0003+2
	sta     sreg
	ldx     L0003+1
	lda     L0003
	jsr     pusheax
	lda     L0004+3
	sta     sreg+1
	lda     L0004+2
	sta     sreg
	ldx     L0004+1
	lda     L0004
	jsr     tosmuleax
	jsr     pusheax
	ldy     #$0E
	jsr     _printf
;
; for (y = 1000; y<=9000; y+=1000)
;
	lda     L0004+3
	sta     sreg+1
	lda     L0004+2
	sta     sreg
	ldx     L0004+1
	lda     L0004
	jsr     pusheax
	ldx     #$03
	lda     #$E8
	jsr     tosadd0ax
	sta     L0004
	stx     L0004+1
	ldy     sreg
	sty     L0004+2
	ldy     sreg+1
	jmp     L0023
;
; printf("--%ld--------\n", x);
;
L0011:	lda     #<(L0001+17)
	ldx     #>(L0001+17)
	jsr     pushax
	lda     L0003+3
	sta     sreg+1
	lda     L0003+2
	sta     sreg
	ldx     L0003+1
	lda     L0003
	jsr     pusheax
	ldy     #$06
	jsr     _printf
;
; for (x=2000; x<=9000; x+=1000)
;
	lda     L0003+3
	sta     sreg+1
	lda     L0003+2
	sta     sreg
	ldx     L0003+1
	lda     L0003
	jsr     pusheax
	ldx     #$03
	lda     #$E8
	jsr     tosadd0ax
	sta     L0003
	stx     L0003+1
	ldy     sreg
	sty     L0003+2
	ldy     sreg+1
	jmp     L0024
;
; return 0;
;
L0008:	ldx     #$00
	txa
;
; }
;
	rts

.endproc

