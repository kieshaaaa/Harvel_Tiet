#include <stdio.h>

int entry_point ( char ( *inputString )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int i = 0 ; 
  int specialCount ; 
  int upperCount ; 
  int lowerCount ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *inputString )  ; 
     ; 
   } 
  lowerCount = upperCount = specialCount = 0 ; 
  while  ( inputString [ i ]  != '\0' )   { 
    if  (  ( inputString [ i ]  >= 'A' && inputString [ i ]  <= 'Z' )  ||
         ( inputString [ i ]  >= 'a' && inputString [ i ]  <= 'z' )  )   { 
      if  (  ( inputString [ i ]  >= 'A' && inputString [ i ]  <= 'Z' )  )   { 
        upperCount++ ; 
       }  else  { 
        lowerCount++ ; 
       } 
     }  else  { 
      specialCount++ ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp2 )  = upperCount ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = lowerCount ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = specialCount ; 
     ; 
   } 
  return 0 ; 
 } 
