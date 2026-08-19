#include <math.h>
#include <stdio.h>

int entry_point ( float ( *x )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float negative ; 
  float positive ; 
  float delta ; 
  float total ; 
   ; 
  positive = expf (  ( *x )  )  ; 
  negative = expf ( - ( *x )  )  ; 
  total = positive + negative ; 
  delta = positive - negative ; 
   { 
     ( *temptemp1 )  = total ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = delta ; 
     ; 
   } 
  return 0 ; 
 } 
