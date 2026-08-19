#include <stdio.h>

int entry_point ( char ( *str )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int spaces ; 
  int digits ; 
  int consonants ; 
  int vowels ; 
  int index ; 
  vowels = consonants = digits = spaces = 0 ; 
   ; 
  index = 0 ; 
  while  ( str [ index ]  != '\0' )   { 
    if  ( str [ index ]  == 'a' || str [ index ]  == 'e' || str [ index ]  == 'i' ||
        str [ index ]  == 'o' || str [ index ]  == 'u' || str [ index ]  == 'A' ||
        str [ index ]  == 'E' || str [ index ]  == 'I' || str [ index ]  == 'O' ||
        str [ index ]  == 'U' ) 
      ++vowels ; 
    else if  (  ( str [ index ]  >= 'a' && str [ index ]  <= 'z' )  ||
              ( str [ index ]  >= 'A' && str [ index ]  <= 'Z' )  ) 
      ++consonants ; 
    else if  ( str [ index ]  >= '0' && str [ index ]  <= '9' ) 
      ++digits ; 
    else if  ( str [ index ]  == ' ' ) 
      ++spaces ; 
    index++ ; 
   } 
   { 
     ( *temptemp1 )  = vowels ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = consonants ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = digits ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = spaces ; 
     ; 
   } 
  return 0 ; 
 } 
