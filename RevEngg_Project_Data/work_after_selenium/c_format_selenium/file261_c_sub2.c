#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  )   { 
  int sign = 1 ; 
  int i ; 
  int mul = 0 ; 
   ; 
   ; 
  if  (  ( *a )  < 0 &&  ( *b )  < 0 )   { 
     ( *a )  = - ( *a )  ; 
     ( *b )  = - ( *b )  ; 
   }  else if  (  ( *a )  < 0 ||  ( *b )  < 0 )   { 
    sign = -1 ; 
    if  (  ( *a )  < 0 ) 
       ( *a )  = - ( *a )  ; 
    else
       ( *b )  = - ( *b )  ; 
   } 
  for  ( i = 0 ;  i <  ( *b )  ;  i++ )   { 
    mul +=  ( *a )  ; 
   } 
  mul *= sign ; 
   { 
     ( *temptemp1 )  = mul ; 
     ; 
   } 
  return 0 ; 
 } 
