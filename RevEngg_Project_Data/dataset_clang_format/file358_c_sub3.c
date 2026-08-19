#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
   ; 
  if  (  ( *n )  < 0 )   { 
     ; 
    return 1 ; 
   } 
  if  (  ( *n )  == 0 )   { 
     ; 
    return 0 ; 
   } 
  int fib [  ( *n )  + 1 ]  ; 
  fib [ 0 ]  = 0 ; 
  fib [ 1 ]  = 1 ; 
  int i = 2 ; 
  fib [ i ]  = fib [ i - 1 ]  + fib [ i - 2 ]  ; 
 } 
 { 
   ( *temptemp1 )  = fib [  ( *n )  ]  ; 
   ; 
 } 
return 0 ; 
 } 
