#include <stdio.h>

int entry_point ( int ( *value )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int digitProduct = 1 ; 
  int digitSum = 0 ; 
   ; 
  int originalValue =  ( *value )  ; 
  int digit = originalValue % 10 ; 
  digitSum += digit ; 
  digitProduct *= digit ; 
 } 
 { 
   ( *temptemp1 )  =  ( *value )  ; 
   ( *temptemp2 )  = digitSum ; 
   ; 
 } 
 { 
   ( *temptemp3 )  =  ( *value )  ; 
   ( *temptemp4 )  = digitProduct ; 
   ; 
 } 
return 0 ; 
 } 
