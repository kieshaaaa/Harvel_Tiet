#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int b = 1 ; 
  int a = 0 ; 
  int sum = 0 ; 
  int count = 0 ; 
   ; 
  if  (  ( *limit )  < 1 )   { 
     { 
       ( *temptemp1 )  =  ( *limit )  ; 
       ; 
     } 
    return 0 ; 
   } 
  if  (  ( *limit )  >= 1 )   { 
    count++ ; 
   } 
  while  ( sum <=  ( *limit )  )   { 
    sum = a + b ; 
    a = b ; 
    b = sum ; 
    if  ( sum <=  ( *limit )  )   { 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp2 )  =  ( *limit )  ; 
     ( *temptemp3 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
