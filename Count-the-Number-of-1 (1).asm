.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC 
     MOV BH,'0'
     
     O:
     MOV AH,1
     INT 21H
     MOV BL,AL
     
     CMP BL,'1'
     JE Z
     
     JMP Y
     Z:
     INC BH
     JMP Y
     Y:
     CMP BL,' '
     JE Q
     
     JMP O
     
     Q:
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H
     
     MOV AH,2
     MOV DL,BH
     INT 21H
     
     END_IF:
     MAIN ENDP
END MAIN
     
     