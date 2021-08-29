.STACK 100H
.MODEL SMALL  

.DATA
 MSG1 DW "Enter 3 inatialis:$"

.CODE
 MAIN PROC
    ;CL,BL,CH,BH
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
     
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
                 
 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
               
              
    MOV AH,2
    MOV DL,CH
    INT 21H 
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     MOV AH,2
    MOV DL,BH
    INT 21H 
    
     
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