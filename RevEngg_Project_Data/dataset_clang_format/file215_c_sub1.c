#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i ; 
  int smallest ; 
  int largest ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
   } 
  largest = smallest = arr [ 0 ]  ; 
  for  ( i = 1 ;  i < 10 ;  i++ )   { 
    if  ( arr [ i ]  > largest )   { 
      largest = arr [ i ]  ; 
     } 
    if  ( arr [ i ]  < smallest )   { 
      smallest = arr [ i ]  ; 
     } 
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
