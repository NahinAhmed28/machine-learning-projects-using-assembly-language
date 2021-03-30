.STACK 100H
.MODEL SMALL
.DATA
A DW "PRESS A CHARACTER: $"
B DW "THE CHARACTER IS: $"
C DW "THE CHARACTER DOES NOT MATCH $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    CMP BL,'Y'
    JE EQUAL
    CMP BL,'y'
    JE EQUAL
    
    LEA DX,C
    MOV AH,9
    INT 21H
    JMP END_IF
    
    EQUAL:
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    END_IF:
    MAIN ENDP
END MAIN