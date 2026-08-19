#include <stdio.h>

void value ( int x ,  int y )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int b = 8 ; 
  int a = 5 ; 
   { 
     ( *temptemp1 )  = a ; 
     ( *temptemp2 )  = b ; 
     ; 
   } 
  value ( a ,  b )  ; 
   { 
     ( *temptemp3 )  = a ; 
     ( *temptemp4 )  = b ; 
     ; 
   } 
  return 0 ; 
 } 
void value ( int x ,  int y )   { 
  x++ ; 
  y++ ; 
   ; 
 } 
