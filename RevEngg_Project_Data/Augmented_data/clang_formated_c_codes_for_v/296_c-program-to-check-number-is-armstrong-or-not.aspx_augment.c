#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int originalNum ; 
  int digit ; 
  int sum = 0 ; 
   ; 
  originalNum =  ( *num )  ; 
  for  (  ;   ( *num )  != 0 ;  )   { 
    digit =  ( *num )  % 10 ; 
    sum = sum +  ( digit * digit * digit )  ; 
     ( *num )  /= 10 ; 
   } 
  if  ( sum == originalNum )   { 
     ( *temptemp1 )  = originalNum ; 
     ; 
   }  else  { 
     ( *temptemp2 )  = originalNum ; 
     ; 
   } 
  return 0 ; 
 } 
