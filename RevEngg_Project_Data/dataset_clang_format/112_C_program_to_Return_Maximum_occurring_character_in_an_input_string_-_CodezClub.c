#include <stdio.h>

int entry_point ( char ( *string )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int frequency [ 255 ]  ; 
  int max ; 
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
  max = 0 ; 
  for  ( i = 0 ;  i < 255 ;  i++ )   { 
    if  ( frequency [ i ]  > frequency [ max ]  )  max = i ; 
   } 
   { 
     ( *temptemp1 )  = max ; 
     ( *temptemp2 )  = frequency [ max ]  ; 
     ; 
   } 
  return 0 ; 
 } 
