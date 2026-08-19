#include <stdio.h>

int factorial ( int n )   { 
  int result = 1 ; 
  int i ; 
  for  ( i = 2 ;  i <= n ;  ++i )   { 
    result *= i ; 
    if  ( result < 0 )   { 
      return -1 ; 
     } 
   } 
  return result ; 
 } 
int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
   ; 
   ; 
  for  ( j =  ( *lower )  ;  j <=  ( *upper )  && j >= 0 ;  j++ )   { 
    int fact = factorial ( j )  ; 
    if  ( fact <=  ( *upper )  && fact > 0 )   { 
       { 
         ( *temptemp1 )  = j ; 
         ( *temptemp2 )  = fact ; 
         ; 
       } 
     }  else  { 
      break ; 
     } 
   } 
  return 0 ; 
 } 
