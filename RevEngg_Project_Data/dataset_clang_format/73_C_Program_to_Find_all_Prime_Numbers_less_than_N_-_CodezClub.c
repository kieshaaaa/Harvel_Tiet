#include <stdio.h>

int entry_point ( int ( *lim_up )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int n ; 
  int prime ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *lim_up )  ; 
     ; 
   } 
  for  ( n = 1 ;  n <  ( *lim_up )  ;  n++ )   { 
    prime = 1 ; 
    for  ( i = 2 ;  i < n ;  i++ ) 
      if  ( n % i == 0 )   { 
        prime = 0 ; 
        break ; 
       } 
    if  ( prime )   { 
       ( *temptemp2 )  = n ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
