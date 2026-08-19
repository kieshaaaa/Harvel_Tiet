#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int modulus ; 
  int division ; 
  int multiplication ; 
  int subtraction ; 
  int addition ; 
   ; 
   ; 
  addition =  ( *a )  +  ( *b )  ; 
  subtraction =  ( *a )  -  ( *b )  ; 
  multiplication =  ( *a )  *  ( *b )  ; 
  division =  ( *a )  /  ( *b )  ; 
  modulus =  ( *a )  %  ( *b )  ; 
   { 
     ( *temptemp1 )  = addition ; 
     ( *temptemp2 )  = subtraction ; 
     ( *temptemp3 )  = multiplication ; 
     ( *temptemp4 )  = division ; 
     ( *temptemp5 )  = modulus ; 
     ; 
   } 
  return 0 ; 
 } 
