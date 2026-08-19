#include <stdio.h>

int entry_point ( float ( *temptemp1 )  )   { 
  float area ; 
  float height ; 
  float base ; 
  int check = 0 ; 
  while  ( check != 2 )   { 
    check = 0 ; 
     ; 
    check += scanf ( "%f" ,  &base )  == 1 ; 
     ; 
    check += scanf ( "%f" ,  &height )  == 1 ; 
    if  ( check != 2 )   { 
       ; 
      while  ( getchar (  )  != '\n' ) 
         ; 
     } 
   } 
  area = base * height ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
