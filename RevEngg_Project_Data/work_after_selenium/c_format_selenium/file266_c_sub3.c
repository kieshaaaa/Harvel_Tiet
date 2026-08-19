#include <stdio.h>
#include <string.h>

int entry_point ( char ( *username )  ,  char ( *password )  )   { 
  int isValid = 1 ; 
   ; 
   ; 
  if  ( username [ 0 ]  != 'A' && username [ 0 ]  != 'a' ||
      username [ 1 ]  != 'D' && username [ 1 ]  != 'd' ||
      username [ 2 ]  != 'M' && username [ 2 ]  != 'm' ||
      username [ 3 ]  != 'I' && username [ 3 ]  != 'i' ||
      username [ 4 ]  != 'N' && username [ 4 ]  != 'n' || username [ 5 ]  != '\0' )   { 
    isValid = 0 ; 
   } 
  if  ( isValid && strcmp (  ( *password )  ,  "karunya" )  == 0 )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
