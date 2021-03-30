.STACK 100H
.MODEL SMALL
.DATA
A DW "INPUT A LETTER: $"
B DW "THE LETTER IS: $"
C DW "YOU INPUT A WRONG CHARACTER $"
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
    
    CMP BL,'A'
    JGE GREATER
    
    
    LEA DX,C
    MOV AH,9
    INT 21H
    
    JMP END_IF
   
    GREATER:
    
    CMP BL,'Z'
    JLE LESS
    
    LEA DX,C
    MOV AH,9
    INT 21H
    
    JMP END_IF
   
    LESS:
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
   
    
    
    END_IF:
    MAIN ENDP
END MAIN