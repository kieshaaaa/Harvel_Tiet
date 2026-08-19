#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int Mod ; 
  int D ; 
  int M ; 
  int S ; 
  int A ; 
   ; 
   ; 
  A =  ( *a )  +  ( *b )  ; 
  S =  ( *a )  -  ( *b )  ; 
  M =  ( *a )  *  ( *b )  ; 
  D =  ( *a )  /  ( *b )  ; 
  Mod =  ( *a )  %  ( *b )  ; 
   { 
     ( *temptemp1 )  = A ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = S ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = M ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = D ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = Mod ; 
     ; 
   } 
  return 0 ; 
 } 
