#include <stdio.h>

int a = 7 ; 
void process (  )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int a = 12 ; 
  int b = 22 ; 
  int sum ; 
  sum = a + b ; 
   { 
     ( *temptemp1 )  = a ; 
     ( *temptemp2 )  = b ; 
     ( *temptemp3 )  = sum ; 
     ; 
   } 
  process (  )  ; 
  sum = b - a ; 
   { 
     ( *temptemp4 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
void process (  )   { 
  int b = 32 ; 
  int diff ; 
  diff = b - a ; 
   ; 
   ; 
 } 
