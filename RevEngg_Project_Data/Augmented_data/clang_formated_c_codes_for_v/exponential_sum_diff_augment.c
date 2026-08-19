#include <math.h>
#include <stdio.h>

int entry_point ( double ( *val )  ,  double ( *temptemp1 )  ,  double ( *temptemp2 )  )   { 
  double e_pos ; 
  double e_neg ; 
  double total ; 
  double diff ; 
   ; 
  e_pos = exp (  ( *val )  )  ; 
  e_neg = exp ( - ( *val )  )  ; 
  total = e_pos + e_neg ; 
  diff = e_pos - e_neg ; 
   { 
     ( *temptemp1 )  = total ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = diff ; 
     ; 
   } 
  return 0 ; 
 } 
