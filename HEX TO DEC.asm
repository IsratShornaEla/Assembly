.STACK 100H
.MODEL SMALL  

.DATA 
  MSG1 DW "Enter a hex digit :$" 
  MSG2 DW "In decimal it is :1$"
  

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
    SUB BL,11H
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
               
    MOV AH,2
    MOV DL,BL
    INT 21H   
    
   
   MAIN ENDP
 END MAIN