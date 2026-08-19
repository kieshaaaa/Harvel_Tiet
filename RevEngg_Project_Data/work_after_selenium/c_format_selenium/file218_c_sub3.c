#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int mul = 0 ; 
  int loop ; 
  int positiveResult = 1 ; 
   ; 
   ; 
  if  (  ( *a )  < 0 )   { 
     ( *a )  = abs (  ( *a )  )  ; 
    positiveResult = !positiveResult ; 
   } 
  if  (  ( *b )  < 0 )   { 
     ( *b )  = abs (  ( *b )  )  ; 
    positiveResult = !positiveResult ; 
   } 
  for  ( loop = 1 ;  loop <=  ( *b )  ;  loop++ )   { 
    mul +=  ( *a )  ; 
   } 
  if  ( !positiveResult )   { 
    mul = -mul ; 
   } 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = mul ; 
     ; 
   } 
  return 0 ; 
 } 
