#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  ,  int ( *temptemp6 )  , 
                int ( *temptemp7 )  ,  float ( *temptemp8 )  ,  float ( *temptemp9 )  , 
                float ( *temptemp10 )  )   { 
  int a = 87 ; 
  float b = 4.5 ; 
  int *p1 = &a ; 
  float *p2 = &b ; 
   { 
     ( *temptemp1 )  = p1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = p2 ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = &p1 ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = &p2 ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = a ; 
     ( *temptemp6 )  = *p1 ; 
     ( *temptemp7 )  = * ( &a )  ; 
     ; 
   } 
   { 
     ( *temptemp8 )  = b ; 
     ( *temptemp9 )  = *p2 ; 
     ( *temptemp10 )  = * ( &b )  ; 
     ; 
   } 
  return 0 ; 
 } 
