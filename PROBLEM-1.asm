.STACK 100H
.MODEL SMALL
.DATA

MSG1 DW "SCAN DIGIT(0-9): $"
MSG2 DW "YOU VALUE IS EQUIVALENT TO 5 $"
MSG3 DW "YOUR VALUE IS GREATER THAN 5 $"
MSG4 DW "YOUR VALUE IS LESS THAN 5 $"

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
    
    ;COMPARE
    
    CMP BL,'5'
    JE EQUAL
    JG GREATER
    JL LESS
    
    EQUAL:    
     LEA DX,MSG2
     MOV AH,9
     INT 21H
     JMP END_IF
     
    GREATER:
     LEA DX,MSG3
     MOV AH,9
     INT 21H
     JMP END_IF               
    LESS:   
      LEA DX,MSG4
     MOV AH,9
     INT 21H
    
     
     END_IF: 
     MAIN ENDP  
