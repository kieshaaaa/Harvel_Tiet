#include <stdio.h>

int entry_point ( int ( *limit )  ,  float ( *temptemp1 )  )   { 
  int i = 0 ; 
  float next ; 
  float second = 1 ; 
  float first = 0 ; 
   ; 
   ; 
  for  (  ;  i <  ( *limit )  ;  i++ )   { 
    if  ( i <= 1 ) 
      next =  ( float ) i ; 
    else  { 
      next = first + second ; 
      first = second ; 
      second = next ; 
     } 
     { 
       ( *temptemp1 )  = next ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
