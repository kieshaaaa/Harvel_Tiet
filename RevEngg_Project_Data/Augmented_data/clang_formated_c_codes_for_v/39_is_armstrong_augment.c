#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int armstrongFlag ; 
   ; 
  if  (  ( *number )  < 0 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  int digitCount = 0 ; 
  int tempNumber =  ( *number )  ; 
  float sum = 0 ; 
  for  (  ;  tempNumber ;  tempNumber /= 10 )   { 
    digitCount++ ; 
   } 
  tempNumber =  ( *number )  ; 
  for  (  ;  tempNumber ;  tempNumber /= 10 )   { 
    sum += pow ( tempNumber % 10 ,  digitCount )  ; 
   } 
  if  ( sum ==  ( *number )  )   { 
    armstrongFlag = 1 ; 
     { 
       ( *temptemp1 )  = armstrongFlag ; 
       ; 
     } 
   }  else  { 
    armstrongFlag = 0 ; 
     { 
       ( *temptemp2 )  = armstrongFlag ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
