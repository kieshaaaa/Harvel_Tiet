#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  char a = 'B' ; 
  int b = 345 ; 
  float c = 456.78f ; 
  float d = 2345.67f ; 
  char str [  ]  = "World" ; 
  int size_a = sizeof ( a )  ; 
  int size_b = sizeof ( b )  ; 
  int size_c = sizeof ( c )  ; 
  int size_d = sizeof ( d )  ; 
  int size_str = sizeof ( str )  ; 
   { 
     ( *temptemp1 )  = size_a ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = size_b ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = size_c ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = size_d ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = size_str ; 
     ; 
   } 
  return 0 ; 
 } 
