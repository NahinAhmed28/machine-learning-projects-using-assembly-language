   .STACK 100H
   .MODEL SMALL
   .DATA
   MSG1 DW "Please input a capital letter : $"
   MSG2 DW "convert small letter is $"
   .CODE 
   Main PROC
    MOV AX,@DATA    
    Mov DS,AX
    ;scan print
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    ;Scan
    MOV AH,1
    MOV AL, 'A'
    INT 21H
    MOV Bl,Al 
    ;New line
    MOV AH,2
    MOV Dl,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    ;convert 
    ADD BL,32   
    INT 21H
    ;print converted letter
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    ;print
    MOV AH,2
    MOV DL,BL
    INT 21H
    Main ENDp
    