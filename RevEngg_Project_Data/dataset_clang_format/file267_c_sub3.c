#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *A )  ,  int ( *B )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int A [ 20 ]  ,  B [ 20 ]  ,  ADD [ 20 ]  ,  SUB [ 20 ]  ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     }  ; 
     ; 
     { 
       ( *temptemp2 )  = i + 1 ; 
       ; 
     } 
    ADD [ i ]  = A [ i ]  + B [ i ]  ; 
    SUB [ i ]  = A [ i ]  - B [ i ]  ; 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp3 )  = ADD [ i ]  ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp4 )  = SUB [ i ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
