.STACK 100H
.MODEL SMALL
.DATA
Val1 DB "INPUT: $"
Val2 DB "OUTPUT:$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,Val1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV Val1,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,Val2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,Val1
    INT 21H
    
    MAIN ENDP
END MAIN
    
    