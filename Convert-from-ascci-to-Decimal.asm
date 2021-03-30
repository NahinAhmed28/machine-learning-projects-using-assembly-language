.STACK 100H
.MODEL SMALL
.DATA
 A DW " ENTER a HEX DIGIT(A-F): $"
 B DW " IN DECIMAL IT IS : $"
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    ;SCAN HEX DATA
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    ;PRINT DECIMAL DATA
    LEA DX,B
    MOV AH,9
    INT 21H
    
    ;PRINT THE FIXED 1
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    SUB BL,11H
    
    ;OUTPUT PRINT
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MAIN ENDP
END MAIN