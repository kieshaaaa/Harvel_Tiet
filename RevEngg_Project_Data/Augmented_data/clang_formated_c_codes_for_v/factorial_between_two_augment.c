#include <stdio.h>

int factorial_calc ( int num )   { 
  int res = 1 ; 
  int i = 2 ; 
  while  ( i <= num )   { 
    res *= i ; 
    if  ( res < 0 )   { 
      return -1 ; 
     } 
    i++ ; 
   } 
  return res ; 
 } 
int entry_point ( int ( *lower_bound )  ,  int ( *upper_bound )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  int j ; 
   ; 
   ; 
  j =  ( *lower_bound )  ; 
  while  ( j <=  ( *upper_bound )  && j >= 0 )   { 
    int fact = factorial_calc ( j )  ; 
    if  ( fact <=  ( *upper_bound )  && fact > 0 )   { 
       { 
         ( *temptemp1 )  = j ; 
         ( *temptemp2 )  = fact ; 
         ; 
       } 
     }  else  { 
      break ; 
     } 
    j++ ; 
   } 
  return 0 ; 
 } 
