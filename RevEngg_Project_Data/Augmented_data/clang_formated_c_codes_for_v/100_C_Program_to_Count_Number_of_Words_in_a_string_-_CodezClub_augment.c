#include <stdio.h>

int entry_point ( char ( *sentence )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int flag = 0 ; 
  int wordCount = 0 ; 
  int i = 0 ; 
   ; 
  i = 0 ; 
  while  ( sentence [ i ]  != '\0' )   { 
    if  ( sentence [ i ]  == ' ' || sentence [ i ]  == '\n' || sentence [ i ]  == '\t' ) 
      flag = 0 ; 
    else if  ( flag == 0 )   { 
      flag = 1 ; 
      ++wordCount ; 
     } 
    ++i ; 
   } 
   { 
     ( *temptemp1 )  =  ( *sentence )  ; 
     ( *temptemp2 )  = wordCount ; 
     ; 
   } 
  return 0 ; 
 } 
