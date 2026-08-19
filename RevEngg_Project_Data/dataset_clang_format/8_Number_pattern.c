#include <stdio.h>

int entry_point ( int ( *temptemp1 )  )   { 
  int j ; 
  int i ; 
  for  ( i = 1 ;  i < 5 ;  i++ )   { 
    for  ( j = 1 ;  j <= i ;  j++ )   { 
       { 
         ( *temptemp1 )  = j ; 
         ; 
       } 
     }  ; 
   } 
  return 0 ; 
 } 
