#include <math.h>
#include <stdio.h>

int entry_point ( int ( *count )  ,  float ( *data )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  ,  float ( *temptemp5 )  )   { 
  int idx ; 
  float cubedSum = 0 ; 
  float skewnessValue ; 
  float standardDev ; 
  float varianceValue = 0 ; 
  float meanValue ; 
  float sumOfData = 0 ; 
   ; 
  for  ( idx = 0 ;  idx <  ( *count )  ;  idx++ )   { 
     { 
       ( *temptemp1 )  = idx + 1 ; 
       ; 
     } 
    sumOfData += data [ idx ]  ; 
   } 
  meanValue = sumOfData /  ( *count )  ; 
  for  ( idx = 0 ;  idx <  ( *count )  ;  idx++ )   { 
    varianceValue += pow ( data [ idx ]  - meanValue ,  2 )  ; 
   } 
  varianceValue = varianceValue /  ( *count )  ; 
  standardDev = sqrt ( varianceValue )  ; 
  for  ( idx = 0 ;  idx <  ( *count )  ;  idx++ )   { 
    cubedSum += pow ( data [ idx ]  - meanValue ,  3 )  ; 
   } 
  skewnessValue =  (  ( *count )  /  (  (  ( *count )  - 1.0f )  *  (  ( *count )  - 2.0f )  )  )  *
                   ( cubedSum /  ( *count )  )  / pow ( standardDev ,  3 )  ; 
   ; 
   { 
     ( *temptemp2 )  = meanValue ; 
     ; 
   }  ; 
   { 
     ( *temptemp3 )  = varianceValue ; 
     ; 
   }  ; 
   { 
     ( *temptemp4 )  = standardDev ; 
     ; 
   }  ; 
   { 
     ( *temptemp5 )  = skewnessValue ; 
     ; 
   } 
  return 0 ; 
 } 
