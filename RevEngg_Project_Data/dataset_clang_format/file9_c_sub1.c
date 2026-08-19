#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  char text [ 100 ]  ; 
  int countS = 0 ; 
  int countL = 0 ; 
  int countU = 0 ; 
   ; 
  int i = 0 ; 
  if  ( text [ i ]  >= 'A' && text [ i ]  <= 'Z' ) 
    countU++ ; 
  else if  ( text [ i ]  >= 'a' && text [ i ]  <= 'z' ) 
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
