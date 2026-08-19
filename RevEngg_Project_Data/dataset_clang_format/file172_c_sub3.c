#include <stdio.h>

int entry_point ( char ( *name )  ,  int ( *age )  ,  float ( *temptemp1 )  )   { 
  int isEligibleForConcession = 0 ; 
  float price = 600.0f ; 
   ; 
   ; 
  if  (  ( *age )  < 6 ||  ( *age )  >= 60 )   { 
    isEligibleForConcession = 1 ; 
   } 
  if  ( isEligibleForConcession )   { 
    price *= 0.7f ; 
     ; 
   }  ; 
   { 
     ( *temptemp1 )  = price ; 
     ; 
   } 
  return 0 ; 
 } 
