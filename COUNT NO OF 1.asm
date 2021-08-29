.STACK
.MODEL SMALL
.DATA 
 MSG1 DW "input:$"
 MSG2 DW "output:$" 
 
  
.CODE
  MAIN PROC
    MOV CL,'0'
    ;ADD CL,48
     
    MOV AH,1         
    COUNT:
    INT 21H
     
     
    CMP AL,0DH
    JE  END_IF
    CMP AL,"1"
    JE ADDA
    JMP COUNT
      
   ADDA:
   INC CL
   JMP COUNT   
      
     END_IF:
   MOV AH,2
   MOV DL,0DH
   INT 21H
   MOV DL,0AH
   INT 21H
   
   MOV AH,2
   MOV DL,CL
    INT 21H 
     
               
               
               
     
   
    MAIN ENDP
  END MAIN