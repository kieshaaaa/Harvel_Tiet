#include <math.h>
#include <stdio.h>

int entry_point ( float ( *x )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float difference ; 
  float sum ; 
  float exp_neg ; 
  float exp_pos ; 
   ; 
  exp_pos = expf (  ( *x )  )  ; 
  exp_neg = expf ( - ( *x )  )  ; 
  sum = exp_pos + exp_neg ; 
  difference = exp_pos - exp_neg ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = difference ; 
     ; 
   } 
  return 0 ; 
 } 
