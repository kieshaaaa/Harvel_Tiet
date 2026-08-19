#include <stdio.h>

int addFive ( int x )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int a = 10 ; 
   { 
     ( *temptemp1 )  = a ; 
     ; 
   } 
  a = addFive ( a )  ; 
   { 
     ( *temptemp2 )  = a ; 
     ; 
   } 
  return 0 ; 
 } 
int addFive ( int x )   { 
  x += 5 ; 
  return x ; 
 } 
