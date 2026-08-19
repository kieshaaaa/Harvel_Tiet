#include <stdio.h>

int entry_point ( char ( *string )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int frequency [ 255 ]  ; 
  int min ; 
  int i = 0 ; 
  int ascii ; 
   ; 
  for  ( i = 0 ;  i < 255 ;  i++ )   { 
    frequency [ i ]  = 0 ; 
   } 
  i = 0 ; 
  while  ( string [ i ]  != '\0' )   { 
    ascii =  ( int ) string [ i ]  ; 
    frequency [ ascii ]  += 1 ; 
    i++ ; 
   } 
  min = 0 ; 
  for  ( i = 0 ;  i < 255 ;  i++ )   { 
    if  ( frequency [ i ]  != 0 )   { 
      if  ( frequency [ min ]  == 0 || frequency [ i ]  < frequency [ min ]  )  min = i ; 
     } 
   } 
   { 
     ( *temptemp1 )  = min ; 
     ( *temptemp2 )  = frequency [ min ]  ; 
     ; 
   } 
  return 0 ; 
 } 
