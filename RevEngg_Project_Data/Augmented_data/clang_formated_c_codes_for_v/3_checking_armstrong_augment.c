#include <stdio.h>

int entry_point ( int ( *num )  )   { 
  int sum = 0 ; 
  int originalNum ; 
  int rem ; 
   ; 
  originalNum =  ( *num )  ; 
  for  (  ;   ( *num )  != 0 ;  )   { 
    rem =  ( *num )  % 10 ; 
    sum = sum +  ( rem * rem * rem )  ; 
     ( *num )  =  ( *num )  / 10 ; 
   } 
  if  ( originalNum == sum )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
