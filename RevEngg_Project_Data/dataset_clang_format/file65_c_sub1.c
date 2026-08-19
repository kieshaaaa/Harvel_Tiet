#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
  int i = 0 ; 
   ; 
  while  ( i <  ( *n )  )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    i++ ; 
   } 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
    if  ( arr [ i ]  < 0 )   { 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
