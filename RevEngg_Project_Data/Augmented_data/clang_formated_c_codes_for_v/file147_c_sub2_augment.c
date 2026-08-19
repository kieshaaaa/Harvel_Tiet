#include <stdio.h>

int entry_point ( int ( *num_terms )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i = 0 ; 
  int c ; 
  int b = 1 ; 
  int a = 0 ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *num_terms )  ; 
     ; 
   } 
  for  ( i = 0 ;  i <  ( *num_terms )  ;  i++ )   { 
    if  ( i <= 1 )   { 
      c = i ; 
     }  else  { 
      c = a + b ; 
      a = b ; 
      b = c ; 
     } 
     { 
       ( *temptemp2 )  = c ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
