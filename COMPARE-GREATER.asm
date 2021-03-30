.STACK 100H
.MODEL SMALL
.DATA
MSG1 DW "SCAN VALUE 1 :$ "
MSG2 DW "SCAN VALUE 2 :$ "       
MSG3 DW "GREATER VALUE :$ "
.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
   
    ;MSG1 
    LEA DX,MSG1
    MOV AH,9
    INT 21H            
    
    ;SCAN
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;NEW LINE
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H    
    
     ;MSG2 
    LEA DX,MSG2
    MOV AH,9
    INT 21H      
    ;SCAN
    
    MOV AH,1
    INT 21H
    MOV CL,AL    
     ;NEW LINE
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
            
    ;PRINT MSG3
    LEA DX,MSG3
    MOV AH,9
    INT 21H
            
    ;COMPARE
    
    CMP BL,CL
    JG GREATER
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP END_IF
    GREATER:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    END_IF:
    MAIN ENDP 