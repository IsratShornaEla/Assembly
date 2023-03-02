;data segment used for declearing variable and print msg
.STACK
.MODEL SAMLL

.DATA
 MSG1 DW "ENTER 3 initials: $"
 ;DOLAR SIGN TO END 
  
 .CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H   
     
    MOV AH,2 
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H   
     
    MOV AH,2 
    MOV DL,CL
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H       
     
    MOV AH,2 
    MOV DL,CH
    INT 21H
  
  MAIN ENDP
 END MAIN
   