#include <stdio.h>

int entry_point ( char ( *inputString )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int upperCaseCount ; 
  int lowerCaseCount ; 
  int index ; 
  lowerCaseCount = upperCaseCount = 0 ; 
   ; 
  index = 0 ; 
  while  ( inputString [ index ]  != '\0' )   { 
    if  ( inputString [ index ]  >= 'A' && inputString [ index ]  <= 'Z' ) 
      upperCaseCount++ ; 
    else if  ( inputString [ index ]  >= 'a' && inputString [ index ]  <= 'z' ) 
      lowerCaseCount++ ; 
    index++ ; 
   } 
   { 
     ( *temptemp1 )  = upperCaseCount ; 
     ( *temptemp2 )  = lowerCaseCount ; 
     ; 
   } 
  return 0 ; 
 } 
