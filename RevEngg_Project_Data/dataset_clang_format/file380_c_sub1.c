#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  )   { 
  int digits = 0 ; 
  int remainder ; 
  int originalNum ; 
  float armstrongSum = 0 ; 
   ; 
  if  (  ( *num )  < 0 )   { 
     ; 
    return 0 ; 
   } 
  originalNum =  ( *num )  ; 
  for  (  ;  originalNum != 0 ;  ++digits )   { 
    originalNum /= 10 ; 
   } 
  originalNum =  ( *num )  ; 
  for  (  ;  originalNum != 0 ;  originalNum /= 10 )   { 
    remainder = originalNum % 10 ; 
    armstrongSum += pow ( remainder ,  digits )  ; 
   } 
  if  (  ( int ) armstrongSum ==  ( *num )  ) 
     ; 
  else
     ; 
  return 0 ; 
 } 
