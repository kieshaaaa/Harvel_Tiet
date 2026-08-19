#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  int isPalindrome = 1 ; 
  int length = 0 ; 
   ; 
  for  ( length = 0 ;  str [ length ]  != '\0' ;  ++length ) 
     ; 
  int j = length - 1 ; 
  int i = 0 ; 
  if  ( str [ i ]  != str [ j ]  )   { 
    isPalindrome = 0 ; 
    break ; 
   } 
 } 
if  ( isPalindrome )   { 
   ( *temptemp1 )  =  ( *str )  ; 
   ; 
 }  else  { 
   ( *temptemp2 )  =  ( *str )  ; 
   ; 
 } 
return 0 ; 
 } 
