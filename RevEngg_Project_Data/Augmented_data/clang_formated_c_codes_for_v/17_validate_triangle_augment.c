#include <stdio.h>

int entry_point ( float ( *side1 )  ,  float ( *side2 )  ,  float ( *side3 )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  int isValid ; 
   ; 
  if  (  ( *side1 )  +  ( *side2 )  >  ( *side3 )  &&  ( *side2 )  +  ( *side3 )  >  ( *side1 )  &&
       ( *side1 )  +  ( *side3 )  >  ( *side2 )  )   { 
    isValid = 1 ; 
     { 
       ( *temptemp1 )  = isValid ; 
       ; 
     } 
   }  else  { 
    isValid = 0 ; 
     { 
       ( *temptemp2 )  = isValid ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
