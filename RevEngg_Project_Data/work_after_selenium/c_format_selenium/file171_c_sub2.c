#include <math.h>
#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  ,  float ( *temptemp3 )  ,  float ( *temptemp4 )  , 
                float ( *temptemp5 )  ,  float ( *temptemp6 )  )   { 
  float imagPart ; 
  float realPart ; 
  float discriminant ; 
   ; 
   ; 
   ; 
  discriminant =  ( *b )  *  ( *b )  - 4 *  ( *a )  *  ( *c )  ; 
  realPart = - ( *b )  /  ( 2 *  ( *a )  )  ; 
  if  ( discriminant >= 0 )   { 
    imagPart = sqrt ( fabs ( discriminant )  )  /  ( 2 *  ( *a )  )  ; 
     { 
       ( *temptemp1 )  = realPart + imagPart ; 
       ; 
     } 
     { 
       ( *temptemp2 )  = realPart - imagPart ; 
       ; 
     } 
   }  else  { 
    imagPart = sqrt ( -discriminant )  /  ( 2 *  ( *a )  )  ; 
     { 
       ( *temptemp3 )  = realPart ; 
       ( *temptemp4 )  = imagPart ; 
       ; 
     } 
     { 
       ( *temptemp5 )  = realPart ; 
       ( *temptemp6 )  = imagPart ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
