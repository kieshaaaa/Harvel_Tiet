#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int freq [ 255 ]  ; 
  int minIndex ; 
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
  minIndex = 0 ; 
  i = 0 ; 
  while  ( i < 255 )   { 
    if  ( freq [ i ]  != 0 )   { 
      if  ( freq [ minIndex ]  == 0 || freq [ i ]  < freq [ minIndex ]  )  minIndex = i ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = minIndex ; 
     ( *temptemp2 )  = freq [ minIndex ]  ; 
     ; 
   } 
  return 0 ; 
 } 
