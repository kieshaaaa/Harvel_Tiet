#include <stdio.h>

int entry_point ( char ( *message )  )   { 
  char message [  ]  = "Hello World!" ; 
  puts (  ( *message )  )  ; 
  return 0 ; 
 } 
