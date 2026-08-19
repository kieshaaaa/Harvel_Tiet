#include <stdio.h>

int a = 10 ; 
void fun ( void )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int a = 20 ; 
  int b = 30 ; 
   { 
     ( *temptemp1 )  = a ; 
     ( *temptemp2 )  = b ; 
     ; 
   } 
  fun (  )  ; 
   { 
     ( *temptemp3 )  = b ; 
     ; 
   } 
  return 0 ; 
 } 
void fun ( void )   { 
  int b = 40 ; 
   ; 
   ; 
 } 
