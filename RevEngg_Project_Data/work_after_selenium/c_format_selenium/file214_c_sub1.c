#include <stdio.h>

int addTwoNumbers ( int x ,  int y )   {  return x + y ;   } 
int entry_point ( int ( *temptemp1 )  )   { 
  int sum ; 
  int b = 20 ; 
  int a = 10 ; 
  sum = addTwoNumbers ( a ,  b )  ; 
   ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
