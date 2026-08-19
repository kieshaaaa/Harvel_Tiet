#include <stdio.h>
#include <string.h>

int entry_point ( char ( *temptemp1 )  )   { 
  char rev [ 100 ]  ; 
  char str [ 100 ]  ; 
  int count = 0 ; 
  int end ; 
  int start ; 
  int i ; 
  int len ; 
   ; 
  fgets ( str ,  sizeof ( str )  ,  stdin )  ; 
  len = strlen ( str )  ; 
  str [ len - 1 ]  = '\0' ; 
  for  ( i = len - 1 ;  i >= 0 ;  i-- )   { 
    if  ( str [ i ]  == ' ' || i == 0 )   { 
      if  ( i == 0 )   { 
        start = i ; 
       }  else  { 
        start = i + 1 ; 
       } 
      for  ( end = start ;  str [ end ]  != ' ' && str [ end ]  != '\0' ;  end++ )   { 
        rev [ count++ ]  = str [ end ]  ; 
       } 
      rev [ count++ ]  = ' ' ; 
     } 
   } 
  rev [ count - 1 ]  = '\0' ; 
   { 
     ( *temptemp1 )  = rev ; 
     ; 
   } 
  return 0 ; 
 } 
