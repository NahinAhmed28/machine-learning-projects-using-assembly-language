.STACK 100H
.MODEL SMALL
.DATA
A DW "PRESS A CHARACTER: $"
B DW "THE OPPOSITE CHARACTER IS: $"

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
    
    JMP END_IF
   
    GREATER:
    CMP BL,'Z'
    JLE LESS
    
    JMP Z
    LESS:
    ADD BL,20H
    INT 21H
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP END_IF
   
    Z:
    CMP BL,'a'
    JGE G
    
    JMP END_IF
   
    G:
    CMP BL,'z'
    JLE L 
    
    
    
    JMP END_IF
    
    L:
    SUB BL,20H
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
       
    END_IF:
    MAIN ENDP
END MAIN