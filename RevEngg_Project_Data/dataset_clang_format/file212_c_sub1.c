#include <math.h>
#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  )   { 
  float root2 ; 
  float root1 ; 
  float discriminant ; 
   ; 
  discriminant =  ( *b )  *  ( *b )  - 4 *  ( *a )  *  ( *c )  ; 
  if  ( discriminant > 0 )   { 
    root1 =  ( - ( *b )  + sqrt ( discriminant )  )  /  ( 2 *  ( *a )  )  ; 
    root2 =  ( - ( *b )  - sqrt ( discriminant )  )  /  ( 2 *  ( *a )  )  ; 
     { 
       ( *temptemp1 )  = root1 ; 
       ( *temptemp2 )  = root2 ; 
       ; 
     } 
   }  else if  ( discriminant == 0 )   { 
    root1 = - ( *b )  /  ( 2.0 *  ( *a )  )  ; 
     { 
       ( *temptemp3 )  = root1 ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
