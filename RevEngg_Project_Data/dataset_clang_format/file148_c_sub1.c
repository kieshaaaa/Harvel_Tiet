#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
  int nthCubic = 1 ; 
   ; 
  if  (  ( *n )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  for  ( i = 0 ;  i < 3 ;  ++i )   { 
    nthCubic *=  ( *n )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = nthCubic ; 
     ; 
   } 
  return 0 ; 
 } 
