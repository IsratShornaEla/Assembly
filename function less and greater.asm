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
     
     MOV AH,1
     INT 21H
     MOV CL,AL 
     
      MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H
     
     CMP BL,CL
     JG GREATER
     
     CMP BL,CL
     JNG LESS
     
     GREATER:
      MOV AH,2
      MOV DL,BL
      INT 21H
      JMP END_IF
      
     LESS:
      MOV AH,2
      MOV DL,CL
      INT 21H 
         
     END_IF: 
        
      
    MAIN ENDP
 END MAIN