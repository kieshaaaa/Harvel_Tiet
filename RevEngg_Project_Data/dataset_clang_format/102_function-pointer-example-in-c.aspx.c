#include <stdio.h>

int addTwoNumbers ( int x ,  int y )   {  return x + y ;   } 
int entry_point ( int ( *temptemp1 )  )   { 
  int sum ; 
  int b ; 
  int a ; 
  int  ( *ptr_sum )  ( int ,  int )  ; 
  ptr_sum = &addTwoNumbers ; 
  a = 10 ; 
  b = 20 ; 
  sum =  ( *ptr_sum )  ( a ,  b )  ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
