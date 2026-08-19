#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  char ( *ch )  ,  float ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  float result ; 
   ; 
   ; 
   ; 
  int isFloat = 0 ; 
  switch  (  ( *ch )  )   { 
    case '+':
      result =  ( *num1 )  +  ( *num2 )  ; 
      break ; 
    case '-':
      result =  ( *num1 )  -  ( *num2 )  ; 
      break ; 
    case '*':
      result =  ( *num1 )  *  ( *num2 )  ; 
      break ; 
    case '/':
      if  (  ( *num2 )  != 0 )   { 
        result =  ( float )  ( *num1 )  /  ( *num2 )  ; 
        isFloat = 1 ; 
       }  else  { 
         ; 
        return 0 ; 
       } 
      break ; 
    case '%':
      result =  ( *num1 )  %  ( *num2 )  ; 
      break ; 
    default: ; 
      return 0 ; 
   } 
  if  ( isFloat )   { 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp2 )  =  ( int ) result ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
