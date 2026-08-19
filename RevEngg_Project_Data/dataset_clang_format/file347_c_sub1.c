#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  for  ( result =  ( *number )  ;  result >= 7 ;  result -= 7 ) 
     ; 
  if  ( result == 0 )   { 
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
