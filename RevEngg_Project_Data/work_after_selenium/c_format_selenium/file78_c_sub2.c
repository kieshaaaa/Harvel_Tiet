#include <stdio.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int count = 0 ; 
  int isPrime ; 
  int j ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *start )  ; 
     ( *temptemp2 )  =  ( *end )  ; 
     ; 
   } 
  if  (  ( *start )  <= 2 )   { 
     ; 
     ( *start )  = 3 ; 
    count++ ; 
   } 
  if  (  ( *start )  % 2 == 0 )   ( *start ) ++ ; 
  for  ( i =  ( *start )  ;  i <=  ( *end )  ;  i += 2 )   { 
    isPrime = 1 ; 
    for  ( j = 3 ;  j * j <= i ;  j += 2 )   { 
      if  ( i % j == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
     } 
    if  ( isPrime == 1 )   { 
       { 
         ( *temptemp3 )  = i ; 
         ; 
       } 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp4 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
