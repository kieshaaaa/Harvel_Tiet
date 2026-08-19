#include <stdio.h>

int g = 5 ; 
void test (  )  ; 
void showcase (  )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int g = 10 ; 
  int h = 20 ; 
   { 
     ( *temptemp1 )  = g ; 
     ( *temptemp2 )  = h ; 
     ; 
   } 
  test (  )  ; 
  showcase (  )  ; 
   { 
     ( *temptemp3 )  = h ; 
     ; 
   } 
  return 0 ; 
 } 
void test (  )   { 
  int h = 30 ; 
   ; 
   ; 
 } 
void showcase (  )   { 
  int i = 50 ; 
   ; 
   ; 
 } 
