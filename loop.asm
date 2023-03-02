.STACK
.MODEL SMALL
.DATA 
; MSG1 DW "input:$"
; MSG2 DW "output:$" 
 
  
.CODE
  MAIN PROC 
            
            
     
     XOR CX,CX
             
     MOV AH,2
             
     MOV CX,3
     
   
     
     GREATER: 
     
       MOV AH,2
       MOV DL,"*"
       INT 21H
       
      LOOP GREATER  
     
   
    
    MAIN ENDP
  END MAIN