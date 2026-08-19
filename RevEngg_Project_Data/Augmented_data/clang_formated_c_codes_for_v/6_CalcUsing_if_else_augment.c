#include <stdio.h>

int entry_point ( char ( *operation )  ,  int ( *operand1 )  ,  int ( *operand2 )  , 
                int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int output = 0 ; 
   ; 
   ; 
  switch  (  ( *operation )  )   { 
    case '+':
      output =  ( *operand1 )  +  ( *operand2 )  ; 
       { 
         ( *temptemp1 )  = output ; 
         ; 
       } 
      break ; 
    case '-':
      output =  ( *operand1 )  -  ( *operand2 )  ; 
       { 
         ( *temptemp2 )  = output ; 
         ; 
       } 
      break ; 
    case '*':
      output =  ( *operand1 )  *  ( *operand2 )  ; 
       { 
         ( *temptemp3 )  = output ; 
         ; 
       } 
      break ; 
    case '/':
      if  (  ( *operand2 )  == 0 )   { 
         ; 
        return 1 ; 
       } 
      output =  ( *operand1 )  /  ( *operand2 )  ; 
       { 
         ( *temptemp4 )  = output ; 
         ; 
       } 
      break ; 
    default: ; 
   } 
  return 0 ; 
 } 
