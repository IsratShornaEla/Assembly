;data segment used for declearing variable and print msg
.STACK  100h
.MODEL SAMLL

.DATA
 MSG1 DW 'ENTER A MESG OR VALU TO PRINT : $'
 ;DOLAR SIGN TO END 
  MSG2 DW "OUTPUT : $"
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
   