.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    
    CMP AL,'0'
    JE PRINT
    
    CMP AL,'1'
    JE SHOW 
    
    CMP AL,'2'
    JE PRIN
    
    CMP AL,'3'
    JE SHO
    
    JMP END_IF    
    
    PRINT:
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    JMP END_IF 
    
    SHOW:
         MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    JMP END_IF
    
    PRIN:
         MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
   
    MOV AH,2
    MOV DL,'2'
    INT 21H
    
    JMP END_IF
   
    SHO:
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H 
 
    MOV AH,2
    MOV DL,'6'
    INT 21H
    
    END_IF:
        
     MAIN ENDP 
END MAIN
    
    