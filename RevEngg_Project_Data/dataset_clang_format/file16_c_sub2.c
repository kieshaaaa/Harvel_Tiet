#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  if  (  (  ( *number )  % 5 )  == 0 )   { 
     { 
       ( *temptemp1 )  = ++ ( *number )  ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp2 )  =  ( *number )  += 2 ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
