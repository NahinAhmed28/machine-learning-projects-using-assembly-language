.STACK 100H
.MODEL SMALL
.DATA
.CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;SCAN 1ST LETTER
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;SCAN 2ND LETTER
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ;SCAN 3RD LETTER
    MOV AH,1
    INT 21H
    MOV DH,AL  
    
    ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
  
    ;OUTPUT 1ST LETTER
    MOV AH,2
    MOV DL,BL
    INT 21H
    
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;OUTPUT 2ND LETTER
    
    MOV AH,2
    MOV DL,CL
    INT 21H
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;OUTPUT 3RD LETTER
    
    MOV AH,2
    MOV DL,DH
    INT 21H 
    
    MAIN ENDP
 END MAIN