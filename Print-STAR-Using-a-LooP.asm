.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
   MOV BL,10
   
   MOV CL,0
   
   O:
   CMP BL,CL
   JG GT 
   JMP END_IF
   
   GT:
   MOV AH,2
   MOV DL,'*'
   INT 21H
   
   ADD CL,1
   JMP O
   END_IF: 
    
END MAIN
    
    