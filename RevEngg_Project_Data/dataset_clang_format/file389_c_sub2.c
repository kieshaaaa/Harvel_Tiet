#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i = 0 ; 
  int second = 1 ; 
  int first = 0 ; 
   ; 
   ; 
  while  ( i <  ( *limit )  )   { 
    if  ( i <= 1 )   { 
       { 
         ( *temptemp1 )  = i ; 
         ; 
       } 
     }  else  { 
       { 
         ( *temptemp2 )  = first + second ; 
         ; 
       } 
      second += first ; 
      first = second - first ; 
     } 
    i++ ; 
   }  ; 
  return 0 ; 
 } 
