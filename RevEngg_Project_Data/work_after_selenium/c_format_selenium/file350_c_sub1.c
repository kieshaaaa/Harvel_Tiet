#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int next = 0 ; 
  int current = 1 ; 
  int prev = 0 ; 
  int count = 0 ; 
   ; 
  if  (  ( *limit )  < 1 )   { 
     { 
       ( *temptemp1 )  =  ( *limit )  ; 
       ; 
     } 
   }  else  { 
    for  (  ;  next <=  ( *limit )  ;  count++ )   { 
      next = prev + current ; 
      prev = current ; 
      current = next ; 
      if  ( prev == 1 )   { 
        count++ ; 
       } 
     } 
     { 
       ( *temptemp2 )  =  ( *limit )  ; 
       ( *temptemp3 )  = count ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
