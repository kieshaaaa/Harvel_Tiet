#include <stdio.h>

int entry_point ( char ( *op )  ,  float ( *a )  ,  float ( *b )  ,  float ( *temptemp1 )  )   { 
  float outcome ; 
   ; 
   ; 
  switch  (  ( *op )  )   { 
    case '+':
      outcome =  ( *a )  +  ( *b )  ; 
      break ; 
    case '-':
      outcome =  ( *a )  -  ( *b )  ; 
      break ; 
    case '*':
      outcome =  ( *a )  *  ( *b )  ; 
      break ; 
    case '/':
      if  (  ( *b )  == 0 )   { 
         ; 
        return 0 ; 
       }  else  { 
        outcome =  ( *a )  /  ( *b )  ; 
       } 
      break ; 
    default: ; 
      return 0 ; 
   } 
   { 
     ( *temptemp1 )  = outcome ; 
     ; 
   } 
  return 0 ; 
 } 
