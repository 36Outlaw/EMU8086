.MODEL SMALL
.STACK 100H 
.DATA

msg1 db "Enter Upper Case: $"  
msg2 db 10,13, "Output Case: $"
msg3 db 10,13, "Enter Lower Case: $" 
msg4 db 10,13, "Output Case: $"

var1 db ?

.CODE
MAIN PROC
    
    MOV AX ,@DATA
    MOV DS , AX
    
    LEA DX, msg1
    MOV AH, 9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV var1,AL
    MOV BL, var1
    
    ADD BL, 20H
    
    LEA DX, msg2
    MOV AH, 9
    INT 21H 
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
            
    LEA DX, msg3
    MOV AH, 9
    INT 21H
            
    MOV AH,1
    INT 21H
    MOV var1,AL 
    MOV BL,var1
    
    SUB BL, 20H
    
    LEA DX, msg4
    MOV AH, 9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN