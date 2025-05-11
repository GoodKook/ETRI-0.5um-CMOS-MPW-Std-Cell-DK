;-----------------------------------------------------------------------------
; Zero page locations

IRQ	:=	$00	; IRQ handler jumps to $0000
NMI	:=	$0F	; NMI handler jumps to $000F

;-----------------------------------------------------------------------------
; Hardware

; Keyboard input
KBD     :=      $D010	; Read keyboard
KBDRDY	:=      $D011	; Clear keyboard strobe

;Video output
VID	:=	$D012	; Write to video hardware

;-----------------------------------------------------------------------------
; RAM addresses
	.ifdef	__APPLE1__
RAMTOP	:=	$EFFF
	.endif
	.ifdef	__REPLICA1__
RAMTOP	:=	$7FFF
	.endif

;-----------------------------------------------------------------------------
; ROM routines

RESET	:=	$FF00	; RESET entrypoint into monitor
ECHO	:=	$FFEF	; Echo character in A to video hardware
