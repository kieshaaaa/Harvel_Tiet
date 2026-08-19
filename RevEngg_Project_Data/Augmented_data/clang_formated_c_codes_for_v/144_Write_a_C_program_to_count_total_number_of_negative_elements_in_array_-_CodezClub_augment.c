#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *data )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int negCount = 0 ; 
  int j ; 
   ; 
   ; 
  j = 0 ; 
  while  ( j <  ( *num )  )   { 
     { 
       ( *temptemp1 )  = j + 1 ; 
       ; 
     } 
    j++ ; 
   } 
  j = 0 ; 
  while  ( j <  ( *num )  )   { 
    if  ( data [ j ]  < 0 )   { 
      negCount++ ; 
     } 
    j++ ; 
   } 
   { 
     ( *temptemp2 )  = negCount ; 
     ; 
   } 
  return 0 ; 
 } 
