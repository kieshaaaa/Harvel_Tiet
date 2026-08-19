#include <math.h>
#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  )   { 
  float root2 ; 
  float root1 ; 
  float denominator ; 
  float discriminant ; 
   ; 
   ; 
   ; 
  discriminant =  (  ( *b )  *  ( *b )  )  -  ( 4 *  ( *a )  *  ( *c )  )  ; 
  denominator = 2 *  ( *a )  ; 
  if  ( discriminant > 0 )   { 
     ; 
    root1 =  ( - ( *b )  / denominator )  +  ( sqrt ( discriminant )  / denominator )  ; 
    root2 =  ( - ( *b )  / denominator )  -  ( sqrt ( discriminant )  / denominator )  ; 
     { 
       ( *temptemp1 )  = root1 ; 
       ( *temptemp2 )  = root2 ; 
       ; 
     } 
   }  else if  ( discriminant == 0 )   { 
     ; 
    root1 = - ( *b )  / denominator ; 
     { 
       ( *temptemp3 )  = root1 ; 
       ; 
     } 
   }  else
     ; 
  return 0 ; 
 } 