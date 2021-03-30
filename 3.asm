.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC 
        
       TOP:
       MOV AH,1
       INT 21H
       MOV BL,AL
       
       CMP BL,'Y'
       JE TP
       
       JMP TOP
       
       TP:
       END_IF:
       
       MAIN ENDP
END MAIN