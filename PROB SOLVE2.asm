.STACK 100H
.MODEL SMALL  

.DATA
   MSG1 DW "INPUT: $"
   
     MSG3 DW "ODD $" 
     MSG4 DW "EVEN$"
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
     
    
   
   
    CMP BL,'1'
    JE ODD  
    
    CMP BL,'3'
    JE ODD
    
             
    CMP BL,'2'
    JE E
    
              
    CMP BL,'4'
    JE E 
    LEA DX,MSG5
    MOV AH,9
    INT 21H 
    JMP END_IF
     
   
    
             
        
     E:   
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
    JMP END_IF
    
        ODD: 
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    JMP END_IF 
    
    
       
 
       
           
                  
                           
      END_IF:      
    
    
   
   MAIN ENDP
 END MAIN