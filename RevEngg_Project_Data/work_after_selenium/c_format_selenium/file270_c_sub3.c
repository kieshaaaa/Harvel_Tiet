#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  unsigned int ( *temptemp2 )  )   { 
  char multiple [  ]  = "CodezClub" ; 
  unsigned baseAddress =  ( unsigned ) &multiple [ 0 ]  ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = i ; 
     ( *temptemp2 )  = baseAddress + i ; 
     ; 
   } 
 } 
return 0 ; 
 } 
