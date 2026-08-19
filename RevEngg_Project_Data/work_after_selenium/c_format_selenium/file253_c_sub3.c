#include <stdio.h>

int entry_point ( int ( *num )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
   ; 
  char *status =  ( *num )  > 0 ? "Positive" : "Negative" ; 
  char *evenOddStatus =  (  ( *num )  % 2 == 0 )  ? "Even" : "Odd" ; 
   { 
     ( *temptemp1 )  = status ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = evenOddStatus ; 
     ; 
   } 
  return 0 ; 
 } 
