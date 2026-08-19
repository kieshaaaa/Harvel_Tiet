#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  )   { 
  int a = 0 ; 
  int b = 1 ; 
  int i = 0 ; 
  int c ; 
   ; 
   ; 
  while  ( i <  ( *limit )  )   { 
    if  ( i <= 1 )   { 
      c = i ; 
     }  else  { 
      c = a + b ; 
      a = b ; 
      b = c ; 
     } 
     { 
       ( *temptemp1 )  = c ; 
       ; 
     } 
    i++ ; 
   }  ; 
  return 0 ; 
 } 
