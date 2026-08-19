#include <stdio.h>

int entry_point ( int ( *rows )  ,  char ( *temptemp1 )  )   { 
  int k ; 
  int j ; 
  int i ; 
   ; 
  for  ( i = 1 ;  i <=  ( *rows )  ;  i++ )   { 
    char line [ 200 ]  =  { 0 }  ; 
    k = 0 ; 
    for  ( j = 1 ;  j <=  ( *rows )  - i ;  j++ ,  k++ )   { 
      line [ k ]  = ' ' ; 
     } 
    for  ( j = 1 ;  j <= i ;  j++ ,  k += 2 )   { 
      line [ k ]  = '*' ; 
      if  ( j < i )   { 
        line [ k + 1 ]  = ' ' ; 
       } 
     } 
     { 
       ( *temptemp1 )  = line ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
