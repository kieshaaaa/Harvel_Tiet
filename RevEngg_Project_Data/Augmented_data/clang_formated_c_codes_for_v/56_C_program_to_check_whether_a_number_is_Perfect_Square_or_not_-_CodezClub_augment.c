#include <math.h>
#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int integerPart ; 
  float floatPart ; 
   ; 
  floatPart = sqrt (  ( double )  ( *number )  )  ; 
  integerPart = floatPart ; 
  if  ( integerPart == floatPart )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
