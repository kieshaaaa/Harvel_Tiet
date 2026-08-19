#include <stdio.h>

void convertToLowercase ( char s [  ]  )  ; 
void convertToUppercase ( char s [  ]  )  ; 
int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str [ 100 ]  ; 
   ; 
  convertToLowercase ( str )  ; 
   { 
     ( *temptemp1 )  = str ; 
     ; 
   } 
  convertToUppercase ( str )  ; 
   { 
     ( *temptemp2 )  = str ; 
     ; 
   } 
  return 0 ; 
 } 
void convertToLowercase ( char s [  ]  )   { 
  for  ( int i = 0 ;  s [ i ]  != '\0' ;  i++ )   { 
    if  ( s [ i ]  >= 'A' && s [ i ]  <= 'Z' )   { 
      s [ i ]  += 'a' - 'A' ; 
     } 
   } 
 } 
void convertToUppercase ( char s [  ]  )   { 
  for  ( int i = 0 ;  s [ i ]  != '\0' ;  i++ )   { 
    if  ( s [ i ]  >= 'a' && s [ i ]  <= 'z' )   { 
      s [ i ]  -= 'a' - 'A' ; 
     } 
   } 
 } 
