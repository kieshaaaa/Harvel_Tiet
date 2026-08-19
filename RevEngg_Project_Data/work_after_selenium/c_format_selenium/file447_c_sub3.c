#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  unsigned int ( *temptemp3 )  )   { 
  int a [ 3 ]  =  { 11 ,  22 ,  33 }  ; 
  int i = 0 ; 
  while  ( i < 3 )   { 
    int value = a [ i ]  ; 
    unsigned int address =  ( unsigned int ) &a [ i ]  ; 
     { 
       ( *temptemp1 )  = i ; 
       ( *temptemp2 )  = value ; 
       ( *temptemp3 )  = address ; 
       ; 
     } 
    i++ ; 
   } 
  return 0 ; 
 } 
