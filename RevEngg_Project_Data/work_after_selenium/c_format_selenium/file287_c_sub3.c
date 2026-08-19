#include <stdio.h>

int entry_point ( int ( *size )  )   { 
  int j ; 
  int i ; 
   ; 
  if  (  ( *size )  < 1 )   { 
     ; 
    return -1 ; 
   } 
  for  ( i = 1 ;  i <=  ( *size )  ;  i++ )   { 
    for  ( j = 1 ;  j <=  ( *size )  * 2 ;  j++ )   { 
      if  ( j == i || j ==  (  ( *size )  * 2 )  - i + 1 )   { 
         ; 
       }  else  { 
         ; 
       } 
     }  ; 
   } 
  for  ( i =  ( *size )  - 1 ;  i > 0 ;  i-- )   { 
    for  ( j = 1 ;  j <=  ( *size )  * 2 ;  j++ )   { 
      if  ( j == i || j ==  (  ( *size )  * 2 )  - i + 1 )   { 
         ; 
       }  else  { 
         ; 
       } 
     }  ; 
   } 
  return 0 ; 
 } 
