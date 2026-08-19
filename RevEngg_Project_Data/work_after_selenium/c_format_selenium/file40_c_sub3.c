#include <stdio.h>

int addTwoNumbers ( int x ,  int y )   {  return x + y ;   } 
int entry_point ( int ( *temptemp1 )  )   { 
  int sum = addTwoNumbers ( 10 ,  20 )  ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
