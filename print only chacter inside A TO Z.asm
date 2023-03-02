.STACK 100H
.MODEL SMALL  

.DATA
   MSG1 DW "INPUT: $"
     MSG3 DW "OUTPUT:$" 
     
     MSG5 DW "WRONG INPUT$"
     
   
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
     
    
    CMP BL,"A"
    JL WRONG 
    CMP BL,"Z" 
    JG WRONG   
      
    MOV AH,2
    MOV DL,BL
    INT 21H   
    JMP END_IF             
   
                           
     
    WRONG:          
    LEA DX,MSG5
    MOV AH,9
    INT 21H 
  
       
                      
      END_IF:      
    
    
   
   MAIN ENDP
 END MAIN