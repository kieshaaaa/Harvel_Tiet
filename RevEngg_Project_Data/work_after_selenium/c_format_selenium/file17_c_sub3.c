#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int fibNext = fib1 + fib2 ; 
  int fib2 = 1 ; 
  int fib1 = 0 ; 
   ; 
   ; 
  if  (  ( *lower )  <= 0 )   { 
     { 
       ( *temptemp1 )  = fib1 ; 
       ; 
     } 
    if  (  ( *upper )  == 0 )  return 0 ; 
   } 
   { 
     ( *temptemp2 )  = fib2 ; 
     ; 
   } 
  do  { 
    if  ( fibNext >=  ( *lower )  )   { 
       { 
         ( *temptemp3 )  = fibNext ; 
         ; 
       } 
     } 
    fib1 = fib2 ; 
    fib2 = fibNext ; 
    fibNext = fib1 + fib2 ; 
   }  while  ( fibNext <=  ( *upper )  )  ; 
  return 0 ; 
 } 
