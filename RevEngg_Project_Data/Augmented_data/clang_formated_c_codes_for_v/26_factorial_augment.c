#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  double ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                float ( *temptemp4 )  )   { 
  double factorial = 1 ; 
   ; 
  int i =  ( *num )  ; 
  while  ( i > 1 )   { 
    factorial *= i ; 
    i-- ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = factorial ; 
     ; 
   } 
   { 
     ( *temptemp3 )  =  ( *num )  ; 
     ( *temptemp4 )  = factorial ; 
     ; 
   } 
  return 0 ; 
 } 
