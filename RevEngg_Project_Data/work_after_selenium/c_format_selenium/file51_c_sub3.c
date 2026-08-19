#include <math.h>
#include <stdio.h>

int entry_point ( float ( *length )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float total_area ; 
  float area_lateral ; 
  float area_base ; 
   ; 
   ; 
  area_base = pow (  ( *length )  ,  2 )  ; 
  area_lateral =  ( *length )  *  ( *height )  * 2 ; 
  total_area = area_base + area_lateral ; 
   { 
     ( *temptemp1 )  = total_area ; 
     ; 
   } 
  return 0 ; 
 } 
