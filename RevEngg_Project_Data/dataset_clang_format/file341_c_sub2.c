#include <stdio.h>

void Strfun ( char arr [  ]  [ 50 ]  ,  int count )   { 
  int i ; 
  for  ( i = 0 ;  i < count ;  i++ )   { 
     ; 
    fputs ( arr [ i ]  ,  stdout )  ; 
   } 
 } 
int entry_point (  )   { 
  char buff [ 3 ]  [ 50 ]  =  { "Hello function" ,  "How are you?" ,  "Catch some strings" }  ; 
  Strfun ( buff ,  3 )  ; 
  return 0 ; 
 } 
