#include <math.h>
#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i = 1 ; 
  int count = 0 ; 
   ; 
  while  ( i * i <=  ( *limit )  )   { 
    count++ ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
