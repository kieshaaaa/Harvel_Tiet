#include <stdio.h>

void cyclicSwap ( int *a ,  int *b ,  int *c )  ; 
int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                int ( *temptemp6 )  )   { 
   ; 
   ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  =  ( *c )  ; 
     ; 
   } 
  cyclicSwap ( & ( *a )  ,  & ( *b )  ,  & ( *c )  )  ; 
   ; 
   { 
     ( *temptemp4 )  =  ( *a )  ; 
     ( *temptemp5 )  =  ( *b )  ; 
     ( *temptemp6 )  =  ( *c )  ; 
     ; 
   } 
  return 0 ; 
 } 
void cyclicSwap ( int *a ,  int *b ,  int *c )   { 
  int temp ; 
  temp = *b ; 
  *b = *a ; 
  *a = *c ; 
  *c = temp ; 
 } 
