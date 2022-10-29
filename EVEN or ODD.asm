newline macro
         
  lea dx,nl
  mov ah,9
  int 21h
  
endm
   
.model small
.stack 100h
.data

msg1 db 'number is even', '$'
msg2 db 'number is odd',  '$'
nl   db  0dh,0ah,         '$'

.code 
.startup
  

  mov ax,@data
  mov ds,ax
     
 
  mov ah,1
  int 21h
  

  mov bl,2
  div bl

  mov al,ah
  
  cmp al,0

  jg odd 
          
    newline  
  
  lea dx,msg1
  mov ah,9
  int 21h
  jmp exit 
  
  odd:
    newline        
       
  lea dx,msg2
  mov ah,9
  int 21h
       
  exit:
  
.exit