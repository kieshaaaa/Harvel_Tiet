#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  )   { 
  int remainder ; 
  int temp2 ; 
  int temp1 ; 
   ; 
   ( *num1 )  = fabs (  ( *num1 )  )  ; 
   ( *num2 )  = fabs (  ( *num2 )  )  ; 
  temp1 =  ( *num1 )  ; 
  temp2 =  ( *num2 )  ; 
  while  ( temp2 != 0 )   { 
    remainder = temp1 % temp2 ; 
    temp1 = temp2 ; 
    temp2 = remainder ; 
   } 
   { 
     ( *temptemp1 )  = temp1 ; 
     ; 
   } 
  return 0 ; 
 } 
