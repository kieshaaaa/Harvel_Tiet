#include <stdio.h>

int increment ( int x )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int a = 15 ; 
   { 
     ( *temptemp1 )  = a ; 
     ; 
   } 
  a = increment ( a )  ; 
   { 
     ( *temptemp2 )  = a ; 
     ; 
   } 
  return 0 ; 
 } 
int increment ( int x )   {  return x + 1 ;   } 
