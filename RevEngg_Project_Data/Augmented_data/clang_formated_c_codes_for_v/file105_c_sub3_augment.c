#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int b ; 
  int a ; 
  int compositeCount = 0 ; 
  int isComposite ; 
   ; 
  if  (  ( *num )  > 2 )  compositeCount =  (  ( *num )  - 2 )  / 2 ; 
  a = 3 ; 
  while  ( a <=  ( *num )  )   { 
    isComposite = 0 ; 
    b = 3 ; 
    while  ( b * b <= a )   { 
      if  ( a % b == 0 )   { 
        isComposite = 1 ; 
        break ; 
       } 
      b += 2 ; 
     } 
    if  ( isComposite )   { 
      compositeCount++ ; 
     }  else if  ( a == 2 )   { 
     } 
    a += 2 ; 
   } 
  compositeCount +=  (  ( *num )  >= 2 )  ? 1 : 0 ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = compositeCount ; 
     ; 
   } 
  return 0 ; 
 } 
