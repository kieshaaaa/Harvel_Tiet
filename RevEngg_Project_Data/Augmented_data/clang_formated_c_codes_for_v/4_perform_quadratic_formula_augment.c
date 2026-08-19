#include <math.h>
#include <stdio.h>

int entry_point ( int ( *coeff_a )  ,  int ( *coeff_b )  ,  int ( *coeff_c )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  int root2 ; 
  int root1 ; 
   ; 
   ; 
   ; 
  root1 =  ( - ( *coeff_b )  +
           sqrt (  ( *coeff_b )  *  ( *coeff_b )  - 4 *  ( *coeff_a )  *  ( *coeff_c )  )  )  /
           ( 2 *  ( *coeff_a )  )  ; 
  root2 =  ( - ( *coeff_b )  -
           sqrt (  ( *coeff_b )  *  ( *coeff_b )  - 4 *  ( *coeff_a )  *  ( *coeff_c )  )  )  /
           ( 2 *  ( *coeff_a )  )  ; 
   { 
     ( *temptemp1 )  = root1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = root2 ; 
     ; 
   } 
  return 0 ; 
 } 
