#include <stdio.h>

int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str2 [ 100 ]  ; 
  char str1 [ 100 ]  ; 
  int i = 0 ; 
   ; 
  for  ( i = 0 ;  str1 [ i ]  != '\0' ;  ++i )   { 
    str2 [ i ]  = str1 [ i ]  ; 
   } 
  str2 [ i ]  = '\0' ; 
   ; 
   { 
     ( *temptemp1 )  = str1 ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  = str2 ; 
     ; 
   }  ; 
  return 0 ; 
 } 
