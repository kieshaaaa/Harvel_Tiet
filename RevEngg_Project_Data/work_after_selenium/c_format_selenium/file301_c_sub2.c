#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int space ; 
  int j ; 
  int i ; 
  int rows = 8 ; 
  int count = 1 ; 
  for  ( i = rows ;  i >= 1 ;  --i )   { 
    for  ( space = 0 ;  space < rows - i ;  ++space ) 
       ; 
    for  ( j = i ;  j <= 2 * i - 1 ;  ++j )   { 
       { 
         ( *temptemp1 )  = count ; 
         ; 
       } 
      count++ ; 
     } 
    for  ( j = 0 ;  j < i - 1 ;  ++j )   { 
       { 
         ( *temptemp2 )  = count ; 
         ; 
       } 
      count++ ; 
     }  ; 
   } 
  return 0 ; 
 } 
