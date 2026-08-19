#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  char ( *ch )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  float ( *temptemp4 )  , 
                int ( *temptemp5 )  )   { 
  float result ; 
   ; 
   ; 
   ; 
  switch  (  ( *ch )  )   { 
    case '+':
      result =  ( *num1 )  +  ( *num2 )  ; 
       { 
         ( *temptemp1 )  =  ( int ) result ; 
         ; 
       } 
      break ; 
    case '-':
      result =  ( *num1 )  -  ( *num2 )  ; 
       { 
         ( *temptemp2 )  =  ( int ) result ; 
         ; 
       } 
      break ; 
    case '*':
      result =  ( *num1 )  *  ( *num2 )  ; 
       { 
         ( *temptemp3 )  =  ( int ) result ; 
         ; 
       } 
      break ; 
    case '/':
      if  (  ( *num2 )  != 0 )   { 
        result =  ( float )  ( *num1 )  /  ( float )  ( *num2 )  ; 
         { 
           ( *temptemp4 )  = result ; 
           ; 
         } 
       }  else  { 
         ; 
       } 
      break ; 
    case '%':
      if  (  ( *num2 )  != 0 )   { 
        result =  ( *num1 )  %  ( *num2 )  ; 
         { 
           ( *temptemp5 )  =  ( int ) result ; 
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
