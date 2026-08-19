#include <stdio.h>

int entry_point ( int ( *year )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int leap =
       (  ( *year )  % 4 == 0 )  &&  (  (  ( *year )  % 100 != 0 )  ||  (  ( *year )  % 400 == 0 )  )  ; 
  switch  ( leap )   { 
    case 0:  { 
       ( *temptemp1 )  =  ( *year )  ; 
       ; 
     }  break ; 
    case 1:  { 
       ( *temptemp2 )  =  ( *year )  ; 
       ; 
     }  break ; 
   }  ; 
  return 0 ; 
 } 
