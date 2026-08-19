#include <stdio.h>

int entry_point ( char ( *inputString )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int spaceCount ; 
  int specialCharCount ; 
  int alphabetCount ; 
  int digitCount ; 
  int i = 0 ; 
  digitCount = alphabetCount = specialCharCount = spaceCount = 0 ; 
   ; 
  while  ( inputString [ i ]  != '\0' )   { 
    if  ( inputString [ i ]  >= '0' && inputString [ i ]  <= '9' ) 
      digitCount++ ; 
    else if  (  ( inputString [ i ]  >= 'A' && inputString [ i ]  <= 'Z' )  ||
              ( inputString [ i ]  >= 'a' && inputString [ i ]  <= 'z' )  ) 
      alphabetCount++ ; 
    else if  ( inputString [ i ]  == ' ' ) 
      spaceCount++ ; 
    else
      specialCharCount++ ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = digitCount ; 
     ( *temptemp2 )  = alphabetCount ; 
     ( *temptemp3 )  = spaceCount ; 
     ( *temptemp4 )  = specialCharCount ; 
     ; 
   } 
  return 0 ; 
 } 
