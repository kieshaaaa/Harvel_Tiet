#include <stdio.h>

int entry_point ( int ( *numberOfSides )  ,  float ( *lengthOfSide )  ,  char ( *temptemp1 )  )   { 
  float totalPerimeter ; 
   ; 
   ; 
  totalPerimeter =  ( *numberOfSides )  *  ( *lengthOfSide )  ; 
  char message [ 50 ]  ; 
  sprintf ( message ,  "Perimeter of the polygon: %.2f\n" ,  totalPerimeter )  ; 
   { 
     ( *temptemp1 )  = message ; 
     ; 
   } 
  return 0 ; 
 } 
