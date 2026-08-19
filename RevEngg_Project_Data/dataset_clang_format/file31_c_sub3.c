#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int condition ; 
  int result ; 
   ; 
  condition =  (  ( *number )  % 7 == 0 )  ? 0 : 1 ; 
  switch  ( condition )   { 
    case 0:
      result =  ( *number )  + 1 ; 
      break ; 
    default:
      result =  ( *number )  + 2 ; 
   } 
  if  ( condition == 0 )   { 
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
