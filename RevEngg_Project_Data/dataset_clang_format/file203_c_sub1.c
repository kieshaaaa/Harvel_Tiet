#include <stdio.h>

int entry_point ( char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  char string [ 100 ]  ; 
  int frequency [ 255 ]  ; 
  int ascii ; 
  int min ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i < 255 ;  i++ )   { 
    frequency [ i ]  = 0 ; 
   } 
  for  ( i = 0 ;  string [ i ]  != '\0' ;  i++ )   { 
    ascii = string [ i ]  ; 
    frequency [ ascii ] ++ ; 
   } 
  min = 0 ; 
  for  ( i = 1 ;  i < 255 ;  i++ )   { 
    if  ( frequency [ i ]  < frequency [ min ]  && frequency [ i ]  != 0 ||
        frequency [ min ]  == 0 )   { 
      min = i ; 
     } 
   } 
   { 
     ( *temptemp1 )  = min ; 
     ( *temptemp2 )  = frequency [ min ]  ; 
     ; 
   } 
  return 0 ; 
 } 
