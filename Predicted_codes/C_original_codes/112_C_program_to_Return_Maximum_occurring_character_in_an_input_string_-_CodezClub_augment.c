#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int freq [ 255 ]  ; 
  int maxIndex ; 
  int i = 0 ; 
  int charCode ; 
   ; 
  i = 0 ; 
  while  ( i < 255 )   { 
    freq [ i ]  = 0 ; 
    i++ ; 
   } 
  i = 0 ; 
  while  ( str [ i ]  != '\0' )   { 
    charCode =  ( int ) str [ i ]  ; 
    freq [ charCode ]  += 1 ; 
    i++ ; 
   } 
  maxIndex = 0 ; 
  i = 0 ; 
  while  ( i < 255 )   { 
    if  ( freq [ i ]  > freq [ maxIndex ]  )  maxIndex = i ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = maxIndex ; 
     ( *temptemp2 )  = freq [ maxIndex ]  ; 
     ; 
   } 
  return 0 ; 
 } 