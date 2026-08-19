#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float circumference ; 
  float area_of_circle ; 
   ; 
  area_of_circle = 3.142 *  ( *radius )  *  ( *radius )  ; 
  circumference = 2 * 3.142 *  ( *radius )  ; 
   { 
     ( *temptemp1 )  = area_of_circle ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = circumference ; 
     ; 
   } 
  return 0 ; 
 } 
