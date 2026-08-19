#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  long int ( *temptemp2 )  )   { 
  long int fact = 1 ; 
   ; 
  int i =  ( *num )  ; 
  if  ( i > 0 )   { 
    do  { 
      fact *= i ; 
      i-- ; 
     }  while  ( i >= 1 )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = fact ; 
     ; 
   } 
  return 0 ; 
 } 
