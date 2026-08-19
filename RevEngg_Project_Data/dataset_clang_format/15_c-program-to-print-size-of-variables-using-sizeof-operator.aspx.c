#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  char a = 'A' ; 
  int b = 120 ; 
  float c = 123.0f ; 
  double d = 1222.90 ; 
  char str [  ]  = "Hello" ; 
   { 
     ( *temptemp1 )  = sizeof ( a )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = sizeof ( b )  ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = sizeof ( c )  ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = sizeof ( d )  ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = sizeof ( str )  ; 
     ; 
   } 
  return 0 ; 
 } 
