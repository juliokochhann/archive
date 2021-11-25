;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.20
;// License Type  : Lite License (Unregistered)
;// Limitations   : PIC12,PIC16 max code size:2048 words, max RAM banks:2, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F870.inc"
; Heap block 0, size:52 (0x0000004B - 0x0000007E)
__HEAP_BLOCK0_BANK               EQU	0x00000000
__HEAP_BLOCK0_START_OFFSET       EQU	0x0000004B
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007E
; Heap block 1, size:32 (0x000000A0 - 0x000000BF)
__HEAP_BLOCK1_BANK               EQU	0x00000001
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000003F
; Heap block 2, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK2_END_OFFSET         EQU	0x00000000
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
__mul_8_8__00005_arg_a           EQU	0x0000002E ; bytes:1
__mul_8_8__00005_arg_b           EQU	0x0000002F ; bytes:1
CompTempVarRet373                EQU	0x00000031 ; bytes:1
__mul_8_8__00005_1_i             EQU	0x00000030 ; bytes:1
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_writeDelayType               EQU	0x00000023 ; bytes:1
gbl_contador                     EQU	0x00000024 ; bytes:1
gbl_delay                        EQU	0x00000025 ; bytes:1
gbl_segundo                      EQU	0x00000026 ; bytes:1
gbl_estado                       EQU	0x00000027 ; bytes:1
gbl_controle                     EQU	0x00000028 ; bytes:1
gbl_stop                         EQU	0x00000029 ; bytes:1
gbl_pause                        EQU	0x0000002A ; bytes:1
gbl_cor                          EQU	0x0000002B ; bytes:1
gbl_efeito                       EQU	0x0000002C ; bytes:1
gbl_lamp                         EQU	0x0000002D ; bytes:1
CompTempVar545                   EQU	0x0000002E ; bytes:1
CompTempVar546                   EQU	0x0000002E ; bytes:1
CompTempVar547                   EQU	0x0000002E ; bytes:1
CompTempVar548                   EQU	0x0000002E ; bytes:1
CompTempVar549                   EQU	0x0000002E ; bytes:1
CompTempVar550                   EQU	0x0000002E ; bytes:1
CompTempVar551                   EQU	0x0000002E ; bytes:1
CompTempVar552                   EQU	0x0000002E ; bytes:1
CompTempVar553                   EQU	0x0000002E ; bytes:1
CompTempVar556                   EQU	0x0000002E ; bytes:1
CompTempVar559                   EQU	0x0000002E ; bytes:1
CompTempVar562                   EQU	0x0000002E ; bytes:1
CompTempVar563                   EQU	0x00000030 ; bytes:7
CompTempVar565                   EQU	0x00000030 ; bytes:21
CompTempVar567                   EQU	0x00000030 ; bytes:21
CompTempVar569                   EQU	0x00000030 ; bytes:6
CompTempVar571                   EQU	0x00000030 ; bytes:12
CompTempVar573                   EQU	0x00000030 ; bytes:21
CompTempVar575                   EQU	0x00000030 ; bytes:21
CompTempVar577                   EQU	0x00000030 ; bytes:13
CompTempVar579                   EQU	0x00000030 ; bytes:6
CompTempVar581                   EQU	0x00000030 ; bytes:14
CompTempVar583                   EQU	0x00000030 ; bytes:10
CompTempVar585                   EQU	0x00000030 ; bytes:14
CompTempVar587                   EQU	0x00000030 ; bytes:14
CompTempVar589                   EQU	0x00000030 ; bytes:11
CompTempVar591                   EQU	0x00000030 ; bytes:11
CompTempVar593                   EQU	0x00000030 ; bytes:11
CompTempVar597                   EQU	0x00000030 ; bytes:16
CompTempVar599                   EQU	0x00000030 ; bytes:16
CompTempVar601                   EQU	0x00000030 ; bytes:16
CompTempVar603                   EQU	0x00000030 ; bytes:16
CompTempVar605                   EQU	0x00000030 ; bytes:16
CompTempVar607                   EQU	0x00000030 ; bytes:16
CompTempVar609                   EQU	0x00000030 ; bytes:12
CompTempVar611                   EQU	0x00000030 ; bytes:12
CompTempVar613                   EQU	0x0000002E ; bytes:1
CompTempVar614                   EQU	0x00000030 ; bytes:12
CompTempVar616                   EQU	0x00000030 ; bytes:12
CompTempVar618                   EQU	0x00000030 ; bytes:12
LCD_Setup_00000_1_trisRS         EQU	0x00000087 ; bit:4
LCD_Setup_00000_1_trisRW         EQU	0x00000087 ; bit:5
LCD_Setup_00000_1_trisE          EQU	0x00000087 ; bit:6
LCD_Setup_00000_11_rs            EQU	0x00000007 ; bit:4
LCD_Setup_00000_30_rs            EQU	0x00000007 ; bit:4
LCD_Setup_00000_30_old_RS        EQU	0x0000002E ; bit:0
CompTempVarRet620                EQU	0x0000004A ; bytes:1
LCD_Setup_00000_39_rs            EQU	0x00000007 ; bit:4
LCD_Setup_00000_39_old_RS        EQU	0x0000002E ; bit:0
LCD_RawWri_00013_arg_d           EQU	0x0000002E ; bytes:1
LCD_RawWri_00013_1_data          EQU	0x00000007 ; bytes:1
LCD_RawWri_00013_1_tris          EQU	0x00000087 ; bytes:1
LCD_RawWri_00013_1_rw            EQU	0x00000007 ; bit:5
LCD_RawWri_00013_1_e             EQU	0x00000007 ; bit:6
LCD_Read_00000_1_d               EQU	0x00000049 ; bytes:1
LCD_Read_00000_1_data            EQU	0x00000007 ; bytes:1
LCD_Read_00000_1_tris            EQU	0x00000087 ; bytes:1
LCD_Read_00000_1_rw              EQU	0x00000007 ; bit:5
LCD_Read_00000_1_e               EQU	0x00000007 ; bit:6
LCD_Write_00000_arg_d            EQU	0x00000047 ; bytes:1
LCD_Write_00000_1_rs             EQU	0x00000007 ; bit:4
LCD_Write_00000_5_rs             EQU	0x00000007 ; bit:4
LCD_Write_00000_5_old_RS         EQU	0x00000048 ; bit:0
LCD_RawWri_00014_arg_d           EQU	0x00000048 ; bytes:1
LCD_RawWri_00014_1_tris          EQU	0x00000087 ; bytes:1
LCD_RawWri_00014_1_data          EQU	0x00000007 ; bytes:1
LCD_RawWri_00014_1_rw            EQU	0x00000007 ; bit:5
LCD_RawWri_00014_1_e             EQU	0x00000007 ; bit:6
LCD_RawWri_00014_2_flag          EQU	0x00000049 ; bit:0
LCD_RawWri_00014_5_d             EQU	0x0000004A ; bytes:1
LCD_RawWri_00014_7_data          EQU	0x00000007 ; bytes:1
LCD_RawWri_00014_7_tris          EQU	0x00000087 ; bytes:1
LCD_RawWri_00014_7_rw            EQU	0x00000007 ; bit:5
LCD_RawWri_00014_7_e             EQU	0x00000007 ; bit:6
CompTempVar621                   EQU	0x0000004A ; bytes:1
LCD_Clear_00000_4_rs             EQU	0x00000007 ; bit:4
LCD_GotoXy_00000_arg_x           EQU	0x0000002E ; bytes:1
LCD_GotoXy_00000_arg_y           EQU	0x0000002F ; bytes:1
LCD_GotoXy_00000_1_offset        EQU	0x00000030 ; bytes:1
LCD_GotoXy_00000_4_rs            EQU	0x00000007 ; bit:4
LCD_Printf_00000_arg_lcdptr      EQU	0x0000002E ; bytes:2
LCD_Printf_00000_1_pi            EQU	0x00000045 ; bytes:1
LCD_Printf_00000_1_c             EQU	0x00000046 ; bytes:1
LCD_Printf_00000_4_rs            EQU	0x00000007 ; bit:4
CompTempVar596                   EQU	0x00000047 ; bytes:1
LCD_Printf_00000_10_rs           EQU	0x00000007 ; bit:4
LCD_Printf_00000_16_rs           EQU	0x00000007 ; bit:4
delay_10us_00000_arg_del         EQU	0x0000002E ; bytes:1
delay_ms_00000_arg_del           EQU	0x0000002E ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000020 ; bytes:3
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVWF Int1Context
	SWAPF STATUS, W
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF Int1BContext
	SWAPF PCLATH, W
	MOVWF Int1BContext+D'1'
	SWAPF FSR, W
	MOVWF Int1BContext+D'2'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	interrupt
	ORG 0x00000010
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label1
	RETURN
label1
	MOVLW 0xF9
label2
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label2
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_ms function end

	ORG 0x0000001C
delay_10us_00000
; { delay_10us ; function begin
label3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_10us_00000_arg_del, F
	GOTO	label3
	RETURN
; } delay_10us function end

	ORG 0x00000026
LCD_Read_00000
; { LCD_Read ; function begin
	MOVLW 0x0F
	BSF STATUS, RP0
	BCF STATUS, RP1
	IORWF LCD_Read_00000_1_tris, F
	BCF STATUS, RP0
	BSF LCD_Read_00000_1_rw,5
	NOP
	NOP
	BSF LCD_Read_00000_1_e,6
	NOP
	NOP
	NOP
	NOP
	NOP
	SWAPF LCD_Read_00000_1_data, W
	ANDLW 0xF0
	MOVWF LCD_Read_00000_1_d
	BCF LCD_Read_00000_1_e,6
	NOP
	NOP
	NOP
	NOP
	NOP
	BSF LCD_Read_00000_1_e,6
	NOP
	NOP
	NOP
	NOP
	NOP
	MOVLW 0x0F
	ANDWF LCD_Read_00000_1_data, W
	IORWF LCD_Read_00000_1_d, F
	BCF LCD_Read_00000_1_e,6
	NOP
	NOP
	NOP
	MOVF LCD_Read_00000_1_d, W
	MOVWF CompTempVarRet620
	RETURN
; } LCD_Read function end

	ORG 0x0000004D
LCD_RawWri_00014
; { LCD_RawWrite ; function begin
	BCF LCD_RawWri_00014_2_flag,0
label4
	MOVF LCD_RawWri_00014_arg_d, W
	MOVWF LCD_RawWri_00014_5_d
	BCF LCD_RawWri_00014_7_rw,5
	NOP
	NOP
	MOVLW 0xF0
	BSF STATUS, RP0
	ANDWF LCD_RawWri_00014_7_tris, F
	MOVLW 0xF0
	BCF STATUS, RP0
	ANDWF LCD_RawWri_00014_7_data, F
	SWAPF LCD_RawWri_00014_5_d, W
	ANDLW 0x0F
	IORWF LCD_RawWri_00014_7_data, F
	BSF LCD_RawWri_00014_7_e,6
	NOP
	NOP
	NOP
	NOP
	NOP
	BCF LCD_RawWri_00014_7_e,6
	NOP
	NOP
	NOP
	CLRF CompTempVar621
	BTFSS LCD_RawWri_00014_2_flag,0
	INCF CompTempVar621, F
	BCF LCD_RawWri_00014_2_flag,0
	BTFSC CompTempVar621,0
	BSF LCD_RawWri_00014_2_flag,0
	SWAPF LCD_RawWri_00014_arg_d, F
	MOVLW 0xF0
	ANDWF LCD_RawWri_00014_arg_d, F
	BTFSC LCD_RawWri_00014_2_flag,0
	GOTO	label4
	RETURN
; } LCD_RawWrite function end

	ORG 0x00000072
LCD_Write_00000
; { LCD_Write ; function begin
	MOVF gbl_writeDelayType, F
	BTFSS STATUS,Z
	GOTO	label7
	BCF LCD_Write_00000_5_old_RS,0
	BTFSS LCD_Write_00000_5_rs,4
	GOTO	label5
	BSF LCD_Write_00000_5_old_RS,0
label5
	BCF LCD_Write_00000_5_rs,4
label6
	CALL LCD_Read_00000
	BTFSC CompTempVarRet620,7
	GOTO	label6
	BTFSC LCD_Write_00000_5_old_RS,0
	BSF LCD_Write_00000_5_rs,4
	BTFSS LCD_Write_00000_5_old_RS,0
	BCF LCD_Write_00000_5_rs,4
label7
	MOVF LCD_Write_00000_arg_d, W
	MOVWF LCD_RawWri_00014_arg_d
	CALL LCD_RawWri_00014
	RETURN
; } LCD_Write function end

	ORG 0x00000085
__mul_8_8__00005
; { __mul_8_8__8 ; function begin
	CLRF __mul_8_8__00005_1_i
	CLRF CompTempVarRet373
label8
	BTFSC __mul_8_8__00005_1_i,3
	RETURN
	BTFSS __mul_8_8__00005_arg_b,0
	GOTO	label9
	MOVF __mul_8_8__00005_arg_a, W
	ADDWF CompTempVarRet373, F
label9
	RRF __mul_8_8__00005_arg_b, F
	BCF gbl_status,0
	RLF __mul_8_8__00005_arg_a, F
	INCF __mul_8_8__00005_1_i, F
	GOTO	label8
; } __mul_8_8__8 function end

	ORG 0x00000092
LCD_RawWri_00013
; { LCD_RawWriteNibble ; function begin
	BCF LCD_RawWri_00013_1_rw,5
	NOP
	NOP
	MOVLW 0xF0
	BSF STATUS, RP0
	ANDWF LCD_RawWri_00013_1_tris, F
	MOVLW 0xF0
	BCF STATUS, RP0
	ANDWF LCD_RawWri_00013_1_data, F
	SWAPF LCD_RawWri_00013_arg_d, W
	ANDLW 0x0F
	IORWF LCD_RawWri_00013_1_data, F
	BSF LCD_RawWri_00013_1_e,6
	NOP
	NOP
	NOP
	NOP
	NOP
	BCF LCD_RawWri_00013_1_e,6
	NOP
	NOP
	NOP
	RETURN
; } LCD_RawWriteNibble function end

	ORG 0x000000A9
LCD_Printf_00000
; { LCD_Printf ; function begin
	CLRF LCD_Printf_00000_1_pi
	BSF LCD_Printf_00000_4_rs,4
label10
	BCF STATUS,IRP
	BTFSC LCD_Printf_00000_arg_lcdptr+D'1',0
	BSF STATUS,IRP
	MOVF LCD_Printf_00000_arg_lcdptr, W
	MOVWF FSR
	BCF STATUS,IRP
	BTFSC LCD_Printf_00000_arg_lcdptr+D'1',0
	BSF STATUS,IRP
	MOVF LCD_Printf_00000_arg_lcdptr, W
	MOVWF FSR
	MOVF LCD_Printf_00000_1_pi, W
	MOVWF CompTempVar596
	INCF LCD_Printf_00000_1_pi, F
	MOVF CompTempVar596, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF LCD_Printf_00000_1_c
	MOVF LCD_Printf_00000_1_c, F
	BTFSC STATUS,Z
	RETURN
	MOVF LCD_Printf_00000_1_c, W
	XORLW 0x0A
	BTFSS STATUS,Z
	GOTO	label11
	BCF LCD_Printf_00000_10_rs,4
	MOVLW 0xC0
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	BSF LCD_Printf_00000_16_rs,4
	GOTO	label10
label11
	MOVF LCD_Printf_00000_1_c, W
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	GOTO	label10
; } LCD_Printf function end

	ORG 0x000000CD
LCD_GotoXy_00000
; { LCD_GotoXy ; function begin
	BCF LCD_GotoXy_00000_4_rs,4
	MOVF LCD_GotoXy_00000_arg_x, W
	MOVWF LCD_GotoXy_00000_1_offset
	BTFSS LCD_GotoXy_00000_arg_y,0
	GOTO	label12
	MOVLW 0x40
	ADDWF LCD_GotoXy_00000_1_offset, F
label12
	BTFSS LCD_GotoXy_00000_arg_y,1
	GOTO	label13
	MOVLW 0x14
	ADDWF LCD_GotoXy_00000_1_offset, F
label13
	MOVF LCD_GotoXy_00000_1_offset, W
	ADDLW 0x80
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	RETURN
; } LCD_GotoXy function end

	ORG 0x000000DD
LCD_Clear_00000
; { LCD_Clear ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BCF LCD_Clear_00000_4_rs,4
	MOVLW 0x01
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	MOVLW 0x02
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	RETURN
; } LCD_Clear function end

	ORG 0x000000E7
teste_00000
; { teste ; function begin
	MOVLW 0x01
	BCF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_portb, W
	MOVWF CompTempVar545
	MOVF CompTempVar545, F
	BTFSS STATUS,Z
	GOTO	label14
	MOVF gbl_stop, F
	BTFSS STATUS,Z
	GOTO	label14
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x01
	MOVWF gbl_estado
	MOVWF gbl_stop
label14
	MOVLW 0x01
	ANDWF gbl_portb, W
	MOVWF CompTempVar546
	DECF CompTempVar546, W
	BTFSS STATUS,Z
	GOTO	label15
	DECF gbl_stop, W
	BTFSS STATUS,Z
	GOTO	label15
	MOVLW 0x02
	MOVWF gbl_stop
label15
	MOVLW 0x01
	ANDWF gbl_portb, W
	MOVWF CompTempVar547
	MOVF CompTempVar547, F
	BTFSS STATUS,Z
	GOTO	label16
	MOVF gbl_stop, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label16
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF gbl_controle
	CLRF gbl_estado
	CLRF gbl_efeito
	CLRF gbl_portb
	CLRF gbl_lamp
	CLRF gbl_cor
	MOVLW 0x04
	MOVWF gbl_stop
label16
	MOVLW 0x01
	ANDWF gbl_portb, W
	MOVWF CompTempVar548
	DECF CompTempVar548, W
	BTFSS STATUS,Z
	RETURN
	MOVF gbl_stop, W
	XORLW 0x04
	BTFSC STATUS,Z
	CLRF gbl_stop
	RETURN
; } teste function end

	ORG 0x00000123
status_00000
; { status ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	DECF gbl_estado, W
	BTFSS STATUS,Z
	GOTO	label18
	MOVF gbl_lamp, F
	BTFSS STATUS,Z
	GOTO	label17
	MOVLW 0x22
	MOVWF gbl_porta
label17
	DECF gbl_lamp, W
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x2C
	MOVWF gbl_porta
	RETURN
label18
	MOVLW 0x09
	MOVWF gbl_porta
	RETURN
; } status function end

	ORG 0x00000136
escreve_00000
; { escreve ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	DECF gbl_estado, W
	BTFSS STATUS,Z
	GOTO	label29
	CLRF LCD_GotoXy_00000_arg_x
	MOVLW 0x02
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar563+D'4'
	MOVLW 0x3A
	MOVWF CompTempVar563+D'5'
	MOVLW 0x4D
	MOVWF CompTempVar563
	MOVLW 0x64
	MOVWF CompTempVar563+D'2'
	MOVLW 0x6F
	MOVWF CompTempVar563+D'1'
	MOVWF CompTempVar563+D'3'
	CLRF CompTempVar563+D'6'
	MOVLW HIGH(CompTempVar563+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar563+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x78
	SUBWF gbl_contador, W
	BTFSC STATUS,C
	GOTO	label19
	CLRF LCD_GotoXy_00000_arg_x
	CLRF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar565
	MOVWF CompTempVar565+D'1'
	MOVWF CompTempVar565+D'2'
	MOVWF CompTempVar565+D'3'
	MOVWF CompTempVar565+D'4'
	MOVWF CompTempVar565+D'8'
	MOVWF CompTempVar565+D'15'
	MOVWF CompTempVar565+D'16'
	MOVWF CompTempVar565+D'17'
	MOVWF CompTempVar565+D'18'
	MOVWF CompTempVar565+D'19'
	MOVLW 0x44
	MOVWF CompTempVar565+D'7'
	MOVLW 0x45
	MOVWF CompTempVar565+D'6'
	MOVLW 0x4C
	MOVWF CompTempVar565+D'5'
	MOVLW 0x53
	MOVWF CompTempVar565+D'9'
	MOVLW 0x65
	MOVWF CompTempVar565+D'13'
	MOVLW 0x68
	MOVWF CompTempVar565+D'10'
	MOVLW 0x6F
	MOVWF CompTempVar565+D'11'
	MOVLW 0x72
	MOVWF CompTempVar565+D'14'
	MOVLW 0x77
	MOVWF CompTempVar565+D'12'
	CLRF CompTempVar565+D'20'
	MOVLW HIGH(CompTempVar565+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar565+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	GOTO	label20
label19
	CLRF LCD_GotoXy_00000_arg_x
	CLRF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar567
	MOVWF CompTempVar567+D'1'
	MOVWF CompTempVar567+D'2'
	MOVWF CompTempVar567+D'3'
	MOVWF CompTempVar567+D'4'
	MOVWF CompTempVar567+D'5'
	MOVWF CompTempVar567+D'6'
	MOVWF CompTempVar567+D'7'
	MOVWF CompTempVar567+D'8'
	MOVWF CompTempVar567+D'9'
	MOVWF CompTempVar567+D'10'
	MOVWF CompTempVar567+D'11'
	MOVWF CompTempVar567+D'12'
	MOVWF CompTempVar567+D'13'
	MOVWF CompTempVar567+D'14'
	MOVWF CompTempVar567+D'15'
	MOVWF CompTempVar567+D'16'
	MOVWF CompTempVar567+D'17'
	MOVWF CompTempVar567+D'18'
	MOVWF CompTempVar567+D'19'
	CLRF CompTempVar567+D'20'
	MOVLW HIGH(CompTempVar567+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar567+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label20
	MOVF gbl_segundo, F
	BTFSS STATUS,Z
	GOTO	label21
	MOVLW 0x0F
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x03
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x4A
	MOVWF CompTempVar569
	MOVLW 0x75
	MOVWF CompTempVar569+D'1'
	MOVLW 0x6C
	MOVWF CompTempVar569+D'2'
	MOVLW 0x69
	MOVWF CompTempVar569+D'3'
	MOVLW 0x6F
	MOVWF CompTempVar569+D'4'
	CLRF CompTempVar569+D'5'
	MOVLW HIGH(CompTempVar569+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar569+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label21
	DECF gbl_segundo, W
	BTFSS STATUS,Z
	GOTO	label22
	MOVLW 0x09
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x03
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x4A
	MOVWF CompTempVar571
	MOVLW 0x75
	MOVWF CompTempVar571+D'1'
	MOVLW 0x6C
	MOVWF CompTempVar571+D'2'
	MOVLW 0x69
	MOVWF CompTempVar571+D'3'
	MOVLW 0x6F
	MOVWF CompTempVar571+D'4'
	MOVLW 0x20
	MOVWF CompTempVar571+D'5'
	MOVLW 0x43
	MOVWF CompTempVar571+D'6'
	MOVLW 0x65
	MOVWF CompTempVar571+D'7'
	MOVLW 0x73
	MOVWF CompTempVar571+D'8'
	MOVLW 0x61
	MOVWF CompTempVar571+D'9'
	MOVLW 0x72
	MOVWF CompTempVar571+D'10'
	CLRF CompTempVar571+D'11'
	MOVLW HIGH(CompTempVar571+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar571+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label22
	MOVF gbl_segundo, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label23
	CLRF LCD_GotoXy_00000_arg_x
	MOVLW 0x03
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar573+D'5'
	MOVWF CompTempVar573+D'11'
	MOVLW 0x43
	MOVWF CompTempVar573+D'6'
	MOVLW 0x4A
	MOVWF CompTempVar573
	MOVLW 0x4B
	MOVWF CompTempVar573+D'12'
	MOVLW 0x61
	MOVWF CompTempVar573+D'9'
	MOVWF CompTempVar573+D'17'
	MOVLW 0x63
	MOVWF CompTempVar573+D'14'
	MOVLW 0x65
	MOVWF CompTempVar573+D'7'
	MOVLW 0x68
	MOVWF CompTempVar573+D'15'
	MOVWF CompTempVar573+D'16'
	MOVLW 0x69
	MOVWF CompTempVar573+D'3'
	MOVLW 0x6C
	MOVWF CompTempVar573+D'2'
	MOVLW 0x6E
	MOVWF CompTempVar573+D'18'
	MOVWF CompTempVar573+D'19'
	MOVLW 0x6F
	MOVWF CompTempVar573+D'4'
	MOVWF CompTempVar573+D'13'
	MOVLW 0x72
	MOVWF CompTempVar573+D'10'
	MOVLW 0x73
	MOVWF CompTempVar573+D'8'
	MOVLW 0x75
	MOVWF CompTempVar573+D'1'
	CLRF CompTempVar573+D'20'
	MOVLW HIGH(CompTempVar573+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar573+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label23
	MOVF gbl_segundo, W
	XORLW 0x04
	BTFSS STATUS,Z
	GOTO	label24
	CLRF LCD_GotoXy_00000_arg_x
	MOVLW 0x03
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar575
	MOVWF CompTempVar575+D'1'
	MOVWF CompTempVar575+D'2'
	MOVWF CompTempVar575+D'3'
	MOVWF CompTempVar575+D'4'
	MOVWF CompTempVar575+D'5'
	MOVWF CompTempVar575+D'6'
	MOVWF CompTempVar575+D'7'
	MOVWF CompTempVar575+D'8'
	MOVWF CompTempVar575+D'9'
	MOVWF CompTempVar575+D'10'
	MOVWF CompTempVar575+D'11'
	MOVWF CompTempVar575+D'12'
	MOVWF CompTempVar575+D'13'
	MOVWF CompTempVar575+D'14'
	MOVWF CompTempVar575+D'15'
	MOVWF CompTempVar575+D'16'
	MOVWF CompTempVar575+D'17'
	MOVWF CompTempVar575+D'18'
	MOVWF CompTempVar575+D'19'
	CLRF CompTempVar575+D'20'
	MOVLW HIGH(CompTempVar575+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar575+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label24
	MOVF gbl_controle, F
	BTFSS STATUS,Z
	GOTO	label25
	MOVLW 0x07
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x02
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar577+D'10'
	MOVWF CompTempVar577+D'11'
	MOVLW 0x44
	MOVWF CompTempVar577
	MOVLW 0x61
	MOVWF CompTempVar577+D'3'
	MOVWF CompTempVar577+D'7'
	MOVLW 0x64
	MOVWF CompTempVar577+D'8'
	MOVLW 0x65
	MOVWF CompTempVar577+D'1'
	MOVLW 0x69
	MOVWF CompTempVar577+D'5'
	MOVLW 0x6F
	MOVWF CompTempVar577+D'9'
	MOVLW 0x73
	MOVWF CompTempVar577+D'2'
	MOVLW 0x74
	MOVWF CompTempVar577+D'4'
	MOVLW 0x76
	MOVWF CompTempVar577+D'6'
	CLRF CompTempVar577+D'12'
	MOVLW HIGH(CompTempVar577+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar577+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	CLRF gbl_portb
label25
	DECF gbl_controle, W
	BTFSS STATUS,Z
	GOTO	label26
	CLRF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x43
	MOVWF CompTempVar579
	MOVLW 0x6F
	MOVWF CompTempVar579+D'1'
	MOVLW 0x72
	MOVWF CompTempVar579+D'2'
	MOVLW 0x20
	MOVWF CompTempVar579+D'3'
	MOVLW 0x3A
	MOVWF CompTempVar579+D'4'
	CLRF CompTempVar579+D'5'
	MOVLW HIGH(CompTempVar579+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar579+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x07
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x02
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar581+D'5'
	MOVWF CompTempVar581+D'6'
	MOVWF CompTempVar581+D'7'
	MOVWF CompTempVar581+D'8'
	MOVWF CompTempVar581+D'9'
	MOVWF CompTempVar581+D'10'
	MOVWF CompTempVar581+D'11'
	MOVWF CompTempVar581+D'12'
	MOVLW 0x43
	MOVWF CompTempVar581
	MOVLW 0x6C
	MOVWF CompTempVar581+D'2'
	MOVLW 0x6F
	MOVWF CompTempVar581+D'1'
	MOVWF CompTempVar581+D'3'
	MOVLW 0x72
	MOVWF CompTempVar581+D'4'
	CLRF CompTempVar581+D'13'
	MOVLW HIGH(CompTempVar581+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar581+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label26
	MOVF gbl_controle, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label27
	CLRF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar583+D'6'
	MOVWF CompTempVar583+D'8'
	MOVLW 0x3A
	MOVWF CompTempVar583+D'7'
	MOVLW 0x45
	MOVWF CompTempVar583
	MOVLW 0x65
	MOVWF CompTempVar583+D'2'
	MOVLW 0x66
	MOVWF CompTempVar583+D'1'
	MOVLW 0x69
	MOVWF CompTempVar583+D'3'
	MOVLW 0x6F
	MOVWF CompTempVar583+D'5'
	MOVLW 0x74
	MOVWF CompTempVar583+D'4'
	CLRF CompTempVar583+D'9'
	MOVLW HIGH(CompTempVar583+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar583+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x07
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x02
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x45
	MOVWF CompTempVar585
	MOVLW 0x66
	MOVWF CompTempVar585+D'1'
	MOVWF CompTempVar585+D'2'
	MOVLW 0x65
	MOVWF CompTempVar585+D'3'
	MOVLW 0x63
	MOVWF CompTempVar585+D'4'
	MOVLW 0x74
	MOVWF CompTempVar585+D'5'
	MOVLW 0x20
	MOVWF CompTempVar585+D'6'
	MOVWF CompTempVar585+D'7'
	MOVWF CompTempVar585+D'8'
	MOVWF CompTempVar585+D'9'
	MOVWF CompTempVar585+D'10'
	MOVWF CompTempVar585+D'11'
	MOVWF CompTempVar585+D'12'
	CLRF CompTempVar585+D'13'
	MOVLW HIGH(CompTempVar585+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar585+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label27
	MOVF gbl_controle, W
	XORLW 0x03
	BTFSS STATUS,Z
	GOTO	label29
	MOVLW 0x07
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x02
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar587+D'10'
	MOVWF CompTempVar587+D'11'
	MOVWF CompTempVar587+D'12'
	MOVLW 0x49
	MOVWF CompTempVar587
	MOVLW 0x61
	MOVWF CompTempVar587+D'6'
	MOVWF CompTempVar587+D'8'
	MOVLW 0x63
	MOVWF CompTempVar587+D'7'
	MOVLW 0x69
	MOVWF CompTempVar587+D'4'
	MOVLW 0x6C
	MOVWF CompTempVar587+D'1'
	MOVLW 0x6D
	MOVWF CompTempVar587+D'3'
	MOVLW 0x6E
	MOVWF CompTempVar587+D'5'
	MOVLW 0x6F
	MOVWF CompTempVar587+D'9'
	MOVLW 0x75
	MOVWF CompTempVar587+D'2'
	CLRF CompTempVar587+D'13'
	MOVLW HIGH(CompTempVar587+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar587+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	CLRF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar589+D'7'
	MOVWF CompTempVar589+D'9'
	MOVLW 0x3A
	MOVWF CompTempVar589+D'8'
	MOVLW 0x4C
	MOVWF CompTempVar589
	MOVLW 0x61
	MOVWF CompTempVar589+D'1'
	MOVWF CompTempVar589+D'4'
	MOVWF CompTempVar589+D'6'
	MOVLW 0x64
	MOVWF CompTempVar589+D'5'
	MOVLW 0x6D
	MOVWF CompTempVar589+D'2'
	MOVLW 0x70
	MOVWF CompTempVar589+D'3'
	CLRF CompTempVar589+D'10'
	MOVLW HIGH(CompTempVar589+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar589+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	DECF gbl_lamp, W
	BTFSS STATUS,Z
	GOTO	label28
	MOVLW 0x0A
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar591+D'6'
	MOVWF CompTempVar591+D'7'
	MOVWF CompTempVar591+D'8'
	MOVWF CompTempVar591+D'9'
	MOVLW 0x4C
	MOVWF CompTempVar591
	MOVLW 0x61
	MOVWF CompTempVar591+D'3'
	MOVWF CompTempVar591+D'5'
	MOVLW 0x64
	MOVWF CompTempVar591+D'4'
	MOVLW 0x67
	MOVWF CompTempVar591+D'2'
	MOVLW 0x69
	MOVWF CompTempVar591+D'1'
	CLRF CompTempVar591+D'10'
	MOVLW HIGH(CompTempVar591+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar591+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	GOTO	label29
label28
	MOVLW 0x0A
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar593+D'9'
	MOVLW 0x44
	MOVWF CompTempVar593
	MOVLW 0x61
	MOVWF CompTempVar593+D'6'
	MOVWF CompTempVar593+D'8'
	MOVLW 0x64
	MOVWF CompTempVar593+D'7'
	MOVLW 0x65
	MOVWF CompTempVar593+D'1'
	MOVLW 0x67
	MOVWF CompTempVar593+D'5'
	MOVLW 0x69
	MOVWF CompTempVar593+D'4'
	MOVLW 0x6C
	MOVWF CompTempVar593+D'3'
	MOVLW 0x73
	MOVWF CompTempVar593+D'2'
	CLRF CompTempVar593+D'10'
	MOVLW HIGH(CompTempVar593+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar593+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
label29
	MOVF gbl_estado, F
	BTFSC STATUS,Z
	CALL LCD_Clear_00000
	RETURN
; } escreve function end

	ORG 0x00000342
efeito_00000
; { efeito ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	DECF gbl_estado, W
	BTFSS STATUS,Z
	RETURN
	MOVF gbl_controle, W
	XORLW 0x02
	BTFSS STATUS,Z
	RETURN
	MOVF gbl_efeito, W
	XORLW 0x00
	BTFSC STATUS,Z
	GOTO	label30
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label36
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label42
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label48
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label54
	RETURN
label30
	MOVLW 0x09
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar609+D'10'
	MOVLW 0x53
	MOVWF CompTempVar609
	MOVLW 0x61
	MOVWF CompTempVar609+D'8'
	MOVLW 0x63
	MOVWF CompTempVar609+D'6'
	MOVLW 0x65
	MOVWF CompTempVar609+D'1'
	MOVWF CompTempVar609+D'4'
	MOVLW 0x69
	MOVWF CompTempVar609+D'7'
	MOVLW 0x6C
	MOVWF CompTempVar609+D'9'
	MOVLW 0x6E
	MOVWF CompTempVar609+D'5'
	MOVLW 0x71
	MOVWF CompTempVar609+D'2'
	MOVLW 0x75
	MOVWF CompTempVar609+D'3'
	CLRF CompTempVar609+D'11'
	MOVLW HIGH(CompTempVar609+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar609+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x19
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label31
	MOVLW 0x08
	MOVWF gbl_portb
label31
	MOVF gbl_delay, W
	SUBLW 0x19
	BTFSC STATUS,C
	GOTO	label32
	MOVLW 0x32
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label32
	MOVLW 0x10
	MOVWF gbl_portb
label32
	MOVF gbl_delay, W
	SUBLW 0x32
	BTFSC STATUS,C
	GOTO	label33
	MOVLW 0x4B
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label33
	MOVLW 0x20
	MOVWF gbl_portb
label33
	MOVF gbl_delay, W
	SUBLW 0x4B
	BTFSC STATUS,C
	GOTO	label34
	MOVLW 0x64
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label34
	MOVLW 0x38
	MOVWF gbl_portb
label34
	MOVF gbl_delay, W
	SUBLW 0x64
	BTFSC STATUS,C
	GOTO	label35
	MOVLW 0x7D
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label35
	MOVLW 0x28
	MOVWF gbl_portb
label35
	MOVF gbl_delay, W
	SUBLW 0x7D
	BTFSC STATUS,C
	RETURN
	MOVLW 0x96
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	RETURN
	MOVLW 0x30
	MOVWF gbl_portb
	RETURN
label36
	MOVLW 0x09
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x50
	MOVWF CompTempVar611
	MOVLW 0x63
	MOVWF CompTempVar611+D'3'
	MOVWF CompTempVar611+D'9'
	MOVLW 0x64
	MOVWF CompTempVar611+D'5'
	MOVLW 0x65
	MOVWF CompTempVar611+D'6'
	MOVLW 0x69
	MOVWF CompTempVar611+D'2'
	MOVWF CompTempVar611+D'8'
	MOVLW 0x6C
	MOVWF CompTempVar611+D'7'
	MOVLW 0x6F
	MOVWF CompTempVar611+D'4'
	MOVWF CompTempVar611+D'10'
	MOVLW 0x73
	MOVWF CompTempVar611+D'1'
	CLRF CompTempVar611+D'11'
	MOVLW HIGH(CompTempVar611+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar611+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x14
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label37
	MOVF gbl_delay, W
	MOVWF gbl_portb
label37
	MOVF gbl_delay, W
	SUBLW 0x14
	BTFSC STATUS,C
	GOTO	label38
	MOVLW 0x28
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label38
	SWAPF gbl_delay, W
	ANDLW 0xF0
	MOVWF gbl_portb
label38
	MOVF gbl_delay, W
	SUBLW 0x28
	BTFSC STATUS,C
	GOTO	label39
	MOVLW 0x3C
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label39
	MOVF gbl_delay, W
	MOVWF CompTempVar613
	RLF CompTempVar613, F
	RLF CompTempVar613, F
	RLF CompTempVar613, F
	RLF CompTempVar613, F
	RLF CompTempVar613, F
	MOVLW 0xE0
	ANDWF CompTempVar613, W
	MOVWF gbl_portb
label39
	MOVF gbl_delay, W
	SUBLW 0x3C
	BTFSC STATUS,C
	GOTO	label40
	MOVLW 0x50
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label40
	MOVLW 0x38
	MOVWF __mul_8_8__00005_arg_a
	MOVF gbl_delay, W
	MOVWF __mul_8_8__00005_arg_b
	CALL __mul_8_8__00005
	MOVF CompTempVarRet373, W
	MOVWF gbl_portb
label40
	MOVF gbl_delay, W
	SUBLW 0x50
	BTFSC STATUS,C
	GOTO	label41
	MOVLW 0x64
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label41
	MOVLW 0x28
	MOVWF __mul_8_8__00005_arg_a
	MOVF gbl_delay, W
	MOVWF __mul_8_8__00005_arg_b
	CALL __mul_8_8__00005
	MOVF CompTempVarRet373, W
	MOVWF gbl_portb
label41
	MOVF gbl_delay, W
	SUBLW 0x64
	BTFSC STATUS,C
	RETURN
	MOVLW 0x78
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	RETURN
	MOVLW 0x30
	MOVWF __mul_8_8__00005_arg_a
	MOVF gbl_delay, W
	MOVWF __mul_8_8__00005_arg_b
	CALL __mul_8_8__00005
	MOVF CompTempVarRet373, W
	MOVWF gbl_portb
	RETURN
label42
	MOVLW 0x09
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x50
	MOVWF CompTempVar614
	MOVLW 0x69
	MOVWF CompTempVar614+D'1'
	MOVLW 0x73
	MOVWF CompTempVar614+D'2'
	MOVLW 0x63
	MOVWF CompTempVar614+D'3'
	MOVLW 0x61
	MOVWF CompTempVar614+D'4'
	MOVLW 0x2D
	MOVWF CompTempVar614+D'5'
	MOVLW 0x52
	MOVWF CompTempVar614+D'6'
	MOVLW 0x65
	MOVWF CompTempVar614+D'7'
	MOVLW 0x64
	MOVWF CompTempVar614+D'8'
	MOVLW 0x20
	MOVWF CompTempVar614+D'9'
	MOVWF CompTempVar614+D'10'
	CLRF CompTempVar614+D'11'
	MOVLW HIGH(CompTempVar614+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar614+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x14
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label43
	MOVLW 0x08
	MOVWF gbl_portb
label43
	MOVF gbl_delay, W
	SUBLW 0x14
	BTFSC STATUS,C
	GOTO	label44
	MOVLW 0x28
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
label44
	MOVF gbl_delay, W
	SUBLW 0x28
	BTFSC STATUS,C
	GOTO	label45
	MOVLW 0x3C
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label45
	MOVLW 0x08
	MOVWF gbl_portb
label45
	MOVF gbl_delay, W
	SUBLW 0x3C
	BTFSC STATUS,C
	GOTO	label46
	MOVLW 0x50
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
label46
	MOVF gbl_delay, W
	SUBLW 0x50
	BTFSC STATUS,C
	GOTO	label47
	MOVLW 0x64
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label47
	MOVLW 0x08
	MOVWF gbl_portb
label47
	MOVF gbl_delay, W
	SUBLW 0x64
	BTFSC STATUS,C
	RETURN
	MOVLW 0x78
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
	RETURN
label48
	MOVLW 0x09
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x50
	MOVWF CompTempVar616
	MOVLW 0x69
	MOVWF CompTempVar616+D'1'
	MOVLW 0x73
	MOVWF CompTempVar616+D'2'
	MOVLW 0x63
	MOVWF CompTempVar616+D'3'
	MOVLW 0x61
	MOVWF CompTempVar616+D'4'
	MOVLW 0x2D
	MOVWF CompTempVar616+D'5'
	MOVLW 0x47
	MOVWF CompTempVar616+D'6'
	MOVLW 0x72
	MOVWF CompTempVar616+D'7'
	MOVLW 0x65
	MOVWF CompTempVar616+D'8'
	MOVWF CompTempVar616+D'9'
	MOVLW 0x6E
	MOVWF CompTempVar616+D'10'
	CLRF CompTempVar616+D'11'
	MOVLW HIGH(CompTempVar616+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar616+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x14
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label49
	MOVLW 0x10
	MOVWF gbl_portb
label49
	MOVF gbl_delay, W
	SUBLW 0x14
	BTFSC STATUS,C
	GOTO	label50
	MOVLW 0x28
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
label50
	MOVF gbl_delay, W
	SUBLW 0x28
	BTFSC STATUS,C
	GOTO	label51
	MOVLW 0x3C
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label51
	MOVLW 0x10
	MOVWF gbl_portb
label51
	MOVF gbl_delay, W
	SUBLW 0x3C
	BTFSC STATUS,C
	GOTO	label52
	MOVLW 0x50
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
label52
	MOVF gbl_delay, W
	SUBLW 0x50
	BTFSC STATUS,C
	GOTO	label53
	MOVLW 0x64
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label53
	MOVLW 0x10
	MOVWF gbl_portb
label53
	MOVF gbl_delay, W
	SUBLW 0x64
	BTFSC STATUS,C
	RETURN
	MOVLW 0x78
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
	RETURN
label54
	MOVLW 0x09
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x50
	MOVWF CompTempVar618
	MOVLW 0x69
	MOVWF CompTempVar618+D'1'
	MOVLW 0x73
	MOVWF CompTempVar618+D'2'
	MOVLW 0x63
	MOVWF CompTempVar618+D'3'
	MOVLW 0x61
	MOVWF CompTempVar618+D'4'
	MOVLW 0x2D
	MOVWF CompTempVar618+D'5'
	MOVLW 0x42
	MOVWF CompTempVar618+D'6'
	MOVLW 0x6C
	MOVWF CompTempVar618+D'7'
	MOVLW 0x75
	MOVWF CompTempVar618+D'8'
	MOVLW 0x65
	MOVWF CompTempVar618+D'9'
	MOVLW 0x20
	MOVWF CompTempVar618+D'10'
	CLRF CompTempVar618+D'11'
	MOVLW HIGH(CompTempVar618+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar618+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x14
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label55
	MOVLW 0x20
	MOVWF gbl_portb
label55
	MOVF gbl_delay, W
	SUBLW 0x14
	BTFSC STATUS,C
	GOTO	label56
	MOVLW 0x28
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
label56
	MOVF gbl_delay, W
	SUBLW 0x28
	BTFSC STATUS,C
	GOTO	label57
	MOVLW 0x3C
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label57
	MOVLW 0x20
	MOVWF gbl_portb
label57
	MOVF gbl_delay, W
	SUBLW 0x3C
	BTFSC STATUS,C
	GOTO	label58
	MOVLW 0x50
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
label58
	MOVF gbl_delay, W
	SUBLW 0x50
	BTFSC STATUS,C
	GOTO	label59
	MOVLW 0x64
	SUBWF gbl_delay, W
	BTFSC STATUS,C
	GOTO	label59
	MOVLW 0x20
	MOVWF gbl_portb
label59
	MOVF gbl_delay, W
	SUBLW 0x64
	BTFSC STATUS,C
	RETURN
	MOVLW 0x78
	SUBWF gbl_delay, W
	BTFSS STATUS,C
	CLRF gbl_portb
	RETURN
; } efeito function end

	ORG 0x0000051E
cor_00000
; { cor ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	DECF gbl_estado, W
	BTFSS STATUS,Z
	RETURN
	DECF gbl_controle, W
	BTFSS STATUS,Z
	RETURN
	MOVF gbl_cor, W
	XORLW 0x00
	BTFSC STATUS,Z
	GOTO	label60
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label61
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label62
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label63
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label64
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label65
	RETURN
label60
	MOVLW 0x05
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar597
	MOVWF CompTempVar597+D'9'
	MOVWF CompTempVar597+D'10'
	MOVWF CompTempVar597+D'11'
	MOVWF CompTempVar597+D'12'
	MOVWF CompTempVar597+D'13'
	MOVWF CompTempVar597+D'14'
	MOVLW 0x56
	MOVWF CompTempVar597+D'1'
	MOVLW 0x65
	MOVWF CompTempVar597+D'2'
	MOVWF CompTempVar597+D'5'
	MOVLW 0x68
	MOVWF CompTempVar597+D'7'
	MOVLW 0x6C
	MOVWF CompTempVar597+D'6'
	MOVLW 0x6D
	MOVWF CompTempVar597+D'4'
	MOVLW 0x6F
	MOVWF CompTempVar597+D'8'
	MOVLW 0x72
	MOVWF CompTempVar597+D'3'
	CLRF CompTempVar597+D'15'
	MOVLW HIGH(CompTempVar597+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar597+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x08
	MOVWF gbl_portb
	RETURN
label61
	MOVLW 0x05
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar599
	MOVWF CompTempVar599+D'6'
	MOVWF CompTempVar599+D'7'
	MOVWF CompTempVar599+D'8'
	MOVWF CompTempVar599+D'9'
	MOVWF CompTempVar599+D'10'
	MOVWF CompTempVar599+D'11'
	MOVWF CompTempVar599+D'12'
	MOVWF CompTempVar599+D'13'
	MOVWF CompTempVar599+D'14'
	MOVLW 0x56
	MOVWF CompTempVar599+D'1'
	MOVLW 0x64
	MOVWF CompTempVar599+D'4'
	MOVLW 0x65
	MOVWF CompTempVar599+D'2'
	MOVWF CompTempVar599+D'5'
	MOVLW 0x72
	MOVWF CompTempVar599+D'3'
	CLRF CompTempVar599+D'15'
	MOVLW HIGH(CompTempVar599+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar599+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x10
	MOVWF gbl_portb
	RETURN
label62
	MOVLW 0x05
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar601
	MOVWF CompTempVar601+D'5'
	MOVWF CompTempVar601+D'6'
	MOVWF CompTempVar601+D'7'
	MOVWF CompTempVar601+D'8'
	MOVWF CompTempVar601+D'9'
	MOVWF CompTempVar601+D'10'
	MOVWF CompTempVar601+D'11'
	MOVWF CompTempVar601+D'12'
	MOVWF CompTempVar601+D'13'
	MOVWF CompTempVar601+D'14'
	MOVLW 0x41
	MOVWF CompTempVar601+D'1'
	MOVLW 0x6C
	MOVWF CompTempVar601+D'4'
	MOVLW 0x75
	MOVWF CompTempVar601+D'3'
	MOVLW 0x7A
	MOVWF CompTempVar601+D'2'
	CLRF CompTempVar601+D'15'
	MOVLW HIGH(CompTempVar601+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar601+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x20
	MOVWF gbl_portb
	RETURN
label63
	MOVLW 0x05
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar603
	MOVWF CompTempVar603+D'8'
	MOVWF CompTempVar603+D'9'
	MOVWF CompTempVar603+D'10'
	MOVWF CompTempVar603+D'11'
	MOVWF CompTempVar603+D'12'
	MOVWF CompTempVar603+D'13'
	MOVWF CompTempVar603+D'14'
	MOVLW 0x4C
	MOVWF CompTempVar603+D'1'
	MOVLW 0x61
	MOVWF CompTempVar603+D'2'
	MOVWF CompTempVar603+D'4'
	MOVWF CompTempVar603+D'7'
	MOVLW 0x6A
	MOVWF CompTempVar603+D'6'
	MOVLW 0x6E
	MOVWF CompTempVar603+D'5'
	MOVLW 0x72
	MOVWF CompTempVar603+D'3'
	CLRF CompTempVar603+D'15'
	MOVLW HIGH(CompTempVar603+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar603+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x38
	MOVWF gbl_portb
	RETURN
label64
	MOVLW 0x05
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar605
	MOVWF CompTempVar605+D'5'
	MOVWF CompTempVar605+D'6'
	MOVWF CompTempVar605+D'7'
	MOVWF CompTempVar605+D'8'
	MOVWF CompTempVar605+D'9'
	MOVWF CompTempVar605+D'10'
	MOVWF CompTempVar605+D'11'
	MOVWF CompTempVar605+D'12'
	MOVWF CompTempVar605+D'13'
	MOVWF CompTempVar605+D'14'
	MOVLW 0x52
	MOVWF CompTempVar605+D'1'
	MOVLW 0x6F
	MOVWF CompTempVar605+D'2'
	MOVWF CompTempVar605+D'4'
	MOVLW 0x78
	MOVWF CompTempVar605+D'3'
	CLRF CompTempVar605+D'15'
	MOVLW HIGH(CompTempVar605+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar605+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x28
	MOVWF gbl_portb
	RETURN
label65
	MOVLW 0x05
	MOVWF LCD_GotoXy_00000_arg_x
	MOVLW 0x01
	MOVWF LCD_GotoXy_00000_arg_y
	CALL LCD_GotoXy_00000
	MOVLW 0x20
	MOVWF CompTempVar607
	MOVWF CompTempVar607+D'6'
	MOVWF CompTempVar607+D'7'
	MOVWF CompTempVar607+D'8'
	MOVWF CompTempVar607+D'9'
	MOVWF CompTempVar607+D'10'
	MOVWF CompTempVar607+D'11'
	MOVWF CompTempVar607+D'12'
	MOVWF CompTempVar607+D'13'
	MOVWF CompTempVar607+D'14'
	MOVLW 0x43
	MOVWF CompTempVar607+D'1'
	MOVLW 0x61
	MOVWF CompTempVar607+D'3'
	MOVLW 0x69
	MOVWF CompTempVar607+D'2'
	MOVLW 0x6E
	MOVWF CompTempVar607+D'4'
	MOVLW 0x6F
	MOVWF CompTempVar607+D'5'
	CLRF CompTempVar607+D'15'
	MOVLW HIGH(CompTempVar607+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr+D'1'
	MOVLW LOW(CompTempVar607+D'0')
	MOVWF LCD_Printf_00000_arg_lcdptr
	CALL LCD_Printf_00000
	MOVLW 0x30
	MOVWF gbl_portb
	RETURN
; } cor function end

	ORG 0x0000060A
controle_00000
; { controle ; function begin
	MOVLW 0x02
	BCF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_portb, W
	MOVWF CompTempVar549
	MOVF CompTempVar549, F
	BTFSS STATUS,Z
	GOTO	label66
	MOVF gbl_pause, F
	BTFSS STATUS,Z
	GOTO	label66
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_controle, F
	MOVLW 0x01
	MOVWF gbl_pause
label66
	MOVLW 0x02
	ANDWF gbl_portb, W
	MOVWF CompTempVar550
	MOVF CompTempVar550, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label67
	DECF gbl_pause, W
	BTFSS STATUS,Z
	GOTO	label67
	MOVLW 0x02
	MOVWF gbl_pause
label67
	MOVLW 0x02
	ANDWF gbl_portb, W
	MOVWF CompTempVar551
	MOVF CompTempVar551, F
	BTFSS STATUS,Z
	GOTO	label68
	MOVF gbl_pause, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label68
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_controle, F
	MOVLW 0x04
	MOVWF gbl_pause
label68
	MOVLW 0x02
	ANDWF gbl_portb, W
	MOVWF CompTempVar552
	MOVF CompTempVar552, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label69
	MOVF gbl_pause, W
	XORLW 0x04
	BTFSC STATUS,Z
	CLRF gbl_pause
label69
	MOVF gbl_controle, W
	XORLW 0x04
	BTFSC STATUS,Z
	CLRF gbl_controle
	RETURN
; } controle function end

	ORG 0x00000647
comando_00000
; { comando ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	DECF gbl_estado, W
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x04
	ANDWF gbl_portb, W
	MOVWF CompTempVar553
	MOVF CompTempVar553, W
	XORLW 0x04
	BTFSS STATUS,Z
	RETURN
	DECF gbl_controle, W
	BTFSS STATUS,Z
	GOTO	label72
label70
	DECF gbl_estado, W
	BTFSS STATUS,Z
	GOTO	label71
	MOVLW 0x04
	ANDWF gbl_portb, W
	MOVWF CompTempVar556
	MOVF CompTempVar556, W
	XORLW 0x04
	BTFSS STATUS,Z
	GOTO	label71
	DECF gbl_controle, W
	BTFSS STATUS,Z
	GOTO	label71
	GOTO	label70
label71
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_cor, F
label72
	MOVF gbl_cor, W
	XORLW 0x06
	BTFSS STATUS,Z
	GOTO	label73
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF gbl_cor
label73
	MOVF gbl_controle, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label76
label74
	DECF gbl_estado, W
	BTFSS STATUS,Z
	GOTO	label75
	MOVLW 0x04
	ANDWF gbl_portb, W
	MOVWF CompTempVar559
	MOVF CompTempVar559, W
	XORLW 0x04
	BTFSS STATUS,Z
	GOTO	label75
	MOVF gbl_controle, W
	XORLW 0x02
	BTFSC STATUS,Z
	GOTO	label74
label75
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_efeito, F
label76
	MOVF gbl_efeito, W
	XORLW 0x05
	BTFSS STATUS,Z
	GOTO	label77
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF gbl_efeito
label77
	MOVF gbl_controle, W
	XORLW 0x03
	BTFSS STATUS,Z
	RETURN
label78
	DECF gbl_estado, W
	BTFSS STATUS,Z
	GOTO	label79
	MOVLW 0x04
	ANDWF gbl_portb, W
	MOVWF CompTempVar562
	MOVF CompTempVar562, W
	XORLW 0x04
	BTFSS STATUS,Z
	GOTO	label79
	MOVF gbl_controle, W
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label78
label79
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_lamp, F
	MOVF gbl_lamp, W
	XORLW 0x02
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF gbl_lamp
	RETURN
; } comando function end

	ORG 0x000006AD
LCD_Setup_00000
; { LCD_Setup ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF LCD_Setup_00000_1_trisRS,4
	BCF LCD_Setup_00000_1_trisRW,5
	BCF LCD_Setup_00000_1_trisE,6
	MOVLW 0x01
	BCF STATUS, RP0
	MOVWF gbl_writeDelayType
	MOVLW 0x10
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF LCD_Setup_00000_11_rs,4
	MOVLW 0x30
	MOVWF LCD_RawWri_00013_arg_d
	CALL LCD_RawWri_00013
	MOVLW 0x05
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x30
	MOVWF LCD_RawWri_00013_arg_d
	CALL LCD_RawWri_00013
	MOVLW 0x64
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	MOVLW 0x30
	MOVWF LCD_RawWri_00013_arg_d
	CALL LCD_RawWri_00013
	BCF LCD_Setup_00000_30_old_RS,0
	BTFSC LCD_Setup_00000_30_rs,4
	BSF LCD_Setup_00000_30_old_RS,0
	BCF LCD_Setup_00000_30_rs,4
label80
	CALL LCD_Read_00000
	BTFSC CompTempVarRet620,7
	GOTO	label80
	BTFSC LCD_Setup_00000_30_old_RS,0
	BSF LCD_Setup_00000_30_rs,4
	BTFSS LCD_Setup_00000_30_old_RS,0
	BCF LCD_Setup_00000_30_rs,4
	MOVLW 0x28
	MOVWF LCD_RawWri_00013_arg_d
	CALL LCD_RawWri_00013
	BCF LCD_Setup_00000_39_old_RS,0
	BTFSC LCD_Setup_00000_39_rs,4
	BSF LCD_Setup_00000_39_old_RS,0
	BCF LCD_Setup_00000_39_rs,4
label81
	CALL LCD_Read_00000
	BTFSC CompTempVarRet620,7
	GOTO	label81
	BTFSC LCD_Setup_00000_39_old_RS,0
	BSF LCD_Setup_00000_39_rs,4
	BTFSS LCD_Setup_00000_39_old_RS,0
	BCF LCD_Setup_00000_39_rs,4
	CLRF gbl_writeDelayType
	MOVLW 0x28
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	MOVLW 0x06
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	MOVLW 0x0C
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	MOVLW 0x80
	MOVWF LCD_Write_00000_arg_d
	CALL LCD_Write_00000
	RETURN
; } LCD_Setup function end

	ORG 0x000006EF
main
; { main ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_trisa
	MOVLW 0x07
	MOVWF gbl_trisb
	BCF STATUS, RP0
	CLRF gbl_porta
	CLRF gbl_portb
	CLRF gbl_estado
	CLRF gbl_segundo
	CLRF gbl_controle
	CLRF gbl_stop
	CLRF gbl_pause
	CLRF gbl_cor
	CLRF gbl_efeito
	CLRF gbl_lamp
	CALL LCD_Setup_00000
	CALL LCD_Clear_00000
	MOVLW 0x85
	BSF STATUS, RP0
	MOVWF gbl_option_reg
	MOVLW 0x83
	BCF STATUS, RP0
	MOVWF gbl_tmr0
	BSF gbl_intcon,5
	BSF gbl_intcon,7
label82
	CALL teste_00000
	CALL status_00000
	CALL comando_00000
	CALL controle_00000
	CALL escreve_00000
	CALL cor_00000
	CALL efeito_00000
	GOTO	label82
; } main function end

	ORG 0x00000711
_startup
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000714
interrupt
; { interrupt ; function begin
	BTFSS gbl_intcon,2
	GOTO	label85
	MOVLW 0x83
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_tmr0
	INCF gbl_contador, F
	INCF gbl_delay, F
	MOVF gbl_delay, W
	XORLW 0x7D
	BTFSC STATUS,Z
	CLRF gbl_delay
	MOVF gbl_contador, W
	XORLW 0x7D
	BTFSS STATUS,Z
	GOTO	label84
	INCF gbl_segundo, F
	MOVF gbl_segundo, W
	XORLW 0x05
	BTFSC STATUS,Z
	CLRF gbl_segundo
label84
	BCF gbl_intcon,2
label85
	BCF STATUS, RP0
	BCF STATUS, RP1
	SWAPF Int1BContext+D'2', W
	MOVWF FSR
	SWAPF Int1BContext+D'1', W
	MOVWF PCLATH
	SWAPF Int1BContext, W
	MOVWF STATUS
	SWAPF Int1Context, F
	SWAPF Int1Context, W
	RETFIE
; } interrupt function end

	END
