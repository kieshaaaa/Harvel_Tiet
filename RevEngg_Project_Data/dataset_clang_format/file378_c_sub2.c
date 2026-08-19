#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
  int factor = 2 ; 
   ; 
   ; 
  while  (  ( *num )  != 1 )   { 
    while  (  ( *num )  % factor == 0 )   { 
       { 
         ( *temptemp1 )  = factor ; 
         ; 
       } 
       ( *num )  /= factor ; 
     } 
    factor++ ; 
   } 
  return 0 ; 
 } 
