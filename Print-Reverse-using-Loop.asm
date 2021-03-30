.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    XOR CX,CX
    
    MOV AH,1
    INT 21H
    
    WHILE_:
    
    CMP AL,0DH
    JE POP_
    PUSH AX
    INC CX
    INT 21H
     
    JMP WHILE_  
    
    
    POP_:
    
    POP DX
    
    MOV AH,2
    INT 21H

    LOOP POP_
    
    MAIN ENDP
END MAIN