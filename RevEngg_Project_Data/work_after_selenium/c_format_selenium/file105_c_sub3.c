#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int count = 0 ; 
  int isComposite ; 
   ; 
  if  (  ( *n )  > 2 )  count =  (  ( *n )  - 2 )  / 2 ; 
  for  ( i = 3 ;  i <=  ( *n )  ;  i += 2 )   { 
    isComposite = 0 ; 
    for  ( j = 3 ;  j * j <= i ;  j += 2 )   { 
      if  ( i % j == 0 )   { 
        isComposite = 1 ; 
        break ; 
       } 
     } 
    if  ( isComposite )   { 
      count++ ; 
     }  else if  ( i == 2 )   { 
     } 
   } 
  count +=  (  ( *n )  >= 2 )  ? 1 : 0 ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
