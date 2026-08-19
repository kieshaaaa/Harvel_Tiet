#include <math.h>
#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int num ; 
  float n ; 
   ; 
   ; 
  num =  ( *lower )  ; 
  if  ( num <=  ( *upper )  )   { 
     { 
       ( *temptemp1 )  =  ( *lower )  ; 
       ( *temptemp2 )  =  ( *upper )  ; 
       ; 
     } 
   } 
  do  { 
    n =  ( -1 + sqrtf ( 1 + 8 * num )  )  / 2 ; 
    if  ( floorf ( n )  == n )   { 
       { 
         ( *temptemp3 )  = num ; 
         ; 
       } 
     } 
    num++ ; 
   }  while  ( num <=  ( *upper )  )  ; 
  return 0 ; 
 } 
