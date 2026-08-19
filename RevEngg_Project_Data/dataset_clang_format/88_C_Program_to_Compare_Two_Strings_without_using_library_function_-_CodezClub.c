#include <stdio.h>

int entry_point ( char ( *str1 )  ,  char ( *str2 )  )   { 
  char flag = 0 ; 
  char j ; 
  char i ; 
   ; 
   ; 
  i = 0 ; 
  j = 0 ; 
  while  ( str1 [ i ]  != '\0' )   { 
    i++ ; 
   } 
  while  ( str2 [ j ]  != '\0' )   { 
    j++ ; 
   } 
  if  ( i != j )   { 
    flag = 0 ; 
   }  else  { 
    for  ( i = 0 ,  j = 0 ;  str1 [ i ]  != '\0' ,  str2 [ j ]  != '\0' ;  i++ ,  j++ )   { 
      if  ( str1 [ i ]  == str2 [ j ]  )   { 
        flag = 1 ; 
       } 
     } 
   } 
  if  ( flag == 0 )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
