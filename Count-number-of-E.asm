.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC   
    XOR CL,CL 
    START:
    
    MOV AH,1
    INT 21H 
    
    WHILE_:
    
    CMP AL,0DH
    JE END_
    CMP AL,' '
    JE EQUAL
    
  
    INT 21H
    JMP WHILE_
    
    EQUAL:
    INC CL
    JMP START
    
    END_:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
  
    ADD CL,30H
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MAIN ENDP
END MAIN
   
    
 