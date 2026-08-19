#include <ctype.h>
#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  char text [ 100 ]  ; 
  int countS = 0 ; 
  int countL = 0 ; 
  int countU = 0 ; 
   ; 
  int i = 0 ; 
  if  ( isupper ( text [ i ]  )  ) 
    countU++ ; 
  else if  ( islower ( text [ i ]  )  ) 
    countL++ ; 
  else
    countS++ ; 
 } 
 { 
   ( *temptemp1 )  = countU ; 
   ; 
 } 
 { 
   ( *temptemp2 )  = countL ; 
   ; 
 } 
 { 
   ( *temptemp3 )  = countS ; 
   ; 
 } 
return 0 ; 
 } 
