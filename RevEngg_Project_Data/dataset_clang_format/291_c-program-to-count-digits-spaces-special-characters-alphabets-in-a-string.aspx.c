#include <stdio.h>

int entry_point ( char ( *str )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int countSpaces ; 
  int countSpecialChar ; 
  int countAlphabet ; 
  int countDigits ; 
  int counter ; 
  countDigits = countAlphabet = countSpecialChar = countSpaces = 0 ; 
   ; 
  for  ( counter = 0 ;  str [ counter ]  != NULL ;  counter++ )   { 
    if  ( str [ counter ]  >= '0' && str [ counter ]  <= '9' ) 
      countDigits++ ; 
    else if  (  ( str [ counter ]  >= 'A' && str [ counter ]  <= 'Z' )  ||
              ( str [ counter ]  >= 'a' && str [ counter ]  <= 'z' )  ) 
      countAlphabet++ ; 
    else if  ( str [ counter ]  == ' ' ) 
      countSpaces++ ; 
    else
      countSpecialChar++ ; 
   } 
   { 
     ( *temptemp1 )  = countDigits ; 
     ( *temptemp2 )  = countAlphabet ; 
     ( *temptemp3 )  = countSpaces ; 
     ( *temptemp4 )  = countSpecialChar ; 
     ; 
   } 
  return 0 ; 
 } 
