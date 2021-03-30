.STACK 100H
.MODEL SMALL
.DATA
 A DW " INPUT 01:? $"
 C DW " OUTPUT: $"
.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    ;SCAN
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;SCAN 2
    MOV AH,1
    INT 21H
    MOV CL,AL
   
    
    ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;OUTPUT
    LEA DX,C
    MOV AH,9
    INT 21H
    
    CMP BL,CL
    JG GREATER
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP END_IF
    
    GREATER:
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    END_IF:
    MAIN ENDP
END MAIN