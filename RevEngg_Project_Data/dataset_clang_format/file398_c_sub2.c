#include <stdio.h>

int entry_point ( float ( *length )  ,  float ( *breadth )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float sum_of_sides ; 
  float perimeter ; 
  float area ; 
   ; 
   ; 
  sum_of_sides =  ( *length )  +  ( *breadth )  ; 
  area = sum_of_sides *  ( *breadth )  ; 
  perimeter = 2 * sum_of_sides ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = perimeter ; 
     ; 
   } 
  return 0 ; 
 } 
