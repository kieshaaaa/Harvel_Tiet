#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  char ( *operation )  ,  int ( *temptemp1 )  , 
                char ( *temptemp2 )  ,  int ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
  float outcome ; 
   ; 
   ; 
   ; 
  outcome = 0 ; 
  switch  (  ( *operation )  )   { 
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
      outcome =  ( float )  ( *a )  /  ( float )  ( *b )  ; 
      break ; 
    case '%':
      outcome =  ( *a )  %  ( *b )  ; 
      break ; 
              default : ; 
   } 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *operation )  ; 
     ( *temptemp3 )  =  ( *b )  ; 
     ( *temptemp4 )  = outcome ; 
     ; 
   } 
  return 0 ; 
 } 
