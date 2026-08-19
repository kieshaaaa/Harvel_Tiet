#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  unsigned int ( *temptemp2 )  )   { 
  char multiple [  ]  = "CodezClub" ; 
  unsigned baseAddress =  ( unsigned ) multiple ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = i ; 
     ( *temptemp2 )  = baseAddress + i * sizeof ( char )  ; 
     ; 
   } 
 } 
return 0 ; 
 } 
