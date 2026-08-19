#include <math.h>
#include <stdio.h>

int entry_point ( float ( *principalAmount )  ,  float ( *interestRate )  , 
                float ( *timeYears )  ,  float ( *temptemp1 )  )   { 
  float compoundInterest ; 
   ; 
   ; 
   ; 
  compoundInterest =  ( *principalAmount )  *
                      (  ( pow (  ( 1 +  ( *interestRate )  / 100 )  ,   ( *timeYears )  )  - 1 )  )  ; 
   { 
     ( *temptemp1 )  = compoundInterest ; 
     ; 
   } 
  return 0 ; 
 } 
