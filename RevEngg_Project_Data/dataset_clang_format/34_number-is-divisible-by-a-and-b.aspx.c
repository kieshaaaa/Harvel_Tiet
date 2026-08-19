#include <stdio.h>

int CheckDivision ( int num ,  int a ,  int b )   { 
  if  ( num % a == 0 && num % b == 0 ) 
    return 1 ; 
  else
    return 0 ; 
 } 
int entry_point ( int ( *number )  ,  int ( *A )  ,  int ( *B )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  ,  int ( *temptemp6 )  )   { 
   ; 
   ; 
   ; 
   ; 
   ; 
  if  ( CheckDivision (  ( *number )  ,   ( *A )  ,   ( *B )  )  )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ( *temptemp2 )  =  ( *A )  ; 
     ( *temptemp3 )  =  ( *B )  ; 
     ; 
   }  else  { 
     ( *temptemp4 )  =  ( *number )  ; 
     ( *temptemp5 )  =  ( *A )  ; 
     ( *temptemp6 )  =  ( *B )  ; 
     ; 
   } 
  return 0 ; 
 } 
