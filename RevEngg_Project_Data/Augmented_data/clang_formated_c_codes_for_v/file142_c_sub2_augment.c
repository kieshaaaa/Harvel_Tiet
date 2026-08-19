#include <stdio.h>

int entry_point ( int ( *upperLimit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int total ; 
  int divisor ; 
  int num ; 
  int perfectNumCount = 0 ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *upperLimit )  ; 
     ; 
   } 
  num = 1 ; 
  while  ( num <=  ( *upperLimit )  )   { 
    total = 0 ; 
    divisor = 1 ; 
    while  ( divisor <= num / 2 )   { 
      if  ( num % divisor == 0 )   { 
        total += divisor ; 
       } 
      divisor++ ; 
     } 
    if  ( total == num )   { 
       { 
         ( *temptemp2 )  = num ; 
         ; 
       } 
      perfectNumCount++ ; 
     } 
    num++ ; 
   } 
   { 
     ( *temptemp3 )  =  ( *upperLimit )  ; 
     ( *temptemp4 )  = perfectNumCount ; 
     ; 
   } 
  return 0 ; 
 } 
