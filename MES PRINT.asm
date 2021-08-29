.STACK 100H
.MODEL SMALL  

.DATA
 MSG1 DW "Enter a upper case letter :$"
 MSG2 DW "Your converted lowercase letter:$"  
 
.CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
      
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    ADD BL,20H
               
               ;SUB BL,20H
    MOV AH,2
    MOV DL,BL
    INT 21H
   
   MAIN ENDP
 END MAIN