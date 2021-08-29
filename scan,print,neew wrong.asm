.STACK 100H
.MODEL SMALL
.DATA
.CODE
 MAIN PROC
    MOV AH,1
    INT 21H  
    
    MOV BL,AL 
    
    
    MOV AH,2
    MOV AL,0DH
    INT 21H
    MOV AL,0AH
    INT 21H
    
    
    MOV AH,2
    MOV DL,"A"
    INT 21H
    
    
   MAIN ENDP
 END MAIN