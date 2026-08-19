#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int counter = 0 ; 
  int cubed = 1 ; 
  int j ; 
   ; 
  j = 1 ; 
  while  ( cubed <=  ( *limit )  && cubed > 0 )   { 
    cubed = j * j * j ; 
    if  ( cubed <=  ( *limit )  && cubed > 0 )   { 
      counter = counter + 1 ; 
     } 
    j++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ( *temptemp2 )  = counter ; 
     ; 
   } 
  return 0 ; 
 } 
