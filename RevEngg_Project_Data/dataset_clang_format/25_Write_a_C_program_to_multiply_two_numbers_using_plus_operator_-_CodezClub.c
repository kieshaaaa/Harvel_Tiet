#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i ; 
  int mul ; 
   ; 
   ; 
  mul = 0 ; 
  for  ( i = 1 ;  i <=  ( *b )  ;  i++ )   { 
    mul +=  ( *a )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = mul ; 
     ; 
   } 
  return 0 ; 
 } 
