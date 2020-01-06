; Sample DAAD EXTERN routine

; An EXTERN for DAAD is linked with the main code.
; Format for call: EXTERN param function
; AH & [BX] = Function number
; AL = Parameter
; DI = Flagno parameter
; SI = Object parameter
; BX must be preserved, (or advanced over inline parameters)
; A NEAR call is then made to EXT_DISP
; DAAD will set the segment registers to three PUBLIC sections
; CODE,DATA(DS) & DBASE(ES) as defined below.
; The CODE and DATA segments are a max of 64K each
; The DBASE is always a 64K segment, given by ES. I.e. Space above
; SPARE could be used if required.
; It contains only the database. The game position is in DATA.

; Some useful PUBLICS

; Routines

	EXTRN  MESSN:NEAR
	EXTRN  FLUSH:NEAR,CLRWRB:NEAR,OPCHR:NEAR

; Data stuff

	EXTRN  ACTIVE_WINDOW:BYTE
	EXTRN  USER:BYTE
	EXTRN  PAWF1:BYTE,PAWF2:BYTE,PAWF3:BYTE,PAWF4:BYTE
	EXTRN  SCR_SEG:WORD,PSC_OFF:WORD,GLS_OFF:WORD,TLS_OFF:WORD
	EXTRN  PIC_SRCBOF:WORD,PIC_SRCBSG:WORD
	EXTRN  PIC_BUFFU:WORD,PIC_BUFFS:WORD
	EXTRN  LOC_CLIP:WORD,PIC_CLIP:WORD,PIC_TOKS:WORD

; System structures

; Text database header structure

VERSNO	EQU	0
NULLCH  EQU     VERSNO+2
OBJNO   EQU     NULLCH+1
LOCNO   EQU     OBJNO+1
MESNO   EQU     LOCNO+1
SYSNO   EQU     MESNO+1
PRONO   EQU     SYSNO+1
DICT    EQU     PRONO+1
PROCES  EQU     DICT+2
OBJTX   EQU     PROCES+2
LOCTX   EQU     OBJTX+2
MESTX   EQU     LOCTX+2
SYSTX   EQU     MESTX+2
MOVMT   EQU     SYSTX+2
VOCAB   EQU     MOVMT+2
OBJST   EQU     VOCAB+2
OBJWR   EQU     OBJST+2
OBJWE   EQU     OBJWR+2
OBJAT	EQU	OBJWE+2
SPARE	EQU	OBJAT+2
EXT_ADD EQU	SPARE+2
SFX_ADD EQU	EXT_ADD+2
INT_ADD EQU	EXT_ADD+2
UPTR1	EQU	INT_ADD+2
UPTR2	EQU	UPTR1+2
UPTR3	EQU	UPTR2+2
UPTR4	EQU	UPTR3+2
UPTR5	EQU	UPTR4+2
UPTR6	EQU	UPTR5+2
UPTR7	EQU	UPTR6+2
UPTR8	EQU	UPTR7+2
UPTR9	EQU	UPTR8+2
UPTR10	EQU	UPTR9+2

; Segment stuff

		DAAD	GROUP	DATA,CODE
		CODE	SEGMENT PARA PUBLIC 'CODE'
		ASSUME	CS:DAAD,DS:DATA

EXT_DISP:
; Program goes here

		RET

CODE		ENDS

; All the data

DATA		SEGMENT PARA PUBLIC 'DATA'

DATA		ENDS

		PUBLIC EXT_DISP

		END
