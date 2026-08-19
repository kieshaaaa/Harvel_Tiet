#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int remainder ; 
  int quotient ; 
  int product ; 
  int difference ; 
  int sum ; 
   ; 
   ; 
  sum =  ( *num1 )  +  ( *num2 )  ; 
  difference =  ( *num1 )  -  ( *num2 )  ; 
  product =  ( *num1 )  *  ( *num2 )  ; 
  quotient =  ( *num1 )  /  ( *num2 )  ; 
  remainder =  ( *num1 )  %  ( *num2 )  ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = difference ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = product ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = quotient ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = remainder ; 
     ; 
   } 
  return 0 ; 
 } 
