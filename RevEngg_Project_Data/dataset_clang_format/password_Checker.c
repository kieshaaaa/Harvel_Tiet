#include <stdio.h>

int entry_point ( int ( *enteredPassword )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int password = 1234 ; 
  int i ; 
  int login ; 
   ; 
  for  ( i = 0 ;  i <= 2 ;  i++ )   { 
     ; 
    if  ( password ==  ( *enteredPassword )  )   { 
      login =  ( *enteredPassword )  + 1 ; 
       { 
         ( *temptemp1 )  = login ; 
         ; 
       } 
     }  else  { 
      login =  ( *enteredPassword )  + 2 ; 
       { 
         ( *temptemp2 )  = login ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
