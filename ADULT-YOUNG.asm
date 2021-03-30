.STACK 100H
.MODEL SMALL
.DATA
A DW "PLEASE ENTER AGE: $"
B DW "YOU ARE AN ADULT: $"
C DW "YOU ARE YOUNG: $"
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
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AL,0AH
    INT 21H
    
    CMP BL,'1'
    JG GREATER
    JE EQUAL
    JL LESS
    
    LEA DX,C
    MOV AH,9
    INT 21H
    
    GREATER:
    LEA DX,B
    MOV AH,9
    INT 21H
    JMP END_IF 
    
    EQUAL:
    CMP CH,'8'
    JE GREATER
    JL LESS
    
    
    LESS:
    LEA DX,C
    MOV AH,9
    INT 21H
    JMP END_IF
    
    END_IF:
    
    MAIN ENDP
END MAIN
