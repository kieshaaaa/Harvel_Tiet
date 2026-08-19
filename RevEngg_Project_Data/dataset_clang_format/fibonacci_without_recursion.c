#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  )   { 
  int first = 0 ; 
  int second = 1 ; 
  int i ; 
  int next ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *limit )  ;  i++ )   { 
    if  ( i <= 1 )   { 
      next = i ; 
     }  else  { 
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
