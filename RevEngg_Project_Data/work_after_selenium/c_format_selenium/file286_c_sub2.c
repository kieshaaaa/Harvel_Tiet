#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  switch  (  ( *number )  % 3 )   { 
    case 0:
      result =  ( *number )  + 1 ; 
       { 
         ( *temptemp1 )  = result ; 
         ; 
       } 
      break ; 
    default:
      result =  ( *number )  + 2 ; 
       { 
         ( *temptemp2 )  = result ; 
         ; 
       } 
   } 
  return 0 ; 
 } 
