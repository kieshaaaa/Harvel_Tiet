#include <stdio.h>

int entry_point ( float ( *inputSpeed )  ,  float ( *temptemp1 )  )   { 
  float convertedSpeed ; 
   ; 
  convertedSpeed =  ( *inputSpeed )  * 0.621371 ; 
   { 
     ( *temptemp1 )  = convertedSpeed ; 
     ; 
   } 
  return 0 ; 
 } 
