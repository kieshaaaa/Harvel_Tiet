#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int sum = 0 ; 
  int j ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  j = 0 ; 
  while  ( j <  ( *n )  )   { 
     { 
       ( *temptemp2 )  = j + 1 ; 
       ; 
     } 
    j++ ; 
   } 
  j = 0 ; 
  while  ( j <  ( *n )  )   { 
    sum = sum + array [ j ]  ; 
    j++ ; 
   } 
   { 
     ( *temptemp3 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
