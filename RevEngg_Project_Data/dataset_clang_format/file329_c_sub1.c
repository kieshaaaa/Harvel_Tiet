#include <stdio.h>

int entry_point ( char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  char string [ 100 ]  ; 
  int frequency [ 255 ]  =  { 0 }  ; 
  int maxChar = 0 ; 
  int maxFreq = 0 ; 
   ; 
  int i = 0 ; 
  frequency [  ( int ) string [ i ]  ] ++ ; 
 } 
int i = 0 ; 
if  ( frequency [ i ]  > maxFreq )   { 
  maxFreq = frequency [ i ]  ; 
  maxChar = i ; 
 } 
 } 
 { 
   ( *temptemp1 )  = maxChar ; 
   ( *temptemp2 )  = maxFreq ; 
   ; 
 } 
return 0 ; 
 } 
