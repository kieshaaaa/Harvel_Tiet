#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  float ( *temptemp3 )  , 
                float ( *temptemp4 )  )   { 
  int num1 = 10 ; 
  float num2 = 20.5 ; 
  int num1_copy = num1 ; 
  float num2_copy = num2 ; 
  num1 += 5 ; 
  num2 += 2.5 ; 
   { 
     ( *temptemp1 )  = num1_copy ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = num1 ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = num2_copy ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = num2 ; 
     ; 
   } 
  return 0 ; 
 } 
