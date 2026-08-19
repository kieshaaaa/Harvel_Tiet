#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  float ( *arr )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
  int i ; 
  float stdDeviation ; 
  float variance ; 
  float mean ; 
  float sum = 0 ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
    sum += arr [ i ]  ; 
   } 
  mean = sum /  ( *n )  ; 
  sum = 0 ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
    sum +=  ( arr [ i ]  - mean )  *  ( arr [ i ]  - mean )  ; 
   } 
  variance = sum /  ( *n )  ; 
  stdDeviation = sqrtf ( variance )  ; 
   ; 
   { 
     ( *temptemp2 )  = mean ; 
     ; 
   }  ; 
   { 
     ( *temptemp3 )  = variance ; 
     ; 
   }  ; 
   { 
     ( *temptemp4 )  = stdDeviation ; 
     ; 
   } 
  return 0 ; 
 } 
