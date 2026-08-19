#include <stdio.h>

int entry_point (  )   { 
  int count = 1 ; 
  int row = 5 ; 
  int k ; 
  int i ; 
  count = row - 1 ; 
  for  ( k = 1 ;  k <= row ;  k++ )   { 
    for  ( i = 1 ;  i <= count ;  i++ )   { 
       ; 
     } 
    count-- ; 
    for  ( i = 1 ;  i <= 2 * k - 1 ;  i++ )   { 
       ; 
     }  ; 
   } 
  count = 1 ; 
  for  ( k = 1 ;  k <= row - 1 ;  k++ )   { 
    for  ( i = 1 ;  i <= count ;  i++ )   { 
       ; 
     } 
    count++ ; 
    for  ( i = 1 ;  i <= 2 *  ( row - k )  - 1 ;  i++ )   { 
       ; 
     }  ; 
   } 
  return 0 ; 
 } 
