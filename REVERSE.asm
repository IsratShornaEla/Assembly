.STACK 100H
.MODEL SMALL
.DATA

.CODE

MAIN PROC 
      XOR CX,CX 
      MOV AH,1 
      
    
    WHILE_:
    CMP AL,0DH
    JE POP_
    PUSH AX 
    INC CX
    INT 21H
    JMP WHILE_
     
    POP_:   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    JMP POP
    
    
    POP:  
    POP DX
    MOV AH,2
    INT 21H 
    
    LOOP POP
    
     
    
 MAIN ENDP
END MAIN