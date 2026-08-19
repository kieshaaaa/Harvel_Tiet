#include <stdio.h>

int entry_point ( int ( *upperLimit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int num2 = 1 ; 
  int num1 = 0 ; 
  int total = 0 ; 
  int fibCount = 0 ; 
   ; 
  if  (  ( *upperLimit )  < 1 )   { 
     { 
       ( *temptemp1 )  =  ( *upperLimit )  ; 
       ; 
     } 
    return 0 ; 
   } 
  if  (  ( *upperLimit )  >= 1 )   { 
    fibCount++ ; 
   } 
  int i = 0 ; 
  while  ( i < 1000 )   { 
    if  ( total >  ( *upperLimit )  )  break ; 
    total = num1 + num2 ; 
    num1 = num2 ; 
    num2 = total ; 
    if  ( total <=  ( *upperLimit )  )   { 
      fibCount++ ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp2 )  =  ( *upperLimit )  ; 
     ( *temptemp3 )  = fibCount ; 
     ; 
   } 
  return 0 ; 
 } 
