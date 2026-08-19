#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  char str [ 100 ]  ; 
  int countSpaces = 0 ; 
  int countSpecialChar = 0 ; 
  int countAlphabet = 0 ; 
  int countDigits = 0 ; 
   ; 
  int i = 0 ; 
  switch  ( str [ i ]  )   { 
    case '0' ... '9':
      countDigits++ ; 
      break ; 
    case 'A' ... 'Z':
    case 'a' ... 'z':
      countAlphabet++ ; 
      break ; 
    case ' ':
      countSpaces++ ; 
      break ; 
    default:
      countSpecialChar++ ; 
      break ; 
   } 
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
