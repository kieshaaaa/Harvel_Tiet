#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int flag = 1 ; 
  int i ; 
   ; 
  if  (  ( *n )  <= 1 )  flag = 0 ; 
  for  ( i = 2 ;  i <= sqrt (  ( *n )  )  ;  i++ )   { 
    if  (  ( *n )  % i == 0 )   { 
      flag = 0 ; 
      break ; 
     } 
   } 
  if  ( flag == 1 )   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *n )  ; 
     ; 
   } 
  return 0 ; 
 } 
