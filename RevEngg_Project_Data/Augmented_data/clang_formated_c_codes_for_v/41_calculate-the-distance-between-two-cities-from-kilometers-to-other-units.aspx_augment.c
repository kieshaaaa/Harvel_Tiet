#include <stdio.h>

int entry_point ( int ( *kilometers )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
  float meters ; 
  float feet ; 
  float inches ; 
  float centimeters ; 
   ; 
  meters =  ( *kilometers )  * 1000 ; 
  feet =  ( *kilometers )  * 3280.84 ; 
  inches =  ( *kilometers )  * 39370.1 ; 
  centimeters =  ( *kilometers )  * 100000 ; 
   { 
     ( *temptemp1 )  = meters ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = feet ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = inches ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = centimeters ; 
     ; 
   } 
  return 0 ; 
 } 
