#include <stdio.h>

int entry_point ( char ( *text )  ,  char ( *temptemp1 )  )   { 
  int removedCount ; 
  int length ; 
  int jdx ; 
  int idx ; 
   ; 
  length = 0 ; 
  while  ( text [ length ]  != '\0' )   { 
    length++ ; 
   } 
  removedCount = 0 ; 
  idx = 0 ; 
  while  ( idx <  ( length - removedCount )  )   { 
    if  ( text [ idx ]  == text [ idx + 1 ]  )   { 
      for  ( jdx = idx ;  jdx <  ( length - removedCount )  ;  jdx++ ) 
        text [ jdx ]  = text [ jdx + 1 ]  ; 
      removedCount++ ; 
     }  else  { 
      idx++ ; 
     } 
   } 
   { 
     ( *temptemp1 )  =  ( *text )  ; 
     ; 
   } 
  return 0 ; 
 } 
