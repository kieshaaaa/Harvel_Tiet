#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int numDigits ; 
  int rem ; 
  int originalNum ; 
  int j ; 
  int count = 0 ; 
  double sum ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   } 
  j = 1 ; 
  while  ( j <=  ( *num )  )   { 
    sum = 0 ; 
    originalNum = j ; 
    numDigits =  ( int ) log10 ( j )  + 1 ; 
    while  ( originalNum > 0 )   { 
      rem = originalNum % 10 ; 
      sum += pow ( rem ,  numDigits )  ; 
      originalNum /= 10 ; 
     } 
    if  (  ( int ) sum == j )   { 
       { 
         ( *temptemp2 )  = j ; 
         ; 
       } 
      count++ ; 
     } 
    j++ ; 
   } 
   { 
     ( *temptemp3 )  =  ( *num )  ; 
     ( *temptemp4 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
