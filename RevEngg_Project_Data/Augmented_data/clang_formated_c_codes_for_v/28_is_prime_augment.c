#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
   ; 
  if  (  ( *n )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   }  else if  (  ( *n )  == 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  if  (  ( *n )  & 1 )   { 
    j = 2 ; 
    while  ( j <= sqrt (  ( *n )  )  )   { 
      if  ( ! (  ( *n )  % j )  )  break ; 
      j++ ; 
     } 
   } 
  if  ( j > sqrt (  ( *n )  )  )   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *n )  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
