#include <stdio.h>

int entry_point ( char ( *op )  ,  int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int outcome ; 
   ; 
   ; 
   ; 
  switch  (  ( *op )  )   { 
    case '+':
      outcome =  ( *a )  +  ( *b )  ; 
       { 
         ( *temptemp1 )  = outcome ; 
         ; 
       } 
      break ; 
    case '-':
      outcome =  ( *a )  -  ( *b )  ; 
       { 
         ( *temptemp2 )  = outcome ; 
         ; 
       } 
      break ; 
    case '*':
      outcome =  ( *a )  *  ( *b )  ; 
       { 
         ( *temptemp3 )  = outcome ; 
         ; 
       } 
      break ; 
    case '/':
      if  (  ( *b )  != 0 )   { 
        outcome =  ( *a )  /  ( *b )  ; 
         { 
           ( *temptemp4 )  = outcome ; 
           ; 
         } 
       }  else  { 
         ; 
       } 
      break ; 
    default: ; 
   } 
  return 0 ; 
 } 
