.STACK 100H
.MODEL SMALL
.DATA
 MSG1 DW "INPUT A CHARACTER (A-Z>: $"
 MSG2 DW "IN DECMAL: 1$"
 MSG3 DW "IN BINARRY: 1$" 
 MSG4 DW "010$" 
 MSG5 DW "011$"
 MSG6 DW "100$"
 MSG7 DW "101$"
 MSG8 DW "110$"
 MSG9 DW "111$"
 
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
    
    SUB BL,11H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,BL
    INT 21H 
            
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H  
    
    CMP BL,'0'
    JE A
    CMP BL,'1'
    JE B
    CMP BL,'2'
    JE C
    CMP BL,'3'
    JE D
    CMP BL,'4'
    JE E
    
    LEA DX,MSG9
    MOV AH,9
    INT 21H
    JMP END_IF
    
    A:
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    JMP END_IF
    
    B:
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    JMP END_IF
    
    C:
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    JMP END_IF
    
    D:
    LEA DX,MSG7
    MOV AH,9
    INT 21H
    JMP END_IF
    
    E:
    LEA DX,MSG8
    MOV AH,9
    INT 21H 
    JMP END_IF
    
    END_IF:
    
   
    
    
    MAIN ENDP
 END MAIN