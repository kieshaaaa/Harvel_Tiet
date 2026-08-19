#include <stdio.h>
#include <string.h>

int entry_point ( char ( *word )  )   { 
  int leftIndex = 0 ; 
  int rightIndex ; 
  int isPalindrome = 1 ; 
   ; 
  rightIndex = strlen (  ( *word )  )  - 1 ; 
  while  ( leftIndex < rightIndex )   { 
    if  ( word [ leftIndex ]  != word [ rightIndex ]  )   { 
      isPalindrome = 0 ; 
      break ; 
     } 
    leftIndex++ ; 
    rightIndex-- ; 
   } 
  if  ( isPalindrome ) 
     ; 
  else
     ; 
  return 0 ; 
 } 
