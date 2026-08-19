#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  ,  int ( *temptemp6 )  , 
                int ( *temptemp7 )  )   { 
  int int_var ; 
  float float_var ; 
  char char_var ; 
  int int_array [ 5 ]  ; 
  int size ; 
   { 
     ( *temptemp1 )  = sizeof ( int_var )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = sizeof ( float_var )  ; 
     ; 
   } 
  size = sizeof ( char_var )  ; 
   { 
     ( *temptemp3 )  = sizeof ( char_var )  ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = sizeof ( short )  ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = sizeof ( long )  ; 
     ; 
   } 
   { 
     ( *temptemp6 )  = sizeof ( double )  ; 
     ; 
   } 
   { 
     ( *temptemp7 )  = sizeof ( int_array )  ; 
     ; 
   } 
  return 0 ; 
 } 
