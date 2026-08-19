#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int product = 0 ; 
  int count = 0 ; 
   ; 
   ; 
  while  ( count <  ( *num2 )  )   { 
    product +=  ( *num1 )  ; 
    count++ ; 
   }  ; 
   { 
     ( *temptemp1 )  =  ( *num1 )  ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  =  ( *num2 )  ; 
     ; 
   }  ; 
   { 
     ( *temptemp3 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
