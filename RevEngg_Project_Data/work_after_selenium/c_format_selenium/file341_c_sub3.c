#include <stdio.h>

void Strfun ( char str1 [  ]  ,  char str2 [  ]  ,  char str3 [  ]  )   { 
   ; 
  puts ( str1 )  ; 
   ; 
  puts ( str2 )  ; 
   ; 
  puts ( str3 )  ; 
 } 
int entry_point (  )   { 
  char str1 [  ]  = "Hello function" ; 
  char str2 [  ]  = "How are you?" ; 
  char str3 [  ]  = "Catch some strings" ; 
  Strfun ( str1 ,  str2 ,  str3 )  ; 
  return 0 ; 
 } 
