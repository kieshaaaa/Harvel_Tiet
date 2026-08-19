#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *temptemp1 )  )   { 
  float imgPart ; 
  float root2 ; 
  float root1 ; 
  float discriminant ; 
   ; 
  if  (  ( *a )  == 0 )   { 
     ; 
    return 0 ; 
   } 
  discriminant =  ( *b )  *  ( *b )  - 4 *  ( *a )  *  ( *c )  ; 
   { 
     ( *temptemp1 )  = discriminant ; 
     ; 
   } 
  discriminant > 0
      ?  ( root1 =  ( - ( *b )  + sqrt ( discriminant )  )  /  ( 2 *  ( *a )  )  , 
         root2 =  ( - ( *b )  - sqrt ( discriminant )  )  /  ( 2 *  ( *a )  )  , 
          ;  ) 
      :  ( discriminant == 0 ?  ( root1 = - ( *b )  /  ( 2 *  ( *a )  )  ,   ;  ) 
                           :  ( root1 = - ( *b )  /  ( 2 *  ( *a )  )  , 
                              imgPart = sqrt ( -discriminant )  /  ( 2 *  ( *a )  )  , 
                               ;  )  )  ; 
  return 0 ; 
 } 
