#include <stdio.h>

long fact ( int )  ; 
int entry_point ( int ( *line )  ,  long int ( *temptemp1 )  )   { 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *line )  ;  i++ )   { 
    for  ( j = 0 ;  j <  ( *line )  - i - 1 ;  j++ ) 
       ; 
    for  ( j = 0 ;  j <= i ;  j++ )   { 
       ( *temptemp1 )  = fact ( i )  /  ( fact ( j )  * fact ( i - j )  )  ; 
       ; 
     }  ; 
   } 
  return 0 ; 
 } 
long fact ( int num )   { 
  long f = 1 ; 
  int i = 1 ; 
  while  ( i <= num )   { 
    f = f * i ; 
    i++ ; 
   } 
  return f ; 
 } 
