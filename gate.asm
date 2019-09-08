
RS      EQU     P1.5 ; CEPARK51 v2.0 RS
RW      EQU     P1.6 ; CEPARK51 v2.0 R/W'
EN      EQU     P1.7 ; CEPARK51 v2.0 EN
LCDDB   EQU     P0   ; CEPARK51 v2.0 Data bus
LCDBF   EQU     P0.7 ; CEPARK51 v2.0 Busy Flag
; initialize the 8051 and the LCD
ORG 0030H
LCALL LCD1602_INIT
LCALL LCD1602_CLEAR
MOV R7,#0
; the main function of this program
MAIN:
	LCALL WEL_MES
	LCALL JUG_EnterAndSend
	LCALL READ
	LCALL DEALY_5
	SETB P2.3
	SETB P2.0
	SJMP MAIN

; the function to print the welcome message 
WEL_MES:

	ACALL LCD1602_INIT
	ACALL LCD1602_CLEAR
	
	MOV R1,#0
	MOV R0,#0
	ACALL LCD1602_SETCURSOR
	MOV A,#'W';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#1
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#2
	ACALL LCD1602_SETCURSOR
	MOV A,#'l';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#3
	ACALL LCD1602_SETCURSOR
	MOV A,#'c';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#4
	ACALL LCD1602_SETCURSOR
	MOV A,#'o';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#5
	ACALL LCD1602_SETCURSOR
	MOV A,#'m';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#6
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#7
	ACALL LCD1602_SETCURSOR
	MOV A,#'!';
	ACALL DATAWRT

	MOV R1,#1
	MOV R0,#0
	ACALL LCD1602_SETCURSOR
	MOV A,#'E';
	ACALL DATAWRT

	MOV R1,#1
	MOV R0,#1
	ACALL LCD1602_SETCURSOR
	MOV A,#'n';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#2
	ACALL LCD1602_SETCURSOR
	MOV A,#'t';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#3
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#4
	ACALL LCD1602_SETCURSOR
	MOV A,#'r';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#6
	ACALL LCD1602_SETCURSOR
	MOV A,#'t';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#7
	ACALL LCD1602_SETCURSOR
	MOV A,#'i';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#8
	ACALL LCD1602_SETCURSOR
	MOV A,#'c';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#9
	ACALL LCD1602_SETCURSOR
	MOV A,#'k';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#10D
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#11D
	ACALL LCD1602_SETCURSOR
	MOV A,#'t';
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#13D
	ACALL LCD1602_SETCURSOR
	MOV A,#'I'
	ACALL DATAWRT
	
	MOV R1,#1
	MOV R0,#14D
	ACALL LCD1602_SETCURSOR
	MOV A,#'D';
	ACALL DATAWRT
	RET

; the function to print the wait message 
WAIT_MES:
	ACALL LCD1602_INIT
	ACALL LCD1602_CLEAR
	
	MOV R1,#0
	MOV R0,#0
	ACALL LCD1602_SETCURSOR
	MOV A,#'P';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#1
	ACALL LCD1602_SETCURSOR
	MOV A,#'l';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#2
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#3
	ACALL LCD1602_SETCURSOR
	MOV A,#'a';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#4
	ACALL LCD1602_SETCURSOR
	MOV A,#'s';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#5
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#7
	ACALL LCD1602_SETCURSOR
	MOV A,#'w';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#8
	ACALL LCD1602_SETCURSOR
	MOV A,#'a';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#9
	ACALL LCD1602_SETCURSOR
	MOV A,#'i';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#10D
	ACALL LCD1602_SETCURSOR
	MOV A,#'t';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#12D
	ACALL LCD1602_SETCURSOR
	MOV A,#'.';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#13D
	ACALL LCD1602_SETCURSOR
	MOV A,#'.';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#14D
	ACALL LCD1602_SETCURSOR
	MOV A,#'.';
	ACALL DATAWRT
	RET

INVAILD_MES:
	ACALL LCD1602_INIT
	ACALL LCD1602_CLEAR
	
	MOV R1,#0
	MOV R0,#0
	ACALL LCD1602_SETCURSOR
	MOV A,#'I';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#1
	ACALL LCD1602_SETCURSOR
	MOV A,#'n';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#2
	ACALL LCD1602_SETCURSOR
	MOV A,#'v';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#3
	ACALL LCD1602_SETCURSOR
	MOV A,#'a';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#4
	ACALL LCD1602_SETCURSOR
	MOV A,#'i';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#5
	ACALL LCD1602_SETCURSOR
	MOV A,#'l';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#6
	ACALL LCD1602_SETCURSOR
	MOV A,#'d';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#8
	ACALL LCD1602_SETCURSOR
	MOV A,#'T';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#9
	ACALL LCD1602_SETCURSOR
	MOV A,#'i';
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#10D
	ACALL LCD1602_SETCURSOR
	MOV A,#'c';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#11D
	ACALL LCD1602_SETCURSOR
	MOV A,#'k';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#12D
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#12D
	ACALL LCD1602_SETCURSOR
	MOV A,#'t';
	ACALL DATAWRT
	RET
	


JUG_EnterAndSend:
INIT:
	MOV A,#0
	CLR C
	LCALL UART_INIT
START:
	JNB P3.2,L_1
	JNB P3.3,L_2
	JNB P3.4,L_3
	JNB P1.2,L_4
	JC START
	CJNE A,#8,START
	RET
L_1:
	LCALL DEALY
	JB P3.2,START
	MOV R0,A
	MOV A,#'1'
	LCALL UART_SEND
	MOV A,R0
	INC A
	SETB C
	LCALL DEALY2
	CJNE A,#8,START
	RET
L_2:
	LCALL DEALY
	JB P3.3,START
	MOV R0,A
	MOV A,#'2'
	LCALL UART_SEND
	MOV A,R0
	INC A
	SETB C
	LCALL DEALY2
	CJNE A,#8,START
	RET
L_3:
	LCALL DEALY
	JB P3.4,START
	MOV R0,A
	MOV A,#'3'
	LCALL UART_SEND
	MOV A,R0
	INC A
	SETB C
	LCALL DEALY2
	CJNE A,#8,START
	RET
L_4:
	LCALL DEALY
	JB P1.2,START
	MOV R0,A
	MOV A,#'4'
	LCALL UART_SEND
	MOV A,R0
	INC A
	SETB C
	LCALL DEALY2
	CJNE A,#8,START
	RET

READ:
	PUSH 2
	LCALL UART_INIT
	MOV R2,#0
	
REC: 
	LCALL UART_REC
	CJNE R2,#1,NOTFIRST
	CJNE A,#'1',NOTSTUDENT
	CLR P2.2
	LCALL WAIT_MES
	;LCALL DEALY_5
	LCALL JUG_STUDENT
	JB F0,CORRECT
	CLR P2.0
	POP 2
	RET
CORRECT:
	CLR P2.3
	INC R7
	SJMP REC
	
NOTSTUDENT:
	CJNE A,#'2',VAILD
	CLR P2.0
	LCALL INVAILD_MES
	;LCALL DEALY_5
	;CPL P2.0
	POP 2
	RET
VAILD:
	CLR P2.3
	;LCALL DEALY_5
	INC R7
	SJMP NOTFIRST
	
NOTFIRST:
	CJNE R2, #2,MNAME
	LCALL PRINT_SCREEN
	CJNE A,#'1',SCREEN2
	MOV R1,#0
	MOV R0,#7
	ACALL LCD1602_SETCURSOR
	MOV A,#'1'
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#8
	ACALL LCD1602_SETCURSOR
	MOV A,#':'
	ACALL DATAWRT
	LJMP REC
	
SCREEN2:
	CJNE A,#'2',SCREEN3
	MOV R1,#0
	MOV R0,#7
	ACALL LCD1602_SETCURSOR
	MOV A,#'2'
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#8
	ACALL LCD1602_SETCURSOR
	MOV A,#':'
	ACALL DATAWRT
	LJMP REC
	
SCREEN3:
	CJNE A,#'3',MNAME
	MOV R1,#0
	MOV R0,#7
	ACALL LCD1602_SETCURSOR
	MOV A,#'3'
	ACALL DATAWRT

	MOV R1,#0
	MOV R0,#8
	ACALL LCD1602_SETCURSOR
	MOV A,#':'
	ACALL DATAWRT
	LJMP REC

MNAME:
	MOV B,R2
	MOV R1,#1
	DEC B
	DEC B
	DEC B
	MOV 36H,B
	MOV R0,36H
	ACALL LCD1602_SETCURSOR
	ACALL DATAWRT
	CJNE R2,#18,NEXT
	POP 2
	RET
NEXT:
	JNC OUT
	LJMP REC
OUT: 
   LCALL DEALY_5
   POP 2
   RET
	

PRINT_SCREEN:
 	PUSH ACC
	ACALL LCD1602_INIT
	ACALL LCD1602_CLEAR
	
	MOV R1,#0
	MOV R0,#0
	ACALL LCD1602_SETCURSOR
	MOV A,#'S';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#1
	ACALL LCD1602_SETCURSOR
	MOV A,#'c';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#2
	ACALL LCD1602_SETCURSOR
	MOV A,#'r';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#3
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#4
	ACALL LCD1602_SETCURSOR
	MOV A,#'e';
	ACALL DATAWRT
	
	MOV R1,#0
	MOV R0,#5
	ACALL LCD1602_SETCURSOR
	MOV A,#'n';
	ACALL DATAWRT
	POP ACC
	RET

JUG_STUDENT:
	PUSH 2
	LCALL UART_INIT
	MOV R2,#0
REC_S: 
	LCALL UART_REC
	CJNE R2,#1,SECOND
	CJNE A,#'4',FAIL
	;LCALL DEALY_5
	SJMP REC_S
SECOND:
	CJNE R2,#2,THIRD
	CJNE A,#'5',FAIL
	;LCALL DEALY_5
	SJMP REC_S
THIRD:
    CJNE R2,#3,FOURTH
	CJNE A,#'9',FAIL
	;LCALL DEALY_5
	SJMP REC_S
FOURTH:
	CJNE R2,#4,FINISH
	CJNE A,#'8',FAIL
	;LCALL DEALY_5
	SJMP FINISH
FINISH:
	SETB F0
	SETB P2.2
	POP 2
	RET
FAIL:
	CLR F0
	SETB P2.2
	POP 2
	RET
DEALY_5:
	 PUSH 0
	 PUSH 1
	 PUSH 2
	 MOV R2, #19
IN_2:MOV R1,#250
IN_1:MOV R0,#250
LOOPIn5:NOP
	 NOP
	 DJNZ R0,LOOPIn5
	 DJNZ R1,IN_1
	 DJNZ R2,IN_2
	 POP 2
	 POP 1
	 POP 0
	 RET

DEALY:  
        PUSH 2
	MOV R2,#10
	PUSH 3
AGAIN:MOV R3,#250
LOOP: NOP
	NOP
        DJNZ R3,LOOP
	DJNZ R2,AGAIN
	POP 3
	POP 2
	RET

DEALY2:  PUSH 2
	MOV R2,#150
	PUSH 3
AGAIN2:MOV R3,#255
LOOP2: NOP
	NOP
        DJNZ R3,LOOP2
	DJNZ R2,AGAIN2
	POP 3
	POP 2
	RET

UART_INIT:
	MOV TMOD,#20H
	MOV TH1,#0FDH
	SETB TR1
	MOV SCON,#50H
	RET
	
UART_SEND:
	CLR TI
	MOV SBUF,A
	JNB TI,$
	RET
	
UART_REC:
	JNB RI,$
	MOV A,SBUF
	INC R2
	CLR RI
	;CPL P2.3
	RET

	
;;LCD1602_INIT(): initialise LCD
LCD1602_INIT:
        PUSH  ACC             ; save ACC
        MOV   A, #038h        ; 2 lines, 5x7, 8-bit
        ACALL COMNWRT         ; send command
        MOV   A, #00Ch        ; display ON
        ACALL COMNWRT
        MOV   A, #006h        ; addr auto-increment
        ACALL COMNWRT
        MOV   A, #001h        ; clear LCD
        ACALL COMNWRT
        MOV   A, #080h        ; set DDRAM=0
        ACALL COMNWRT
        POP   ACC             ; restore ACC
        RET

;;
;; LCD1602_CLEAR(): clear LCD and set cursor to (0, 0)
;; @return nothing
LCD1602_CLEAR:
        PUSH  ACC             ; save ACC
        MOV   A, #001h        ; clear LCD
        ACALL COMNWRT
        MOV   A, #080h        ; set DDRAM=0
        ACALL COMNWRT
        POP   ACC             ; restore ACC
        RET

;;
;; LCD1602_SETCURSOR(x, y): set the cursor to (x, y)
;; @param1 x: register R0
;; @param2 y: register R1
;; @return nothing
LCD1602_SETCURSOR:
        PUSH  ACC
        ANL   0, #0Fh         ; 0 <= x <= 15
        ANL   1, #01h         ; 0 <= y <= 1
        MOV   A, R1
        JZ    SC1
        ORL   0, #40H
SC1:    MOV   A, R0
        ORL   A, #80H
        ACALL COMNWRT
        POP   ACC
        RET

;;
;; LCD1602_COMNWRT(code): send a coded command to LCD1602
;; @param1 code: register A
;; @return nothing
LCD1602_COMNWRT:
COMNWRT:
        ACALL   READY
        MOV     LCDDB, A
        CLR     RS
        CLR     RW
        SETB    EN
        NOP
        CLR     EN
        RET

;;
;; LCD1602_COMNWRT(char): send an ASCII character to LCD1602
;; @param1 char: register A
;; @return nothing
LCD1602_PUTCHAR:
DATAWRT:
        ACALL   READY
        MOV     LCDDB, A
        SETB    RS
        CLR     RW
        SETB    EN
        NOP
        CLR     EN
        RET

; internal subroutine: ready
LCD1602_READY:
READY:
        PUSH 7
        MOV  LCDDB, #0FFh
        MOV  R7, #255
        CLR  RS
        SETB RW
        SETB EN
POLLD7:
        JNB  LCDBF, POLLOK
        DJNZ R7, POLLD7
POLLOK:
        CLR  EN
        POP  7
        RET
; LCD1602 Library (ASM) [END]


	
END




