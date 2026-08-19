#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
   ; 
   ; 
  while  (  ( *num1 )  !=  ( *num2 )  )   { 
    if  (  ( *num1 )  >  ( *num2 )  ) 
       ( *num1 )  -=  ( *num2 )  ; 
    else
       ( *num2 )  -=  ( *num1 )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num1 )  +  ( *num2 )  -  ( *num1 )  ; 
     ( *temptemp2 )  =  ( *num1 )  +  ( *num2 )  -  ( *num2 )  ; 
     ( *temptemp3 )  =  ( *num1 )  ; 
     ; 
   } 
  return 0 ; 
 } 
