#include <stdio.h>

int entry_point ( int ( *n )  )   { 
  int j ; 
  int i ; 
   ; 
  if  (  ( *n )  < 1 )   { 
     ; 
    return -1 ; 
   } 
  for  ( i = 1 ;  i <=  ( *n )  ;  i++ )   { 
    for  ( j = 1 ;  j <= 2 *  ( *n )  ;  j++ )   { 
      if  ( j == i || j == 2 *  ( *n )  - i + 1 )   { 
         ; 
       }  else  { 
         ; 
       } 
     }  ; 
   } 
  for  ( i =  ( *n )  - 1 ;  i >= 1 ;  i-- )   { 
    for  ( j = 1 ;  j <= 2 *  ( *n )  ;  j++ )   { 
      if  ( j == i || j == 2 *  ( *n )  - i + 1 )   { 
         ; 
       }  else  { 
         ; 
       } 
     }  ; 
   } 
  return 0 ; 
 } 
