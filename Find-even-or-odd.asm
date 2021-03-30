.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
     MOV AH,1
     INT 21H
     MOV BL,AL
     
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H
     
     CMP BL,'1'
     JE EQL
     CMP BL,'3'
     JE EQL
     
     MOV AH,2
     MOV DL,'E'
     INT 21H
     
     JMP END_IF
     
     EQL:
     MOV AH,2
     MOV DL,'O'
     INT 21H
     
     END_IF:
     
     MAIN ENDP
END MAIN