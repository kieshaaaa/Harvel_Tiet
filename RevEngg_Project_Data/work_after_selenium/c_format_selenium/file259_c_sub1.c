#include <stdio.h>
#include <string.h>

int entry_point ( char ( *word )  )   { 
  int isPalindrome = 1 ; 
  int len ; 
  int i ; 
   ; 
  len = strlen (  ( *word )  )  ; 
  for  ( i = 0 ;  i < len / 2 ;  i++ )   { 
    if  ( word [ i ]  != word [ len - i - 1 ]  )   { 
      isPalindrome = 0 ; 
      break ; 
     } 
   } 
  if  ( isPalindrome ) 
     ; 
  else
     ; 
  return 0 ; 
 } 
