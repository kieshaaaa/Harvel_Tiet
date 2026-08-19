#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
   ; 
  if  (  ( *num )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   }  else if  (  ( *num )  == 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  if  (  ( *num )  & 1 )   { 
    for  ( i = 2 ;  i <= sqrt (  ( *num )  )  ;  i++ )   { 
      if  ( ! (  ( *num )  % i )  )  break ; 
     } 
   } 
  if  ( i > sqrt (  ( *num )  )  )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
