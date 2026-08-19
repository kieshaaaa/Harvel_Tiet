#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  if  (  ( *number )  % 5 == 0 )   { 
    result =  ( *number )  + 1 ; 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else  { 
    result =  ( *number )  + 2 ; 
     { 
       ( *temptemp2 )  = result ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
