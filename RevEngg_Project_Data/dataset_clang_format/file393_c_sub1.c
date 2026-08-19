#include <stdio.h>

int entry_point ( int ( *decimal )  )   { 
  int index = 0 ; 
  char binary [ 32 ]  ; 
   ; 
  if  (  ( *decimal )  == 0 )   { 
     ; 
   }  else  { 
     ; 
    while  (  ( *decimal )  > 0 )   { 
      binary [ index++ ]  =  (  ( *decimal )  % 2 )  + '0' ; 
       ( *decimal )  /= 2 ; 
     } 
    int j = index - 1 ; 
    putchar ( binary [ j ]  )  ; 
   }  ; 
 } 
return 0 ; 
 } 
