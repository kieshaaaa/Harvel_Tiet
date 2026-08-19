#include <stdio.h>

int entry_point ( float ( *mph1 )  ,  float ( *mph2 )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float knots2 ; 
  float knots1 ; 
   ; 
   ; 
  knots1 =  ( *mph1 )  / 1.15078f ; 
  knots2 =  ( *mph2 )  / 1.15078f ; 
   { 
     ( *temptemp1 )  = knots1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = knots2 ; 
     ; 
   } 
  return 0 ; 
 } 
