#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int size_char = sizeof ( char )  ; 
  int size_int = sizeof ( int )  ; 
  int size_float = sizeof ( float )  ; 
  int size_long_int = sizeof ( long int )  ; 
   { 
     ( *temptemp1 )  = size_char ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = size_int ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = size_float ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = size_long_int ; 
     ; 
   } 
  return 0 ; 
 } 
