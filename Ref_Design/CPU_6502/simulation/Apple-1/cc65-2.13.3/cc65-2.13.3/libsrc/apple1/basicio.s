;
; David Schmenk, 6/11/2006
;

.export		_keypressed, _readkey, _writevid

.include	"apple1.inc"

;
; unsigned int __fastcall__ keypressed(void);
;

_keypressed:
	ldx	#$00
	lda	KBDRDY
	rol
	txa
	rol
	rts
	
;
; unsigned int __fastcall__ readkey(void);
;

_readkey:
	lda	KBDRDY
	bpl	_readkey
	ldx	#$00
	lda	KBD
	rts
	
;
; void __fastcall__ writevid(unsigned char);
;

_writevid:
	jmp	ECHO