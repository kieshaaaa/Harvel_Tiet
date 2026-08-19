#include <stdio.h>

int entry_point ( int ( *number )  ,  char ( *temptemp1 )  )   { 
  char bin [ 33 ]  ; 
  bin [ 32 ]  = '\0' ; 
   ; 
  int i = 31 ; 
  bin [ i ]  = '0' +  (  ( *number )  & 1 )  ; 
   ( *number )  >>= 1 ; 
 } 
int startIndex = 0 ; 
while  ( startIndex < 32 && bin [ startIndex ]  == '0' )  startIndex++ ; 
 ; 
if  ( startIndex == 32 ) 
   ; 
else  { 
   ( *temptemp1 )  = &bin [ startIndex ]  ; 
   ; 
 }  ; 
return 0 ; 
 } 
