#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  float ( *arr )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  ,  float ( *temptemp5 )  )   { 
  int i ; 
  float kurtosis ; 
  float stdDeviation ; 
  float variance ; 
  float mean ; 
  float diff ; 
  float sumOfQuads = 0 ; 
  float sum = 0 ; 
   ; 
  float arr [  ( *n )  ]  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    sum += arr [ i ]  ; 
   } 
  mean = sum /  ( *n )  ; 
  sum = 0 ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
    diff = arr [ i ]  - mean ; 
    sum += diff * diff ; 
    sumOfQuads += pow ( diff ,  4 )  ; 
   } 
  variance = sum /  ( *n )  ; 
  stdDeviation = sqrt ( variance )  ; 
  kurtosis =  (  ( *n )  *  (  ( *n )  + 1 )  * sumOfQuads )  /
                  (  (  ( *n )  - 1 )  *  (  ( *n )  - 2 )  *  (  ( *n )  - 3 )  * pow ( stdDeviation ,  4 )  )  -
              ( 3 * pow (  ( *n )  - 1 ,  2 )  )  /  (  (  ( *n )  - 2 )  *  (  ( *n )  - 3 )  )  ; 
   { 
     ( *temptemp2 )  = mean ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = variance ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = stdDeviation ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = kurtosis ; 
     ; 
   } 
  return 0 ; 
 } 
