#include <stdio.h>

void makeLowercase ( char s [  ]  )  ; 
void makeUppercase ( char s [  ]  )  ; 
int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str [ 100 ]  ; 
   ; 
  makeLowercase ( str )  ; 
   { 
     ( *temptemp1 )  = str ; 
     ; 
   } 
  makeUppercase ( str )  ; 
   { 
     ( *temptemp2 )  = str ; 
     ; 
   } 
  return 0 ; 
 } 
void makeLowercase ( char s [  ]  )   { 
  for  ( int i = 0 ;  s [ i ]  ;  i++ )   { 
    s [ i ]  +=  ( s [ i ]  >= 'A' && s [ i ]  <= 'Z' )  ? 32 : 0 ; 
   } 
 } 
void makeUppercase ( char s [  ]  )   { 
  for  ( int i = 0 ;  s [ i ]  ;  i++ )   { 
    s [ i ]  -=  ( s [ i ]  >= 'a' && s [ i ]  <= 'z' )  ? 32 : 0 ; 
   } 
 } 
