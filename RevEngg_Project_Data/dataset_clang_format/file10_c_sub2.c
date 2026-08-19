#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
   ; 
  if  (  ( *n )  < 1 )   { 
     ; 
    return 0 ; 
   } 
  int i = 1 ; 
  while  ( i <=  ( *n )  )   { 
    int space = 1 ; 
    while  ( space < i )   { 
       ; 
      space++ ; 
     } 
    int num = i ; 
    while  ( num <=  ( *n )  )   { 
       { 
         ( *temptemp1 )  = num ; 
         ; 
       } 
      num++ ; 
     }  ; 
    i++ ; 
   } 
  return 0 ; 
 } 
