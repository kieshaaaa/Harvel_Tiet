#include <stdio.h>

int entry_point ( int ( *dividend )  ,  int ( *divisor )  ,  int ( *temptemp1 )  )   { 
  int remainder ; 
  int tempDividend ; 
   ; 
   ; 
  tempDividend =  ( *dividend )  ; 
  while  ( tempDividend >=  ( *divisor )  )   { 
    tempDividend -=  ( *divisor )  ; 
   } 
  remainder = tempDividend ; 
   { 
     ( *temptemp1 )  = remainder ; 
     ; 
   } 
  return 0 ; 
 } 
