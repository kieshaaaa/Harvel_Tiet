#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *data )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int smallest ; 
  int largest ; 
  int j ; 
   ; 
  j = 0 ; 
  while  ( j <  ( *n )  )   { 
     { 
       ( *temptemp1 )  = j ; 
       ; 
     } 
    if  ( j == 0 )   { 
      largest = smallest = data [ 0 ]  ; 
     }  else  { 
      if  ( data [ j ]  > largest )  largest = data [ j ]  ; 
      if  ( data [ j ]  < smallest )  smallest = data [ j ]  ; 
     } 
    j++ ; 
   } 
   { 
     ( *temptemp2 )  = largest ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = smallest ; 
     ; 
   } 
  return 0 ; 
 } 
