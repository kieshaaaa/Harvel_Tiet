#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *temptemp1 )  ,  unsigned int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                unsigned int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                unsigned int ( *temptemp6 )  )   { 
  int arr [ 3 ]  =  { 11 ,  22 ,  33 }  ; 
   { 
     ( *temptemp1 )  = arr [ 0 ]  ; 
     ( *temptemp2 )  = &arr [ 0 ]  ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = arr [ 1 ]  ; 
     ( *temptemp4 )  = &arr [ 1 ]  ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = arr [ 2 ]  ; 
     ( *temptemp6 )  = &arr [ 2 ]  ; 
     ; 
   } 
  return  ( 0 )  ; 
  return 0 ; 
 } 
