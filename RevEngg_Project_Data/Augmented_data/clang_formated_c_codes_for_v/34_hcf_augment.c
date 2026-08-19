#include <math.h>
#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  )   { 
   ; 
   ( *a )  = fabs (  ( *a )  )  ; 
   ( *b )  = fabs (  ( *b )  )  ; 
  int max_val =  ( *a )  >  ( *b )  ?  ( *a )  :  ( *b )  ; 
  int min_val =  ( *a )  <  ( *b )  ?  ( *a )  :  ( *b )  ; 
  int hcf_val ; 
  int remainder ; 
  int iter = 1 ; 
  while  ( iter )   { 
    remainder =  ( *a )  %  ( *b )  ; 
     ( *a )  =  ( *b )  ; 
     ( *b )  = remainder ; 
    if  ( remainder == 0 )  iter = 0 ; 
   } 
  hcf_val =  ( *a )  ; 
   { 
     ( *temptemp1 )  = hcf_val ; 
     ; 
   }  ; 
  return 0 ; 
 } 
