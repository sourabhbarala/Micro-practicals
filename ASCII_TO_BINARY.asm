.model small
.data
MESS0 DB 10,13,"ENTER THE NUMBER:$"

 ORG 1000H
 MOV SI,1100H
 MOV DI,1400H
 CLD
 MOV BL,20H

NEXT:LODSB
    CMP AL,BL
    JE EXIT
    SUB AL,30H
    CMP AL,0AH
    JC STORE
    SUB AL,07H
STORE:STOSB
    JMP NEXT
EXIT:HLT