#include <stdio.h>

void fun1 ( void )   { 
  int array [ 10 ]  =  { 1 ,  2 ,  3 ,  4 ,  5 ,  6 }  ; 
  int i = 0 ,  sum = 0 ; 
  for  ( i = 0 ;  i < 6 ;  i++ )   { 
    sum = sum + array [ i ]  ; 
   }  ; 
 } 
int entry_point (  )   { 
  fun1 (  )  ; 
  return 0 ; 
 } 
