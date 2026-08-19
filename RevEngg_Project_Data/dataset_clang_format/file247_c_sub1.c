#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int temp ; 
  int b ; 
  int a ; 
   ; 
   ( *num1 )  = fabs (  ( *num1 )  )  ; 
   ( *num2 )  = fabs (  ( *num2 )  )  ; 
  a =  ( *num1 )  ; 
  b =  ( *num2 )  ; 
  while  ( b != 0 )   { 
    temp = b ; 
    b = a % b ; 
    a = temp ; 
   } 
  if  ( a == 1 )   { 
     ( *temptemp1 )  =  ( *num1 )  ; 
     ( *temptemp2 )  =  ( *num2 )  ; 
     ; 
   }  else  { 
     ( *temptemp3 )  =  ( *num1 )  ; 
     ( *temptemp4 )  =  ( *num2 )  ; 
     ; 
   } 
  return 0 ; 
 } 
