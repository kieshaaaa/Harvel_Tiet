#include <stdio.h>

int entry_point ( float ( *inches )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float centimeters ; 
   ; 
  centimeters =  ( *inches )  * 2.54 ; 
   { 
     ( *temptemp1 )  =  ( *inches )  ; 
     ( *temptemp2 )  = centimeters ; 
     ; 
   } 
  return 0 ; 
 } 
