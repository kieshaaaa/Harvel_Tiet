#include <stdio.h>

int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str2 [ 20 ]  ; 
  char str1 [ 20 ]  ; 
  int length2 = 0 ; 
  int length1 = 0 ; 
  int i = 0 ; 
   ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  = str1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = str2 ; 
     ; 
   } 
  while  ( str1 [ length1 ]  != '\0' )   { 
    length1++ ; 
   } 
  while  ( str2 [ length2 ]  != '\0' )   { 
    length2++ ; 
   } 
  if  ( length1 != length2 )   { 
     ; 
    return 0 ; 
   } 
  while  (  ( str1 [ i ]  != '\0' )  &&  ( str2 [ i ]  != '\0' )  )   { 
    if  ( str1 [ i ]  != str2 [ i ]  )   { 
       ; 
      return 0 ; 
     } 
    i++ ; 
   }  ; 
  return 0 ; 
 } 
