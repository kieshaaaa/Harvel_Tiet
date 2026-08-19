#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  )   { 
   ; 
   ( *num1 )  = fabs (  ( *num1 )  )  ; 
   ( *num2 )  = fabs (  ( *num2 )  )  ; 
  int max =  ( *num1 )  >  ( *num2 )  ?  ( *num1 )  :  ( *num2 )  ; 
  int min =  ( *num1 )  <  ( *num2 )  ?  ( *num1 )  :  ( *num2 )  ; 
  int hcf ; 
  int remainder ; 
  do  { 
    remainder =  ( *num1 )  %  ( *num2 )  ; 
     ( *num1 )  =  ( *num2 )  ; 
     ( *num2 )  = remainder ; 
   }  while  ( remainder )  ; 
  hcf =  ( *num1 )  ; 
   { 
     ( *temptemp1 )  = hcf ; 
     ; 
   }  ; 
  return 0 ; 
 } 
