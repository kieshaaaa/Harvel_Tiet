#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  long int ( *temptemp2 )  )   { 
  int i ; 
  long int fact ; 
   ; 
  fact = 1 ; 
  for  ( i =  ( *num )  ;  i >= 1 ;  i-- )  fact = fact * i ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = fact ; 
     ; 
   } 
  return 0 ; 
 } 
