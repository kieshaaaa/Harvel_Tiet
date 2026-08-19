#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int fact = 1 ; 
   ; 
  if  (  ( *num )  < 0 )   { 
     ; 
   }  else  { 
    j = 1 ; 
    while  ( j <=  ( *num )  )   { 
      fact = fact * j ; 
      j++ ; 
     } 
     { 
       ( *temptemp1 )  =  ( *num )  ; 
       ( *temptemp2 )  = fact ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
