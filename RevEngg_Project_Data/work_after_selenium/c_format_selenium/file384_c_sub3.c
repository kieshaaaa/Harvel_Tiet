#include <stdio.h>

int entry_point ( int ( *lines )  ,  long int ( *temptemp1 )  )   { 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *lines )  ;  i++ )   { 
     ; 
    long value = 1 ; 
    for  ( j = 0 ;  j <= i ;  j++ )   { 
       { 
         ( *temptemp1 )  = value ; 
         ; 
       } 
      value = value *  ( i - j )  /  ( j + 1 )  ; 
     }  ; 
   } 
  return 0 ; 
 } 
