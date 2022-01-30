opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_Lcd_Data
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNROOT	_main
	global	_PORTC
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"LCD 0-9 WITH SWITCH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	ds	1
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	global	main@Count
main@Count:	; 2 bytes @ 0x5
	ds	2
;;Data sizes: Strings 10, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_String
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     180
;;                                              5 COMMON     2     2      0
;;                  _Lcd_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _Lcd_Data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 60 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Count           2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_Lcd_Data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	61
	
l2667:	
;LCD 0-9 WITH SWITCH.c: 61: TRISD=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	62
	
l2669:	
;LCD 0-9 WITH SWITCH.c: 62: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	63
	
l2671:	
;LCD 0-9 WITH SWITCH.c: 63: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	64
	
l2673:	
;LCD 0-9 WITH SWITCH.c: 64: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	68
	
l2675:	
;LCD 0-9 WITH SWITCH.c: 66: int Count;
;LCD 0-9 WITH SWITCH.c: 68: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	70
	
l2677:	
;LCD 0-9 WITH SWITCH.c: 70: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	71
	
l2679:	
;LCD 0-9 WITH SWITCH.c: 71: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l703
	line	73
;LCD 0-9 WITH SWITCH.c: 73: while(1)
	
l702:	
	line	75
;LCD 0-9 WITH SWITCH.c: 74: {
;LCD 0-9 WITH SWITCH.c: 75: while(RD1==1)
	goto	l703
	
l704:	
	line	77
	
l2681:	
;LCD 0-9 WITH SWITCH.c: 76: {
;LCD 0-9 WITH SWITCH.c: 77: Lcd_Command(0xc0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	78
;LCD 0-9 WITH SWITCH.c: 78: Lcd_Data(Count+48);
	movf	(main@Count),w
	addlw	030h
	fcall	_Lcd_Data
	line	79
	
l2683:	
;LCD 0-9 WITH SWITCH.c: 79: Count++;
	movlw	low(01h)
	addwf	(main@Count),f
	skipnc
	incf	(main@Count+1),f
	movlw	high(01h)
	addwf	(main@Count+1),f
	line	80
	
l2685:	
;LCD 0-9 WITH SWITCH.c: 80: if(Count>=10)
	movf	(main@Count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(0Ah)
	subwf	(main@Count),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l706
u2250:
	line	82
	
l2687:	
;LCD 0-9 WITH SWITCH.c: 81: {
;LCD 0-9 WITH SWITCH.c: 82: Count=0;
	clrf	(main@Count)
	clrf	(main@Count+1)
	goto	l706
	line	83
	
l705:	
	line	84
;LCD 0-9 WITH SWITCH.c: 83: }
;LCD 0-9 WITH SWITCH.c: 84: while(RD1==1);
	goto	l706
	
l707:	
	
l706:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l706
u2260:
	goto	l703
	
l708:	
	line	85
	
l703:	
	line	75
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2681
u2270:
	goto	l703
	
l709:	
	goto	l703
	line	86
	
l710:	
	line	73
	goto	l703
	
l711:	
	line	87
	
l712:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd_Intialization
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 53 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text101
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	line	53
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l2665:	
;LCD 0-9 WITH SWITCH.c: 54: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	55
;LCD 0-9 WITH SWITCH.c: 55: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	56
;LCD 0-9 WITH SWITCH.c: 56: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	57
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 45 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	line	45
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	46
	
l2657:	
;LCD 0-9 WITH SWITCH.c: 46: while(*Str != 0)
	goto	l2663
	
l694:	
	line	48
	
l2659:	
;LCD 0-9 WITH SWITCH.c: 47: {
;LCD 0-9 WITH SWITCH.c: 48: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2661:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2663
	line	49
	
l693:	
	line	46
	
l2663:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2659
u2240:
	goto	l696
	
l695:	
	line	50
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_Lcd_Data
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 30 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_main
;; This function uses a non-reentrant model
;;
psect	text103
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	line	30
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 7
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	31
	
l2637:	
;LCD 0-9 WITH SWITCH.c: 31: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l2639:	
;LCD 0-9 WITH SWITCH.c: 32: RD2 = 1;
	bsf	(66/8),(66)&7
	line	33
	
l2641:	
;LCD 0-9 WITH SWITCH.c: 33: RD3 = 1;
	bsf	(67/8),(67)&7
	line	34
	
l2643:	
;LCD 0-9 WITH SWITCH.c: 34: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2287:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2287
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	35
	
l2645:	
;LCD 0-9 WITH SWITCH.c: 35: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	37
	
l2647:	
;LCD 0-9 WITH SWITCH.c: 37: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	38
	
l2649:	
;LCD 0-9 WITH SWITCH.c: 38: RD2 = 1;
	bsf	(66/8),(66)&7
	line	39
	
l2651:	
;LCD 0-9 WITH SWITCH.c: 39: RD3 = 1;
	bsf	(67/8),(67)&7
	line	40
	
l2653:	
;LCD 0-9 WITH SWITCH.c: 40: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2297:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2297
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2297
	clrwdt
opt asmopt_on

	line	41
	
l2655:	
;LCD 0-9 WITH SWITCH.c: 41: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	42
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 15 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text104
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\14-LCD 0-9 WITH SWITCH\CODE\LCD 0-9 WITH SWITCH.c"
	line	15
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	16
	
l2617:	
;LCD 0-9 WITH SWITCH.c: 16: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
	
l2619:	
;LCD 0-9 WITH SWITCH.c: 17: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l2621:	
;LCD 0-9 WITH SWITCH.c: 18: RD3 = 1;
	bsf	(67/8),(67)&7
	line	19
	
l2623:	
;LCD 0-9 WITH SWITCH.c: 19: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2307:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2307
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2307
	clrwdt
opt asmopt_on

	line	20
	
l2625:	
;LCD 0-9 WITH SWITCH.c: 20: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	22
	
l2627:	
;LCD 0-9 WITH SWITCH.c: 22: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2225:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	23
	
l2629:	
;LCD 0-9 WITH SWITCH.c: 23: RD2 = 0;
	bcf	(66/8),(66)&7
	line	24
	
l2631:	
;LCD 0-9 WITH SWITCH.c: 24: RD3 = 1;
	bsf	(67/8),(67)&7
	line	25
	
l2633:	
;LCD 0-9 WITH SWITCH.c: 25: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2317:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2317
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2317
	clrwdt
opt asmopt_on

	line	26
	
l2635:	
;LCD 0-9 WITH SWITCH.c: 26: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	27
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
