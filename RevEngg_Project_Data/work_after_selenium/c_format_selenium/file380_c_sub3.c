#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  )   { 
  int remainder ; 
  int digits = 0 ; 
  int originalNum ; 
  float armstrongSum = 0 ; 
   ; 
  if  (  ( *num )  < 0 )   { 
     ; 
    return 0 ; 
   } 
  for  ( originalNum =  ( *num )  ;  originalNum != 0 ;  originalNum /= 10 ,  ++digits ) 
     ; 
  originalNum =  ( *num )  ; 
  while  ( originalNum != 0 )   { 
    remainder = originalNum % 10 ; 
    armstrongSum += pow ( remainder ,  digits )  ; 
    originalNum /= 10 ; 
   } 
  if  (  ( int ) armstrongSum ==  ( *num )  ) 
     ; 
  else
     ; 
  return 0 ; 
 } 
