;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _cmd_handler
	.globl _strtok
	.globl _strcmp
	.globl _getchar
	.globl _putchar
	.globl _inituart
	.globl _SIO_SM0
	.globl _SIO_SM1
	.globl _SIO_SM2
	.globl _SIO_REN
	.globl _SIO_TB8
	.globl _SIO_RB8
	.globl _SIO_TI
	.globl _SIO_RI
	.globl _SIO_TR1
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _SIO_SBUF
	.globl _SIO_SCON
	.globl _SIO_TL1
	.globl _SIO_TH1
	.globl _SIO_TMOD
	.globl _SIO_PCON
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _SHELL_STATE
	.globl _cmd_res
	.globl _cmd_buff
	.globl _last_cmd_index
	.globl _cmd_index
	.globl _g_char
	.globl _s_printf
	.globl _delay_us
	.globl _delay_ms
	.globl _delay_sec
	.globl _setup
	.globl _at_p0
	.globl _at_p3
	.globl _at_p0_0
	.globl _at_p0_1
	.globl _at_p0_2
	.globl _at_p0_3
	.globl _at_p0_4
	.globl _at_p0_5
	.globl _at_p0_6
	.globl _at_p0_7
	.globl _at_p3_2
	.globl _at_p3_4
	.globl _at_p3_5
	.globl _at_p3_6
	.globl _at_p3_7
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
_SIO_PCON	=	0x0087
_SIO_TMOD	=	0x0089
_SIO_TH1	=	0x008d
_SIO_TL1	=	0x008b
_SIO_SCON	=	0x0098
_SIO_SBUF	=	0x0099
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_SIO_TR1	=	0x008e
_SIO_RI	=	0x0098
_SIO_TI	=	0x0099
_SIO_RB8	=	0x009a
_SIO_TB8	=	0x009b
_SIO_REN	=	0x009c
_SIO_SM2	=	0x009d
_SIO_SM1	=	0x009e
_SIO_SM0	=	0x009f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_g_char::
	.ds 1
_cmd_index::
	.ds 1
_last_cmd_index::
	.ds 1
_cmd_buff::
	.ds 81
_cmd_res::
	.ds 1
_SHELL_STATE::
	.ds 1
_cmd_handler_cmd_65536_63:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.h:31: byte cmd_index, last_cmd_index = 0;
	mov	_last_cmd_index,#0x00
;	main.h:35: bool SHELL_STATE = LOW;
	mov	_SHELL_STATE,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'inituart'
;------------------------------------------------------------
;t1_reload                 Allocated to registers r7 
;------------------------------------------------------------
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:50: void inituart (unsigned char t1_reload)
;	-----------------------------------------
;	 function inituart
;	-----------------------------------------
_inituart:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:52: SIO_TR1=0;
;	assignBit
	clr	_SIO_TR1
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:53: SIO_TMOD=(SIO_TMOD&0x0f)|0x20;
	mov	a,_SIO_TMOD
	anl	a,#0x0f
	orl	a,#0x20
	mov	_SIO_TMOD,a
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:54: SIO_PCON|=0x80;
	orl	_SIO_PCON,#0x80
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:55: SIO_TH1=SIO_TL1=t1_reload;
	mov	_SIO_TL1,r7
	mov	_SIO_TH1,r7
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:56: SIO_TR1=1;
;	assignBit
	setb	_SIO_TR1
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:57: SIO_SCON=0x52;
	mov	_SIO_SCON,#0x52
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:60: void putchar (char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:62: if((!SIO_SM0)&&(!SIO_SM1)) inituart(0xff);
	jb	_SIO_SM0,00102$
	jb	_SIO_SM1,00102$
	mov	dpl,#0xff
	push	ar7
	lcall	_inituart
	pop	ar7
00102$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:63: if (c=='\n')
	cjne	r7,#0x0a,00109$
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:65: while (!SIO_TI);
00104$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:66: SIO_TI=0;
;	assignBit
	jbc	_SIO_TI,00142$
	sjmp	00104$
00142$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:67: SIO_SBUF='\r';
	mov	_SIO_SBUF,#0x0d
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:69: while (!SIO_TI);
00109$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:70: SIO_TI=0;
;	assignBit
	jbc	_SIO_TI,00143$
	sjmp	00109$
00143$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:71: SIO_SBUF=c;
	mov	_SIO_SBUF,r7
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:74: char getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:78: if((!SIO_SM0)&&(!SIO_SM1)) inituart(0xff);
	jb	_SIO_SM0,00104$
	jb	_SIO_SM1,00104$
	mov	dpl,#0xff
	lcall	_inituart
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:80: while (!SIO_RI);
00104$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:81: SIO_RI=0;
;	assignBit
	jbc	_SIO_RI,00127$
	sjmp	00104$
00127$:
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:82: c=SIO_SBUF;
	mov	dpl,_SIO_SBUF
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:83: return c;
;	D:/Tools/SDCC/bin/../include/mcs51/serial_IO.h:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 's_printf'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	main.c:23: void s_printf(char *str) {
;	-----------------------------------------
;	 function s_printf
;	-----------------------------------------
_s_printf:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:24: while (*str)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main.c:25: putchar(*str++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	main.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us_count                  Allocated to registers 
;------------------------------------------------------------
;	main.c:28: void delay_us(uint16_t us_count) {
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r6,dpl
	mov	r7,dph
;	main.c:29: while(us_count!=0)
00101$:
	mov	a,r6
	orl	a,r7
	jz	00104$
;	main.c:30: us_count--;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	sjmp	00101$
00104$:
;	main.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms_count                  Allocated to registers 
;------------------------------------------------------------
;	main.c:33: void delay_ms(uint16_t ms_count) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	main.c:34: while(ms_count!=0) {
00101$:
	mov	a,r6
	orl	a,r7
	jz	00104$
;	main.c:35: delay_us(112);
	mov	dptr,#0x0070
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	main.c:36: ms_count--;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	sjmp	00101$
00104$:
;	main.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_sec'
;------------------------------------------------------------
;sec_count                 Allocated to registers 
;------------------------------------------------------------
;	main.c:40: void delay_sec(unsigned char sec_count) {
;	-----------------------------------------
;	 function delay_sec
;	-----------------------------------------
_delay_sec:
	mov	r7,dpl
;	main.c:41: while(sec_count!=0) {
00101$:
	mov	a,r7
	jz	00104$
;	main.c:42: delay_ms(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	main.c:43: sec_count--;
	dec	r7
	sjmp	00101$
00104$:
;	main.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cmd_handler'
;------------------------------------------------------------
;cmd_buff                  Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;cmd                       Allocated with name '_cmd_handler_cmd_65536_63'
;------------------------------------------------------------
;	main.c:47: int8_t cmd_handler(char *cmd_buff) {
;	-----------------------------------------
;	 function cmd_handler
;	-----------------------------------------
_cmd_handler:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:51: cmd = strtok(cmd_buff, CMD_DELIMITER);
	mov	_strtok_PARM_2,#___str_0
	mov	(_strtok_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_strtok_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strtok
	mov	_cmd_handler_cmd_65536_63,dpl
	mov	(_cmd_handler_cmd_65536_63 + 1),dph
	mov	(_cmd_handler_cmd_65536_63 + 2),b
;	main.c:52: for (i = 0; i < (sizeof(cmd_list) / sizeof(cmd_list[0])) 
	mov	r4,#0x00
00106$:
;	main.c:53: && cmd != NULL; i++) {
	cjne	r4,#0x0f,00126$
00126$:
	jc	00127$
	ljmp	00103$
00127$:
	mov	a,_cmd_handler_cmd_65536_63
	orl	a,(_cmd_handler_cmd_65536_63 + 1)
	jnz	00128$
	ljmp	00103$
00128$:
;	main.c:55: if (strcmp(cmd_list[i].name, cmd) == 0)
	mov	a,r4
	mov	b,#0x05
	mul	ab
	mov	r2,a
	mov	r3,b
	add	a,#_cmd_list
	mov	dpl,a
	mov	a,r3
	addc	a,#(_cmd_list >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_strcmp_PARM_2,_cmd_handler_cmd_65536_63
	mov	(_strcmp_PARM_2 + 1),(_cmd_handler_cmd_65536_63 + 1)
	mov	(_strcmp_PARM_2 + 2),(_cmd_handler_cmd_65536_63 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	orl	a,b
	jnz	00107$
;	main.c:56: return (int8_t) cmd_list[i].run(strtok(NULL, CMD_DELIMITER)); // запускаем целевую функцию и отдаем ей аргументы команды
	mov	a,r2
	add	a,#_cmd_list
	mov	r2,a
	mov	a,r3
	addc	a,#(_cmd_list >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_strtok_PARM_2,#___str_0
	mov	(_strtok_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_strtok_PARM_2 + 2),#0x80
	mov	dptr,#0x0000
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strtok
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	lcall	00130$
	sjmp	00131$
00130$:
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	ret
00131$:
	pop	ar6
	pop	ar7
	ret
00107$:
;	main.c:53: && cmd != NULL; i++) {
	inc	r4
	ljmp	00106$
00103$:
;	main.c:59: return CMD_GEN_ERROR;
	mov	dpl,#0xff
;	main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:62: void setup() {
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:63: inituart(0xff);
	mov	dpl,#0xff
	lcall	_inituart
;	main.c:69: P0_0, P0_1, P0_2, P0_3, P0_4, P0_5, P0_6, P0_7 = 0x00; // пины как OUTPUT
;	assignBit
	clr	_P0_7
;	main.c:70: P3_2, P3_4, P3_5, P3_6, P3_7 = 0x00;                   // ^
;	assignBit
	clr	_P3_7
;	main.c:72: P0 = 0x00; // LOW на все порты
	mov	_P0,#0x00
;	main.c:73: P3 &= ~((1 << 2) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7));
	anl	_P3,#0x0b
;	main.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:76: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:77: setup();
	lcall	_setup
;	main.c:79: s_printf("Toggle PIN v0.1 alpha by Yury Martynov (email@linxon.ru)\n\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_s_printf
;	main.c:80: s_printf("Наберите 'shell', чтобы перейти в режим управления\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_s_printf
00126$:
;	main.c:82: if (SIO_RI) {  // если у нас есть новые данные в RX, то...
	jnb	_SIO_RI,00126$
;	main.c:83: g_char = getchar();
	lcall	_getchar
	mov	_g_char,dpl
;	main.c:84: SIO_RI = 0;  // сбрасываем RX флаг как написано по документации
;	assignBit
	clr	_SIO_RI
;	main.c:86: putchar(g_char);
	mov	dpl,_g_char
	lcall	_putchar
;	main.c:88: if ((g_char == 0x0d) || (g_char == 0x0a)) {
	mov	a,#0x0d
	cjne	a,_g_char,00174$
	sjmp	00118$
00174$:
	mov	a,#0x0a
	cjne	a,_g_char,00175$
	sjmp	00176$
00175$:
	ljmp	00119$
00176$:
00118$:
;	main.c:89: putchar(0xd);  // CR (винда!!)
	mov	dpl,#0x0d
	lcall	_putchar
;	main.c:90: putchar(0xa);  // LF
	mov	dpl,#0x0a
	lcall	_putchar
;	main.c:92: cmd_buff[cmd_index] = 0;
	mov	a,_cmd_index
	add	a,#_cmd_buff
	mov	r0,a
	mov	@r0,#0x00
;	main.c:93: cmd_index = 0;
	mov	_cmd_index,#0x00
;	main.c:95: cmd_res = cmd_handler(cmd_buff);
	mov	dptr,#_cmd_buff
	mov	b,#0x40
	lcall	_cmd_handler
;	main.c:97: if (cmd_res == CMD_ERROR)
	mov	a,dpl
	mov	_cmd_res,a
	jnz	00102$
;	main.c:98: s_printf("Команда сообщила об ошибке!");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_s_printf
00102$:
;	main.c:100: if (strcmp(cmd_buff, "shell") == 0 && SHELL_STATE == LOW) {
	mov	_strcmp_PARM_2,#___str_4
	mov	(_strcmp_PARM_2 + 1),#(___str_4 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dptr,#_cmd_buff
	mov	b,#0x40
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
	mov	a,_SHELL_STATE
	jnz	00104$
;	main.c:101: SHELL_STATE = HIGH;
	mov	_SHELL_STATE,#0x01
;	main.c:102: s_printf("Вы сейчас в 'shell' режме. Введите 'help', чтобы увидеть список команд\n");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_s_printf
00104$:
;	main.c:105: if (SHELL_STATE) {
	mov	a,_SHELL_STATE
	jnz	00180$
	ljmp	00126$
00180$:
;	main.c:106: if (strcmp(cmd_buff, "help") == 0) {
	mov	_strcmp_PARM_2,#___str_6
	mov	(_strcmp_PARM_2 + 1),#(___str_6 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dptr,#_cmd_buff
	mov	b,#0x40
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:107: s_printf("  help - показать справку\n");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_s_printf
;	main.c:108: s_printf("  exit - выйти из оболочки\n");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_s_printf
	sjmp	00110$
00109$:
;	main.c:109: } else if (strcmp(cmd_buff, "exit") == 0) {
	mov	_strcmp_PARM_2,#___str_9
	mov	(_strcmp_PARM_2 + 1),#(___str_9 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dptr,#_cmd_buff
	mov	b,#0x40
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
;	main.c:110: SHELL_STATE = LOW;
	jnz	00110$
	mov	_SHELL_STATE,a
;	main.c:111: continue;
	ljmp	00126$
00110$:
;	main.c:114: s_printf(CMD_PROMT_CHAR);
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_s_printf
	ljmp	00126$
00119$:
;	main.c:116: } else if (g_char == 0x7f) { // клавиша "Delete"
	mov	a,#0x7f
	cjne	a,_g_char,00116$
;	main.c:117: --cmd_index;
	dec	_cmd_index
	ljmp	00126$
00116$:
;	main.c:119: cmd_buff[cmd_index] = g_char;
	mov	a,_cmd_index
	add	a,#_cmd_buff
	mov	r0,a
	mov	@r0,_g_char
;	main.c:120: if (cmd_index < (MAX_CMD_LINE_BUFF + 1))
	mov	a,#0x100 - 0x51
	add	a,_cmd_index
	jnc	00185$
	ljmp	00126$
00185$:
;	main.c:121: ++cmd_index;
	inc	_cmd_index
;	main.c:125: }
	ljmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:127: int8_t at_p0(char *args) {
;	-----------------------------------------
;	 function at_p0
;	-----------------------------------------
_at_p0:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:128: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:129: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:130: P0 = 0xFF;
	mov	_P0,#0xff
00102$:
;	main.c:131: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
;	main.c:132: P0 = 0x00;
	jnz	00109$
	mov	_P0,a
	sjmp	00109$
00108$:
;	main.c:134: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:135: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:138: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p3'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:141: int8_t at_p3(char *args) {
;	-----------------------------------------
;	 function at_p3
;	-----------------------------------------
_at_p3:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:142: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:143: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:144: P3 |= (1 << 2) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7);
	orl	_P3,#0xf4
00102$:
;	main.c:145: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:146: P3 &= ~((1 << 2) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7));
	anl	_P3,#0x0b
	sjmp	00109$
00108$:
;	main.c:148: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:149: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:152: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_0'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:155: int8_t at_p0_0(char *args) {
;	-----------------------------------------
;	 function at_p0_0
;	-----------------------------------------
_at_p0_0:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:156: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:157: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:158: P0 |= (1 << 0);
	orl	_P0,#0x01
00102$:
;	main.c:159: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:160: P0 &= ~(1 << 0);
	anl	_P0,#0xfe
	sjmp	00109$
00108$:
;	main.c:162: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:163: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:166: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_1'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:169: int8_t at_p0_1(char *args) {
;	-----------------------------------------
;	 function at_p0_1
;	-----------------------------------------
_at_p0_1:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:170: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:171: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:172: P0 |= (1 << 1);
	orl	_P0,#0x02
00102$:
;	main.c:173: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:174: P0 &= ~(1 << 1);
	anl	_P0,#0xfd
	sjmp	00109$
00108$:
;	main.c:176: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:177: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:180: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:181: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_2'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:183: int8_t at_p0_2(char *args) {
;	-----------------------------------------
;	 function at_p0_2
;	-----------------------------------------
_at_p0_2:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:184: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:185: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:186: P0 |= (1 << 2);
	orl	_P0,#0x04
00102$:
;	main.c:187: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:188: P0 &= ~(1 << 2);
	anl	_P0,#0xfb
	sjmp	00109$
00108$:
;	main.c:190: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:191: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:194: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:195: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_3'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:197: int8_t at_p0_3(char *args) {
;	-----------------------------------------
;	 function at_p0_3
;	-----------------------------------------
_at_p0_3:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:198: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:199: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:200: P0 |= (1 << 3);
	orl	_P0,#0x08
00102$:
;	main.c:201: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:202: P0 &= ~(1 << 3);
	anl	_P0,#0xf7
	sjmp	00109$
00108$:
;	main.c:204: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:205: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:208: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_4'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:211: int8_t at_p0_4(char *args) {
;	-----------------------------------------
;	 function at_p0_4
;	-----------------------------------------
_at_p0_4:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:212: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:213: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:214: P0 |= (1 << 4);
	orl	_P0,#0x10
00102$:
;	main.c:215: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:216: P0 &= ~(1 << 4);
	anl	_P0,#0xef
	sjmp	00109$
00108$:
;	main.c:218: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:219: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:222: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_5'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:225: int8_t at_p0_5(char *args) {
;	-----------------------------------------
;	 function at_p0_5
;	-----------------------------------------
_at_p0_5:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:226: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:227: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:228: P0 |= (1 << 5);
	orl	_P0,#0x20
00102$:
;	main.c:229: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:230: P0 &= ~(1 << 5);
	anl	_P0,#0xdf
	sjmp	00109$
00108$:
;	main.c:232: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:233: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:236: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:237: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_6'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:239: int8_t at_p0_6(char *args) {
;	-----------------------------------------
;	 function at_p0_6
;	-----------------------------------------
_at_p0_6:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:240: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:241: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:242: P0 |= (1 << 6);
	orl	_P0,#0x40
00102$:
;	main.c:243: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:244: P0 &= ~(1 << 6);
	anl	_P0,#0xbf
	sjmp	00109$
00108$:
;	main.c:246: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:247: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:250: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p0_7'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:253: int8_t at_p0_7(char *args) {
;	-----------------------------------------
;	 function at_p0_7
;	-----------------------------------------
_at_p0_7:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:254: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:255: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:256: P0 |= (1 << 7);
	orl	_P0,#0x80
00102$:
;	main.c:257: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:258: P0 &= ~(1 << 7);
	anl	_P0,#0x7f
	sjmp	00109$
00108$:
;	main.c:260: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:261: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:264: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:265: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p3_2'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:267: int8_t at_p3_2(char *args) {
;	-----------------------------------------
;	 function at_p3_2
;	-----------------------------------------
_at_p3_2:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:268: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:269: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:270: P3 |= (1 << 2);
	orl	_P3,#0x04
00102$:
;	main.c:271: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:272: P3 &= ~(1 << 2);
	anl	_P3,#0xfb
	sjmp	00109$
00108$:
;	main.c:274: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:275: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:278: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:279: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p3_4'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:281: int8_t at_p3_4(char *args) {
;	-----------------------------------------
;	 function at_p3_4
;	-----------------------------------------
_at_p3_4:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:282: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:283: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:284: P3 |= (1 << 4);
	orl	_P3,#0x10
00102$:
;	main.c:285: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:286: P3 &= ~(1 << 4);
	anl	_P3,#0xef
	sjmp	00109$
00108$:
;	main.c:288: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:289: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:292: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:293: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p3_5'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:295: int8_t at_p3_5(char *args) {
;	-----------------------------------------
;	 function at_p3_5
;	-----------------------------------------
_at_p3_5:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:296: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:297: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:298: P3 |= (1 << 5);
	orl	_P3,#0x20
00102$:
;	main.c:299: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:300: P3 &= ~(1 << 5);
	anl	_P3,#0xdf
	sjmp	00109$
00108$:
;	main.c:302: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:303: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:306: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:307: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p3_6'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:309: int8_t at_p3_6(char *args) {
;	-----------------------------------------
;	 function at_p3_6
;	-----------------------------------------
_at_p3_6:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:310: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:311: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:312: P3 |= (1 << 6);
	orl	_P3,#0x40
00102$:
;	main.c:313: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:314: P3 &= ~(1 << 6);
	anl	_P3,#0xbf
	sjmp	00109$
00108$:
;	main.c:316: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:317: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:320: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:321: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_p3_7'
;------------------------------------------------------------
;args                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:323: int8_t at_p3_7(char *args) {
;	-----------------------------------------
;	 function at_p3_7
;	-----------------------------------------
_at_p3_7:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:324: if (args != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00108$
;	main.c:325: if (strcmp(args, "HIGH") == 0)
	mov	_strcmp_PARM_2,#___str_11
	mov	(_strcmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	main.c:326: P3 |= (1 << 7);
	orl	_P3,#0x80
00102$:
;	main.c:327: if (strcmp(args, "LOW") == 0)
	mov	_strcmp_PARM_2,#___str_12
	mov	(_strcmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strcmp_PARM_2 + 2),#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	main.c:328: P3 &= ~(1 << 7);
	anl	_P3,#0x7f
	sjmp	00109$
00108$:
;	main.c:330: if (SHELL_STATE)
	mov	a,_SHELL_STATE
	jz	00109$
;	main.c:331: return CMD_ERROR;
	mov	dpl,#0x00
	ret
00109$:
;	main.c:334: return CMD_SUCCESS;
	mov	dpl,#0x01
;	main.c:335: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_cmd_list:
	.byte __str_13, (__str_13 >> 8),#0x80
	.byte _at_p0, (_at_p0 >> 8)
	.byte __str_14, (__str_14 >> 8),#0x80
	.byte _at_p3, (_at_p3 >> 8)
	.byte __str_15, (__str_15 >> 8),#0x80
	.byte _at_p0_0, (_at_p0_0 >> 8)
	.byte __str_16, (__str_16 >> 8),#0x80
	.byte _at_p0_1, (_at_p0_1 >> 8)
	.byte __str_17, (__str_17 >> 8),#0x80
	.byte _at_p0_2, (_at_p0_2 >> 8)
	.byte __str_18, (__str_18 >> 8),#0x80
	.byte _at_p0_3, (_at_p0_3 >> 8)
	.byte __str_19, (__str_19 >> 8),#0x80
	.byte _at_p0_4, (_at_p0_4 >> 8)
	.byte __str_20, (__str_20 >> 8),#0x80
	.byte _at_p0_5, (_at_p0_5 >> 8)
	.byte __str_21, (__str_21 >> 8),#0x80
	.byte _at_p0_6, (_at_p0_6 >> 8)
	.byte __str_22, (__str_22 >> 8),#0x80
	.byte _at_p0_7, (_at_p0_7 >> 8)
	.byte __str_23, (__str_23 >> 8),#0x80
	.byte _at_p3_2, (_at_p3_2 >> 8)
	.byte __str_24, (__str_24 >> 8),#0x80
	.byte _at_p3_4, (_at_p3_4 >> 8)
	.byte __str_25, (__str_25 >> 8),#0x80
	.byte _at_p3_5, (_at_p3_5 >> 8)
	.byte __str_26, (__str_26 >> 8),#0x80
	.byte _at_p3_6, (_at_p3_6 >> 8)
	.byte __str_27, (__str_27 >> 8),#0x80
	.byte _at_p3_7, (_at_p3_7 >> 8)
	.area CONST   (CODE)
___str_0:
	.ascii "="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Toggle PIN v0.1 alpha by Yury Martynov (email@linxon.ru)"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0xd0
	.db 0x9d
	.db 0xd0
	.db 0xb0
	.db 0xd0
	.db 0xb1
	.db 0xd0
	.db 0xb5
	.db 0xd1
	.db 0x80
	.db 0xd0
	.db 0xb8
	.db 0xd1
	.db 0x82
	.db 0xd0
	.db 0xb5
	.ascii " 'shell', "
	.db 0xd1
	.db 0x87
	.db 0xd1
	.db 0x82
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xb1
	.db 0xd1
	.db 0x8b
	.ascii " "
	.db 0xd0
	.db 0xbf
	.db 0xd0
	.db 0xb5
	.db 0xd1
	.db 0x80
	.db 0xd0
	.db 0xb5
	.db 0xd0
	.db 0xb9
	.db 0xd1
	.db 0x82
	.db 0xd0
	.db 0xb8
	.ascii " "
	.db 0xd0
	.db 0xb2
	.ascii " "
	.db 0xd1
	.db 0x80
	.db 0xd0
	.db 0xb5
	.db 0xd0
	.db 0xb6
	.db 0xd0
	.db 0xb8
	.db 0xd0
	.db 0xbc
	.ascii " "
	.db 0xd1
	.db 0x83
	.db 0xd0
	.db 0xbf
	.db 0xd1
	.db 0x80
	.db 0xd0
	.db 0xb0
	.db 0xd0
	.db 0xb2
	.db 0xd0
	.db 0xbb
	.db 0xd0
	.db 0xb5
	.db 0xd0
	.db 0xbd
	.db 0xd0
	.db 0xb8
	.db 0xd1
	.db 0x8f
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0xd0
	.db 0x9a
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xbc
	.db 0xd0
	.db 0xb0
	.db 0xd0
	.db 0xbd
	.db 0xd0
	.db 0xb4
	.db 0xd0
	.db 0xb0
	.ascii " "
	.db 0xd1
	.db 0x81
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xb1
	.db 0xd1
	.db 0x89
	.db 0xd0
	.db 0xb8
	.db 0xd0
	.db 0xbb
	.db 0xd0
	.db 0xb0
	.ascii " "
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xb1
	.ascii " "
	.db 0xd0
	.db 0xbe
	.db 0xd1
	.db 0x88
	.db 0xd0
	.db 0xb8
	.db 0xd0
	.db 0xb1
	.db 0xd0
	.db 0xba
	.db 0xd0
	.db 0xb5
	.ascii "!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "shell"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0xd0
	.db 0x92
	.db 0xd1
	.db 0x8b
	.ascii " "
	.db 0xd1
	.db 0x81
	.db 0xd0
	.db 0xb5
	.db 0xd0
	.db 0xb9
	.db 0xd1
	.db 0x87
	.db 0xd0
	.db 0xb0
	.db 0xd1
	.db 0x81
	.ascii " "
	.db 0xd0
	.db 0xb2
	.ascii " 'shell' "
	.db 0xd1
	.db 0x80
	.db 0xd0
	.db 0xb5
	.db 0xd0
	.db 0xb6
	.db 0xd0
	.db 0xbc
	.db 0xd0
	.db 0xb5
	.ascii ". "
	.db 0xd0
	.db 0x92
	.db 0xd0
	.db 0xb2
	.db 0xd0
	.db 0xb5
	.db 0xd0
	.db 0xb4
	.db 0xd0
	.db 0xb8
	.db 0xd1
	.db 0x82
	.db 0xd0
	.db 0xb5
	.ascii " 'help', "
	.db 0xd1
	.db 0x87
	.db 0xd1
	.db 0x82
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xb1
	.db 0xd1
	.db 0x8b
	.ascii " "
	.db 0xd1
	.db 0x83
	.db 0xd0
	.db 0xb2
	.db 0xd0
	.db 0xb8
	.db 0xd0
	.db 0xb4
	.db 0xd0
	.db 0xb5
	.db 0xd1
	.db 0x82
	.db 0xd1
	.db 0x8c
	.ascii " "
	.db 0xd1
	.db 0x81
	.db 0xd0
	.db 0xbf
	.db 0xd0
	.db 0xb8
	.db 0xd1
	.db 0x81
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xba
	.ascii " "
	.db 0xd0
	.db 0xba
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xbc
	.db 0xd0
	.db 0xb0
	.db 0xd0
	.db 0xbd
	.db 0xd0
	.db 0xb4
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "help"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "  help - "
	.db 0xd0
	.db 0xbf
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xba
	.db 0xd0
	.db 0xb0
	.db 0xd0
	.db 0xb7
	.db 0xd0
	.db 0xb0
	.db 0xd1
	.db 0x82
	.db 0xd1
	.db 0x8c
	.ascii " "
	.db 0xd1
	.db 0x81
	.db 0xd0
	.db 0xbf
	.db 0xd1
	.db 0x80
	.db 0xd0
	.db 0xb0
	.db 0xd0
	.db 0xb2
	.db 0xd0
	.db 0xba
	.db 0xd1
	.db 0x83
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "  exit - "
	.db 0xd0
	.db 0xb2
	.db 0xd1
	.db 0x8b
	.db 0xd0
	.db 0xb9
	.db 0xd1
	.db 0x82
	.db 0xd0
	.db 0xb8
	.ascii " "
	.db 0xd0
	.db 0xb8
	.db 0xd0
	.db 0xb7
	.ascii " "
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xb1
	.db 0xd0
	.db 0xbe
	.db 0xd0
	.db 0xbb
	.db 0xd0
	.db 0xbe
	.db 0xd1
	.db 0x87
	.db 0xd0
	.db 0xba
	.db 0xd0
	.db 0xb8
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "exit"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "> "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "HIGH"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "LOW"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_13:
	.ascii "AT+P0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_14:
	.ascii "AT+P3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_15:
	.ascii "AT+P0.0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_16:
	.ascii "AT+P0.1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_17:
	.ascii "AT+P0.2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_18:
	.ascii "AT+P0.3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_19:
	.ascii "AT+P0.4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_20:
	.ascii "AT+P0.5"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_21:
	.ascii "AT+P0.6"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_22:
	.ascii "AT+P0.7"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_23:
	.ascii "AT+P3.2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_24:
	.ascii "AT+P3.4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_25:
	.ascii "AT+P3.5"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_26:
	.ascii "AT+P3.6"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_27:
	.ascii "AT+P3.7"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
