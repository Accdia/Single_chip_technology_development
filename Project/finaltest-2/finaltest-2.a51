ORG 0000H
LJMP MAINR
ORG 0023H
LJMP INTSE2
ORG 0100H
MAINR:MOV SCON,#50H
MOV TMOD,#20H
MOV PCON,#0
MOV TH1,#72H
MOV TL1,#72H
SETB TR1
SETB EA
SETB ES
MOV DPTR,#ADDRR
MOV R0,#00H
SJMP $
ADDRR:DS 80H
ORG 0300H
INTSE2:CLR RI
MOV A,SBUF
MOVX @DPTR,A
MOV P1,A
INC R0
INC DPTR
CJNE R0,#80H,LOOP

CLR ES
LOOP:RETI
END