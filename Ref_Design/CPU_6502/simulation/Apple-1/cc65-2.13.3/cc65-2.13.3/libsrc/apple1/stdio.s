;
; Oliver Schmidt, 12.01.2005
; Modified for Apple1 by David Schmenk, 6/11/2006
;

.export		_open, _close, _read, _write
.import 	addysp, incsp4, incaxy, pushax, popax

.include	"zeropage.inc"
.include	"errno.inc"
.include	"fcntl.inc"
.include	"apple1.inc"

;
; int open (const char* name, int flags, ...);
;

_open:
        ; Throw away all parameters except name
        ; and flags occupying together 4 bytes
        dey
        dey
        dey
        dey
        jsr	addysp

        ; Load errno code
        lda	#EMFILE

        ; Cleanup stack
	jsr	incsp4		; Preserves A

        ; Return errno
        jmp	errno

;
; int __fastcall__ close (int fd);
;

_close:
        ; Process fd
	jsr	popax

        jmp	errno

;
; int __fastcall__ read (int fd, void* buf, unsigned count);
;

_read:
	; Save count
	sta	ptr2
	stx	ptr2+1


	; Get and save buf
	jsr	popax
	sta	ptr1
	stx	ptr1+1

	; Get and process fd
	jsr	popax
	cpx	#$00
	bne	errno
	cmp	#$00		; Check for stdin read
	bne	errno

        ; Set counter to zero
	lda	#$00
        sta	ptr3
        sta	ptr3+1
        beq	rdchk

        ; Read from device and echo to device
rdkbd:  lda	KBDRDY
        bpl	rdkbd		; if < 128, no key pressed
	lda	KBD
        and	#$7F		; Clear high bit
        ldx	#$00
        jsr	ECHO

        ; Check for '\r'
        cmp	#$0D
        bne	:+

        ; Replace with '\n' and set count to zero
        lda	#$0A
        ldy	#$00
        sty	ptr2
        sty	ptr2+1

        ; Put char into buf
:       ldy	#$00
        sta	(ptr1),y

        ; Increment pointer
        inc	ptr1
        bne	:+
        inc	ptr1+1

        ; Increment counter
:       inc	ptr3
        bne	rdchk
        inc	ptr3+1

        ; Check for counter less than count
rdchk:  lda	ptr3
        cmp	ptr2
        bcc	rdkbd
        ldx	ptr3+1
        cpx	ptr2+1
        bcc	rdkbd

        ; Return success, AX already set
        rts

        ; Load errno code
einval: lda	#EINVAL

        ; Return errno
errno:  jsr	__seterrno
	sta	__oserror
	lda	#'X'
	jsr	ECHO
	lda	#$FF
	tax
	rts

;
; int __fastcall__ write (int fd, const void* buf, unsigned count);
;

_write:
	; Save count
	sta	ptr2
	sta	ptr3
	stx	ptr2+1
	stx	ptr3+1

	; Get and save buf
	jsr	popax
	sta	ptr1
	stx	ptr1+1

	; Get and process fd
	jsr	popax
	cpx	#$00
	bne	errno
	cmp	#$01		; Check for stdout write
	beq	wrstd
	cmp	#$02
	beq	wrstd
	bne	errno

        ; Do write
wrstd:	ldx	ptr2
        lda	ptr2+1

        ; Check for zero count
        ora	ptr2
        beq	wrfin

        ; Get char from buf
        ldy	#$00
wrnxt:	lda	(ptr1),y

        ; Replace '\n' with '\r'
        cmp	#$0A
        bne	wrdev
        lda	#$0D

        ; Write to device
wrdev:	jsr	ECHO		; Preserves X and Y

        ; Increment pointer
        iny
        bne	:+
        inc	ptr1+1

        ; Decrement count
:       dex
        bne	wrnxt
        dec	ptr2+1
        bpl	wrnxt

        ; Return success
wrfin:	lda	ptr3
	ldx	ptr3+1
	rts
