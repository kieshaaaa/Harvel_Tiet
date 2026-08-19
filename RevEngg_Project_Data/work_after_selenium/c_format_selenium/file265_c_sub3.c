#include <stdio.h>

void subtract ( int x ,  int y )   { 
  x -= 1 ; 
  y -= 1 ; 
   ; 
 } 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int b = 20 ; 
  int a = 10 ; 
   { 
     ( *temptemp1 )  = a ; 
     ( *temptemp2 )  = b ; 
     ; 
   } 
  subtract ( a ,  b )  ; 
   { 
     ( *temptemp3 )  = a ; 
     ( *temptemp4 )  = b ; 
     ; 
   } 
  return 0 ; 
 } 
