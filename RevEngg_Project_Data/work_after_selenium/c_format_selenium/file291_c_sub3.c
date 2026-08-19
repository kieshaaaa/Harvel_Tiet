#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  )   { 
  int hcf = 1 ; 
   ; 
   ( *num1 )  = fabs (  ( *num1 )  )  ; 
   ( *num2 )  = fabs (  ( *num2 )  )  ; 
  int min =  ( *num1 )  <  ( *num2 )  ?  ( *num1 )  :  ( *num2 )  ; 
  int i = 1 ; 
  if  (  ( *num1 )  % i == 0 &&  ( *num2 )  % i == 0 )   { 
    hcf = i ; 
   } 
 } 
 { 
   ( *temptemp1 )  = hcf ; 
   ; 
 } 
return 0 ; 
 } 
