#include <stdio.h>

int entry_point ( float ( *meters )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
  float backToMeters ; 
  float feet ; 
  float metersToFeet = 3.28084f ; 
  float feetToMeters = 0.3048f ; 
   ; 
  feet =  ( *meters )  * metersToFeet ; 
  backToMeters = feet * feetToMeters ; 
   { 
     ( *temptemp1 )  =  ( *meters )  ; 
     ( *temptemp2 )  = feet ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = feet ; 
     ( *temptemp4 )  = backToMeters ; 
     ; 
   } 
  return 0 ; 
 } 
