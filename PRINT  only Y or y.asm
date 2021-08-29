.STACK
.MODEL SMALL
.DATA 
 MSG1 DW "input:$"
 MSG2 DW "output:$" 
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
     
    
     
     CMP BL,"Y"
     JE PRINT
            
     CMP BL,"y"
     JE PRINT
     
    
    JMP END_IF
     
    
    PRINT: 
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
   MOV AH,2
   MOV DL,BL
   INT 21H
   JMP END_IF
  
    
    END_IF:
    
    MAIN ENDP
  END MAIN