#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
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
    if  (  ( *limit )  >= 1 )   { 
      count = 1 ; 
     } 
    do  { 
      int next = prev + current ; 
      prev = current ; 
      current = next ; 
      if  ( next <=  ( *limit )  )   { 
        count++ ; 
       } 
     }  while  ( current <=  ( *limit )  )  ; 
     { 
       ( *temptemp2 )  =  ( *limit )  ; 
       ( *temptemp3 )  = count ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
