#include <math.h>
#include <stdio.h>

int entry_point ( double ( *x )  ,  double ( *temptemp1 )  ,  double ( *temptemp2 )  )   { 
  double exp_pos ; 
  double exp_neg ; 
  double sum ; 
  double difference ; 
   ; 
  exp_pos = exp (  ( *x )  )  ; 
  exp_neg = exp ( - ( *x )  )  ; 
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
