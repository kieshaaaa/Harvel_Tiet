#include <stdio.h>

int entry_point ( int ( *temptemp1 )  )   { 
  int result ; 
  int multiplier ; 
  int base ; 
  for  ( base = 1 ;  base <= 10 ;  base++ )   { 
    for  ( multiplier = 1 ;  multiplier <= base ;  multiplier++ )   { 
      result = base * multiplier ; 
       { 
         ( *temptemp1 )  = result ; 
         ; 
       } 
     }  ; 
   } 
  return 0 ; 
 } 
