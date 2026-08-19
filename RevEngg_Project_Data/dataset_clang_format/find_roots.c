#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  ,  float ( *temptemp3 )  ,  float ( *temptemp4 )  , 
                float ( *temptemp5 )  ,  float ( *temptemp6 )  ,  float ( *temptemp7 )  , 
                float ( *temptemp8 )  ,  float ( *temptemp9 )  )   { 
  float imaginaryPart ; 
  float r2 ; 
  float r1 ; 
  float disc ; 
   ; 
  if  ( ! ( *a )  )   { 
     ; 
    exit ( 0 )  ; 
   } 
  disc =  ( *b )  *  ( *b )  - 4 *  ( *a )  *  ( *c )  ; 
   { 
     ( *temptemp1 )  = disc ; 
     ; 
   } 
  switch  ( disc > 0 )   { 
    case 1: ; 
      r1 =  ( - ( *b )  + sqrt ( disc )  )  /  ( 2 *  ( *a )  )  ; 
      r2 =  ( - ( *b )  - sqrt ( disc )  )  /  ( 2 *  ( *a )  )  ; 
       { 
         ( *temptemp2 )  = r1 ; 
         ( *temptemp3 )  = r2 ; 
         ; 
       } 
      break ; 
    case 0:
      switch  ( disc < 0 )   { 
        case 0: ; 
          r1 = r2 = - ( *b )  /  ( 2 *  ( *a )  )  ; 
           { 
             ( *temptemp4 )  = r1 ; 
             ( *temptemp5 )  = r1 ; 
             ; 
           } 
          break ; 
        case 1: ; 
          r1 = - ( *b )  /  ( 2 *  ( *a )  )  ; 
          imaginaryPart = sqrt ( -disc )  /  ( 2 *  ( *a )  )  ; 
           { 
             ( *temptemp6 )  = r1 ; 
             ( *temptemp7 )  = imaginaryPart ; 
             ( *temptemp8 )  = r1 ; 
             ( *temptemp9 )  = imaginaryPart ; 
             ; 
           } 
       } 
   } 
  return 0 ; 
 } 
