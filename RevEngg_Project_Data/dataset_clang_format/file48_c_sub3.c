#include <math.h>
#include <stdio.h>

int entry_point ( float ( *x )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float d ; 
  float s ; 
  float e_neg ; 
  float e_pos ; 
   ; 
  e_pos = expf (  ( *x )  )  ; 
  e_neg = expf ( - ( *x )  )  ; 
  s = e_pos + e_neg ; 
  d = e_pos - e_neg ; 
   { 
     ( *temptemp1 )  = s ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = d ; 
     ; 
   } 
  return 0 ; 
 } 
