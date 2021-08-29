.STACK 100H
.MODEL SMALL  

.DATA
   MSG1 DW "INPUT: $"
   MSG2 DW "OUTPUT: $"
   
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
   
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H                                                                                          
    MOV DL,0AH
    INT 21H 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
   
   
    
    CMP BL,CL
    JG GREATER
     
    CMP BL,CL
    JNG LESS
    
        GREATER:
        
        
        MOV AH,2
        MOV DL,CL
        INT 21H
         
        MOV AH,2
        MOV DL,BL
        INT 21H
        JMP END_IF        
        
       LESS:
       MOV AH,2
       MOV DL,BL
       INT 21H
       
       MOV AH,2
        MOV DL,CL
        INT 21H 
       
           
                  
                           
      END_IF:      
    
    
   
   MAIN ENDP
 END MAIN