#include <stdio.h>

int entry_point ( int ( *numElements )  ,  int ( *values )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int total ; 
  int j ; 
   ; 
   ; 
  j = 0 ; 
  while  ( j <  ( *numElements )  )   { 
     { 
       ( *temptemp1 )  = j + 1 ; 
       ; 
     } 
    j++ ; 
   } 
  total = 0 ; 
  j = 0 ; 
  while  ( j <  ( *numElements )  )   { 
    total = total + values [ j ]  ; 
    j++ ; 
   }  ; 
  j = 0 ; 
  while  ( j <  ( *numElements )  )   { 
     { 
       ( *temptemp2 )  = j + 1 ; 
       ( *temptemp3 )  = values [ j ]  ; 
       ; 
     } 
    j++ ; 
   } 
   { 
     ( *temptemp4 )  = total ; 
     ; 
   } 
  return 0 ; 
 } 
