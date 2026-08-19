#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int divisible =  (  ( *number )  % 5 == 0 )  ? 1 : 0 ; 
  int result = divisible ?  ( *number )  + 1 :  ( *number )  + 2 ; 
  if  ( divisible )   { 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp2 )  = result ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
