.STACK 100H
.MODEL SMALL
.DATA
.CODE
 MAIN PROC
    MOV AH,1
    INT 21H  
    MOV BL,AL  
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,1
    INT 21H  
    MOV CL,AL 
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
            
    ADD BL,CL  
          
    SUB BL,48
          
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
   MAIN ENDP
 END MAIN   
 
 ;acii in like 1+2=c(in acci its mean 63)
    ;63 is in hexadecimal
    ;63-3=60 