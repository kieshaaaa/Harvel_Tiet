#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int a ; 
  int *p1 ; 
  int **p2 ; 
  p1 = &a ; 
  p2 = &p1 ; 
  a = 100 ; 
   { 
     ( *temptemp1 )  = *p1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = **p2 ; 
     ; 
   } 
  *p1 = 200 ; 
   { 
     ( *temptemp3 )  = *p1 ; 
     ; 
   } 
  **p2 = 200 ; 
   { 
     ( *temptemp4 )  = **p2 ; 
     ; 
   } 
  return 0 ; 
 } 
