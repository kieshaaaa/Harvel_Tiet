#include <stdio.h>

int entry_point ( float ( *powerInHorsepower )  ,  float ( *temptemp1 )  )   { 
  float powerInWatts ; 
   ; 
  powerInWatts =  ( *powerInHorsepower )  * 746.0f ; 
   ; 
   { 
     ( *temptemp1 )  = powerInWatts ; 
     ; 
   }  ; 
  return 0 ; 
 } 
