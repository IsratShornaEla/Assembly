.STACK
.MODEL SMALL
.DATA
 MSG1 DW "ODD$"
 MSG2 DW "EVEN$" 
 MSG3 DW "WRONG INPUT$":
 
 .CODE
  MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
   
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
     
     CMP BL,'0'
     JE ODD
            
     CMP BL,'1'
     JE ODD
     
     CMP BL,'2'
     JE EVEN
     
     CMP BL,'4'                                                                                                     
     JE EVEN 
        LEA DX,MSG3
    MOV AH,9
    INT 21H
    JMP END_IF
     
    
    ODD:
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    JMP END_IF
    
    EVEN:
     LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    END_IF:
    
    MAIN ENDP
  END MAIN