#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int b = 1 ; 
  int a = 1 ; 
  int count = 0 ; 
   ; 
  if  (  ( *limit )  < 1 )   { 
     { 
       ( *temptemp1 )  =  ( *limit )  ; 
       ; 
     } 
    return 0 ; 
   } 
  while  ( a <=  ( *limit )  )   { 
    if  ( a <=  ( *limit )  )   { 
      count++ ; 
     } 
    b = a + b ; 
    a = b - a ; 
   } 
   { 
     ( *temptemp2 )  =  ( *limit )  ; 
     ( *temptemp3 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
