#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int composite ; 
  int count = 0 ; 
   ; 
  for  ( i = 4 ;  i <=  ( *n )  ;  i++ )   { 
    composite = 0 ; 
    for  ( j = 2 ;  j < i ;  j++ )   { 
      if  ( i % j == 0 )   { 
        composite = 1 ; 
        break ; 
       } 
     } 
    if  ( composite )   { 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
