#include <stdio.h>

int entry_point ( char ( *operation )  ,  int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int result ; 
   ; 
   ; 
   ; 
  switch  (  ( *operation )  )   { 
    case '+':
      result =  ( *num1 )  +  ( *num2 )  ; 
       { 
         ( *temptemp1 )  = result ; 
         ; 
       } 
      break ; 
    case '-':
      result =  ( *num1 )  -  ( *num2 )  ; 
       { 
         ( *temptemp2 )  = result ; 
         ; 
       } 
      break ; 
    case '*':
      result =  ( *num1 )  *  ( *num2 )  ; 
       { 
         ( *temptemp3 )  = result ; 
         ; 
       } 
      break ; 
    case '/':
      if  (  ( *num2 )  != 0 )   { 
        result =  ( *num1 )  /  ( *num2 )  ; 
         { 
           ( *temptemp4 )  = result ; 
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
