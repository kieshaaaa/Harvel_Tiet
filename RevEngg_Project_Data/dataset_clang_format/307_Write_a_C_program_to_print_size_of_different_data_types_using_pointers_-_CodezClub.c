#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
   { 
     ( *temptemp1 )  = sizeof ( char* )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = sizeof ( int* )  ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = sizeof ( float* )  ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = sizeof ( long int* )  ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = sizeof ( double* )  ; 
     ; 
   } 
  return 0 ; 
 } 
