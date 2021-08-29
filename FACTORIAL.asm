.STACK
.MODEL SMALL
.DATA 
 MSG1 DW "input:$"
 MSG2 DW "output:$" 
 
  
.CODE
  MAIN PROC
   XOR CX,CX
   
   MOV AH,2
   MOV CX,4
    
   MOV AX,1   
    COUNT:
   
    MUL CX 
   LOOP COUNT
    
     
   
   MOV AH,2
   ADD AX,48
   MOV DX,AX
    INT 21H 
     
    
   
    MAIN ENDP
  END MAIN