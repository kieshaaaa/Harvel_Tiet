#include <stdio.h>

int entry_point ( int ( *mode )  ,  float ( *tempInput )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float tempOutput ; 
   ; 
   ; 
   ; 
  switch  (  ( *mode )  )   { 
    case 1: ; 
      tempOutput =  (  ( *tempInput )  - 32 )  * 5 / 9 ; 
       { 
         ( *temptemp1 )  = tempOutput ; 
         ; 
       } 
      break ; 
    case 2: ; 
      tempOutput =  (  ( *tempInput )  * 9 / 5 )  + 32 ; 
       { 
         ( *temptemp2 )  = tempOutput ; 
         ; 
       } 
      break ; 
    default: ; 
      break ; 
   } 
  return 0 ; 
 } 
