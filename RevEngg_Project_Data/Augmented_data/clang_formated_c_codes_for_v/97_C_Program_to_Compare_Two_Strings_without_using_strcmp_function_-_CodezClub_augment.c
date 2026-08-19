#include <stdio.h>

int entry_point ( char ( *string1 )  ,  char ( *string2 )  )   { 
  int count = 0 ; 
  int index = 0 ; 
   ; 
   ; 
   ; 
  puts (  ( *string1 )  )  ; 
  puts (  ( *string2 )  )  ; 
  for  (  ;   ( string1 [ index ]  != '\0' )  ||  ( string2 [ index ]  != '\0' )  ;  index++ )   { 
    if  ( string1 [ index ]  != string2 [ index ]  )  count++ ; 
   } 
  if  ( count == 0 ) 
    puts ( "\nStrings are equal.\n" )  ; 
  else
    puts ( "\nStrings are not equal.\n" )  ; 
  return 0 ; 
 } 
