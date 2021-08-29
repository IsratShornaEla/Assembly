.STACK
.MODEL SMALL
.DATA 
 MSG1 DW "input:$"
 MSG2 DW "output:$" 
 
  
.CODE
  MAIN PROC
   
    MOV AH,1         
    COUNT:
    INT 21H
     
    CMP AL,0DH
    JE END_IF
    
    
    JMP COUNT 
    
   
  
               
               
  END_IF:             
     
   
    MAIN ENDP
  END MAIN