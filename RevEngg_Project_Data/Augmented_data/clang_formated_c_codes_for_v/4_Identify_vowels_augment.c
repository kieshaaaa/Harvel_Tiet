#include <stdio.h>

int entry_point ( char ( *fullName )  )   { 
  int index ; 
   ; 
   ; 
  puts (  ( *fullName )  )  ; 
  index = 0 ; 
  for  (  ;  fullName [ index ]  != '\0' ;  index++ )   { 
    if  ( fullName [ index ]  == 'a' || fullName [ index ]  == 'e' ||
        fullName [ index ]  == 'i' || fullName [ index ]  == 'o' ||
        fullName [ index ]  == 'u' ) 
      fullName [ index ]  = fullName [ index ]  - 32 ; 
   }  ; 
  puts (  ( *fullName )  )  ; 
  return 0 ; 
 } 
