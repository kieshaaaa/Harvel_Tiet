#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i ; 
   ; 
   ; 
  while  (  ( *num )  % 2 == 0 )   { 
     { 
       ( *temptemp1 )  = 2 ; 
       ; 
     } 
     ( *num )  =  ( *num )  / 2 ; 
   } 
  for  ( i = 3 ;  i * i <=  ( *num )  ;  i += 2 )   { 
    while  (  ( *num )  % i == 0 )   { 
       { 
         ( *temptemp2 )  = i ; 
         ; 
       } 
       ( *num )  =  ( *num )  / i ; 
     } 
   } 
  if  (  ( *num )  > 2 )   { 
     ( *temptemp3 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
