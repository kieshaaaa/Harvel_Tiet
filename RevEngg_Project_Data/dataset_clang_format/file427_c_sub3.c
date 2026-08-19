#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int tempNum ; 
  int numDigits ; 
  int remainder ; 
  int originalNum ; 
  int i ; 
  int count = 0 ; 
  float sum ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  for  ( i = 1 ;  i <=  ( *n )  ;  i++ )   { 
    sum = 0 ; 
    originalNum = i ; 
    tempNum = originalNum ; 
    numDigits = 0 ; 
    do  { 
      numDigits++ ; 
      tempNum /= 10 ; 
     }  while  ( tempNum != 0 )  ; 
    originalNum = i ; 
    while  ( originalNum > 0 )   { 
      remainder = originalNum % 10 ; 
      sum += pow ( remainder ,  numDigits )  ; 
      originalNum /= 10 ; 
     } 
    if  (  ( int ) sum == i )   { 
       { 
         ( *temptemp2 )  = i ; 
         ; 
       } 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp3 )  =  ( *n )  ; 
     ( *temptemp4 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
