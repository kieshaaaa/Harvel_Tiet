#include <stdio.h>

void swap ( int* a ,  int* b )  ; 
int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ; 
   } 
  swap ( & ( *a )  ,  & ( *b )  )  ; 
   { 
     ( *temptemp3 )  =  ( *a )  ; 
     ( *temptemp4 )  =  ( *b )  ; 
     ; 
   } 
  return 0 ; 
 } 
void swap ( int* a ,  int* b )   { 
  *a = *a ^ *b ; 
  *b = *a ^ *b ; 
  *a = *a ^ *b ; 
 } 
