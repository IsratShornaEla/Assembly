.STACK 100H
.MODEL SMALL
.DATA
 MSG DW "           *******  WELCOME TO OUR PROJECT  ********* $"              
 MSG1 DW "  ************************************************************$" 
 MSG2 DW "  ************************************************************$" 
 MSG3 DW "  **                                                        ** $"
 MSG4 DW "  **                                                        ** $"
 MSG5 DW "  **                 1.BREAKFAST MENU                       ** $"
 MSG6 DW "  **                 2.LUNCH MENU                           ** $"
 MSG7 DW "  **                 3.DINNER MENU                          ** $"
 MSG8 DW "  **                 4.SNACKS MENU                          ** $"
 MSG9 DW "  **                 5.DRINKS                               ** $"
 MSG10 DW "  **                 6.DESSERT                              ** $"
 MSG11 DW "  **                                                        ** $"
 MSG12 DW "  **                                                        ** $"                                 ;desert
 MSG13 DW "  ************************************************************ $"
 MSG14 DW "  ************************************************************ $" 
 CHOISE DW "**ENTER YOU CHOISE : $"  
 INVALID DW "INVALID !! ENTER A CHOISE (1-6): $"
 
 ;breakfast
 
 MSG15 DW "  ************************************************************$" 
 MSG16 DW "  ************************************************************$" 
 MSG17 DW "  **                                                        ** $"
 MSG18 DW "  **                                                        ** $"
 MSG19 DW "  **          1.TANDOORI ROTI-------------10/=              ** $"
 MSG20 DW "  **          2.NAN  ---------------------15/=              ** $"
 MSG21 DW "  **          3.PARATA--------------------10/=              ** $"
 MSG22 DW "  **          4.DAL-----------------------10/=              ** $"
 MSG23 DW "  **          5.MIX VEGETABLE-------------10/=              ** $"
 MSG24 DW "  **          6.LUCHI---------------------10/=              ** $"
 MSG25 DW "  **          7.EGG OMLET-----------------15/=              ** $"
 MSG26 DW "  **          8.NEHARI -------------------50/=              ** $"
 MSG27 DW "  **          9.DAL  ---------------------10/=              ** $"
 MSG28 DW "  **                                                        ** $"
 MSG29 DW "  **                                                        ** $"                                   ;desert
 MSG30 DW "  ************************************************************ $"
 MSG31 DW "  ************************************************************ $" 
                                     
                                     
 HOW DW "HOW MANY ITEM DO YOU WANT?"
 
 ORDER DW "ENTER YOUR ORDER : $"
 QUANTITY DW "QUANTITY (1-9) : $"
 TOTAL DW "TOTAL PRICE: $"  
 AGMU DW "_PRESS 1 TO GET BACK TO MENU_$"
 EXIT DW "_PRESS 0 TO EITX_$"                       
 
 T1 DW "50$"
 T2 DW "100$"
 T3 DW "150$"
 T4 DW "200$"
 T5 DW "250$"
 T6 DW "300$"
 T7 DW "350$"
 T8 DW "400$"
 T9 DW "450$"

 .CODE
 
 BREAKFAT_MENU PROC 
    
   MOV AX,@DATA
    MOV DS,AX
    
    ;LEA DX,MSG
    ;MOV AH,9
    ;INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
   INT 21H 
    
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
    LEA DX,MSG15
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    LEA DX,MSG16
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG17
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG18
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG19
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG20
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG21
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG22
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG23
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG24
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG25
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
      LEA DX,MSG26
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    ;LEA DX,MSG27
    ;MOV AH,9
   ; INT 21H 
  ;  MOV AH,2
   ; MOV DL,0DH
    ;INT 21H
   ; MOV DL,0AH
   ; INT 21H
             
    
    LEA DX,MSG28
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG29
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
    
     
    LEA DX,MSG30
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     
    LEA DX,MSG31
    MOV AH,9
    INT 21H 
    MOV AH,2                  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
       MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
     
    LEA DX,ORDER
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
                                            
     CMP BL,'1'
    JE ONE
    CMP BL,'2'
    JE TWO 
    CMP BL,'3'
    JE ONE 
    CMP BL,'4'
    JE ONE
    CMP BL,'5'
    JE ONE
    CMP BL,'6'
    JE ONE
    CMP BL,'7'
    JE TWO
    CMP BL,'8'
    JE FIGHT
   
     ONE: 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
    LEA DX,QUANTITY
    MOV AH,9
    INT 21H 
    
     MOV AH,1
    INT 21H
    MOV CL,AL
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     LEA DX,TOTAL
    MOV AH,9
    INT 21H 
    
     MOV AH,2
     MOV DL,CL
     INT 21H
      MOV AH,2
     MOV DL,'0'
     INT 21H 
    JMP END_IF 
     
     
     TWO:
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
    LEA DX,QUANTITY
    MOV AH,9
    INT 21H 
    
     MOV AH,1
    INT 21H 
    
         MOV CL,AL
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     LEA DX,TOTAL
    MOV AH,9
    INT 21H
      
      CMP CL,'1'
    JE UNO
    CMP CL,'2'
    JE D 
    
     CMP CL,'3'
    JE T  
    CMP CL,'4'
    JE FU
   
     CMP CL,'5'
    JE F 
    CMP CL,'6'
    JE X
    
    CMP CL,'7'
    JE S
        
    CMP CL,'8'
    JE E
     CMP CL,'9'
    JE N
    
       UNO:
    MOV AH,2
    MOV DL,CL
    INT 21H 
    MOV AH,2
    MOV DL,'5'
    INT 21H
    JMP END_IF
     T:
     ADD CL,1
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV AH,2
    MOV DL,'5'
    INT 21H 
    JMP END_IF
      F:
     ADD CL,2
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV AH,2
    MOV DL,'5'
    INT 21H
    JMP END_IF
     S:
    MOV AH,2
    MOV DL,'1'
    INT 21H
    MOV AH,2
    MOV DL,'0'
    INT 21H
    
    
    MOV AH,2
    MOV DL,'5'
    INT 21H
    JMP END_IF   
    
   
     N:
     MOV AH,2
    MOV DL,'1'
    INT 21H
    MOV AH,2
    MOV DL,'3'
    INT 21H
    
    MOV AH,2
    MOV DL,'5'
    INT 21H
    JMP END_IF 
    
    D:
      ADD CL,1
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV AH,2
    MOV DL,'0'
    INT 21H 
    JMP END_IF
    FU:
     ADD CL,2
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV AH,2
    MOV DL,'0'
    INT 21H 
    JMP END_IF
    X:
    
    
     ADD CL,3
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV AH,2
    MOV DL,'0'
    INT 21H 
    JMP END_IF 
    E:
      MOV AH,2
    MOV DL,'1'
    INT 21H
    MOV AH,2
    MOV DL,'2'
    INT 21H
    
    MOV AH,2
    MOV DL,'0'
    INT 21H
    JMP END_IF
    
    
     FIGHT:
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
    LEA DX,QUANTITY
    MOV AH,9
    INT 21H 
    
     MOV AH,1
    INT 21H 
    
         MOV CL,AL
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     LEA DX,TOTAL
    MOV AH,9
    INT 21H
      
    CMP CL,'1'
    JE ON
       
    CMP CL,'2'
    JE  O
       
    CMP CL,'3'
    JE  R
       
    CMP CL,'4'
    JE  FOU      
    CMP CL,'5'
    JE  FIV
       
    CMP CL,'6'
    JE  SX
       
    CMP CL,'7'
    JE  SEV
       
    CMP CL,'8'
    JE  EIT
       
    CMP CL,'9'
    JE  NIN
   ON:
   LEA DX,T1
    MOV AH,9
    INT 21H   
    JMP END_IF
    O:
    LEA DX,T2
    MOV AH,9
    INT 21H   
    JMP END_IF
     R:    
     LEA DX,T3
    MOV AH,9
    INT 21H   
    JMP END_IF
     FOU:  
     LEA DX,T4
    MOV AH,9
    INT 21H
    JMP END_IF
     FIV:  
     LEA DX,T5
    MOV AH,9
    INT 21H
    JMP END_IF
     SX:   
     LEA DX,T6
    MOV AH,9
    INT 21H
    JMP END_IF
   SEV:    
   LEA DX,T7
    MOV AH,9
    INT 21H
     JMP END_IF
    EIT:
    LEA DX,T8
    MOV AH,9
    INT 21H
     JMP END_IF
    NIN:   
    LEA DX,T9
    MOV AH,9
    INT 21H
    JMP END_IF 
    
     
    
     
    END_IF: 
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
     
    LEA DX,AGMU
    MOV AH,9
    INT 21H  
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
     
    LEA DX,EXIT
    MOV AH,9
    INT 21H 
     
     
      
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
   JE H
     
   CMP AL,'0'
   JMP ENDE
    
   H:
   CALL MENU
   
     
   ENDE:
     
     
                 RET
    
    
;    CALL MENU
    
 ;    RET  
 
 BREAKFAT_MENU ENDP
 
 EXITMENU PROC
    RET
    EXITMENU ENDP 
   MENU PROC 
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG6
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG8
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG9
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG10
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG11
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG12
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
             
    
    LEA DX,MSG13
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG14
    MOV AH,9
    INT 21H 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
              
      MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
      
      
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,CHOISE
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
    
     CMP BL,"1"
    CALL BREAKFAT_MENU  
    
    
    
     RET        
 MENU ENDP
 
  
              
   MAIN PROC 
    CALL MENU
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,"A"
    INT 21H
    
    MAIN ENDP
   END MAIN