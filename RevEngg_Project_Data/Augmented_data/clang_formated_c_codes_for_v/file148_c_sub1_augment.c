#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int nthCubic = 1 ; 
   ; 
  if  (  ( *num )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  j = 0 ; 
  while  ( j < 3 )   { 
    nthCubic *=  ( *num )  ; 
    j++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = nthCubic ; 
     ; 
   } 
  return 0 ; 
 } 
