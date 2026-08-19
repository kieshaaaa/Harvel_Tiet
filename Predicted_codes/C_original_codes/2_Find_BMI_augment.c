#include <stdio.h>

int entry_point ( float ( *height_meters )  ,  float ( *weight_kg )  ,  float ( *temptemp1 )  )   { 
  float BMI ; 
   ; 
   ; 
   ( *height_meters )  =  ( *height_meters )  / 100 ; 
  BMI =  ( *weight_kg )  /  (  ( *height_meters )  *  ( *height_meters )  )  ; 
   { 
     ( *temptemp1 )  = BMI ; 
     ; 
   } 
  return 0 ; 
 } 