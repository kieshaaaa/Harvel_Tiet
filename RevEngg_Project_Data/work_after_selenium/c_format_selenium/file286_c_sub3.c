#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  )   { 
  int isDivisible ; 
  int result ; 
   ; 
  isDivisible =  (  ( *number )  % 3 == 0 )  ; 
  if  ( isDivisible )   { 
    result =  ( *number )  + 1 ; 
   }  else  { 
    result =  ( *number )  + 2 ; 
   } 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  if  ( isDivisible )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
