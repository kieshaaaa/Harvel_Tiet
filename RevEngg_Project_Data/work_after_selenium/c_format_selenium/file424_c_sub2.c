#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  char str [ 100 ]  = "" ; 
  int countSpaces = 0 ; 
  int countSpecialChar = 0 ; 
  int countAlphabet = 0 ; 
  int countDigits = 0 ; 
   ; 
  int i = 0 ; 
  char ch = str [ i ]  ; 
  if  ( ch >= '0' && ch <= '9' ) 
    countDigits++ ; 
  else if  (  ( ch >= 'A' && ch <= 'Z' )  ||  ( ch >= 'a' && ch <= 'z' )  ) 
    countAlphabet++ ; 
  else if  ( ch == ' ' ) 
    countSpaces++ ; 
  else
    countSpecialChar++ ; 
 } 
 { 
   ( *temptemp1 )  = countDigits ; 
   ; 
 } 
 { 
   ( *temptemp2 )  = countAlphabet ; 
   ; 
 } 
 { 
   ( *temptemp3 )  = countSpaces ; 
   ; 
 } 
 { 
   ( *temptemp4 )  = countSpecialChar ; 
   ; 
 } 
return 0 ; 
 } 
