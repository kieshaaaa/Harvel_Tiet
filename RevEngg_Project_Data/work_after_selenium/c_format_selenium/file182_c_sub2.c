#include <stdio.h>

int entry_point ( int ( *year )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int condition = ! (  ( *year )  % 4 )  &&  (  ( *year )  % 100 || ! (  ( *year )  % 400 )  )  ; 
  switch  ( condition )   { 
    case 0:  { 
       ( *temptemp1 )  =  ( *year )  ; 
       ; 
     }  break ; 
    default:  { 
       ( *temptemp2 )  =  ( *year )  ; 
       ; 
     }  break ; 
   }  ; 
  return 0 ; 
 } 
