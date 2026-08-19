#include <math.h>
#include <stdio.h>

int entry_point ( int ( *lowerBound )  ,  int ( *upperBound )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int nDigits ; 
  int remainder ; 
  int num ; 
  int temp ; 
  int counter ; 
  int sumOfPowers ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *lowerBound )  ; 
     ( *temptemp2 )  =  ( *upperBound )  ; 
     ; 
   } 
  counter =  ( *lowerBound )  ; 
  while  ( counter <=  ( *upperBound )  )   { 
    temp = counter ; 
    num = counter ; 
    nDigits = 0 ; 
    while  ( temp != 0 )   { 
      temp = temp / 10 ; 
      nDigits = nDigits + 1 ; 
     } 
    temp = counter ; 
    sumOfPowers = 0 ; 
    while  ( temp != 0 )   { 
      remainder = temp % 10 ; 
      sumOfPowers = sumOfPowers + pow ( remainder ,  nDigits )  ; 
      temp = temp / 10 ; 
     } 
    if  ( sumOfPowers == num )   { 
       { 
         ( *temptemp3 )  = counter ; 
         ; 
       } 
     } 
    counter++ ; 
   } 
  return 0 ; 
 } 
