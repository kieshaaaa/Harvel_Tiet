#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int nthCubic ; 
   ; 
  if  (  ( *n )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  nthCubic =  ( *n )  *  ( *n )  *  ( *n )  ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = nthCubic ; 
     ; 
   } 
  return 0 ; 
 } 
