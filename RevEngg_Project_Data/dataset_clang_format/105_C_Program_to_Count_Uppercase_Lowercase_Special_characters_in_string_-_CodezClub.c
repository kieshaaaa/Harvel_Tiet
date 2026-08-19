#include <stdio.h>

int entry_point ( char ( *text )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int i ; 
  int countS ; 
  int countU ; 
  int countL ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *text )  ; 
     ; 
   } 
  countL = countU = countS = 0 ; 
  for  ( i = 0 ;  text [ i ]  != '\0' ;  i++ )   { 
    if  (  ( text [ i ]  >= 'A' && text [ i ]  <= 'Z' )  ||
         ( text [ i ]  >= 'a' && text [ i ]  <= 'z' )  )   { 
      if  (  ( text [ i ]  >= 'A' && text [ i ]  <= 'Z' )  )   { 
        countU++ ; 
       }  else  { 
        countL++ ; 
       } 
     }  else  { 
      countS++ ; 
     } 
   } 
   { 
     ( *temptemp2 )  = countU ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = countL ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = countS ; 
     ; 
   } 
  return 0 ; 
 } 
