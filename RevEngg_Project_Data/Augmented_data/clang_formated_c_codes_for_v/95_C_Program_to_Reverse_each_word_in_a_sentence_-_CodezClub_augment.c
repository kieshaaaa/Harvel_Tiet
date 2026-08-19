#include <stdio.h>

int entry_point ( char ( *sentence )  ,  char ( *temptemp1 )  )   { 
  char reversedSentence [ 100 ]  ; 
  int index2 = 0 ; 
  int index1 = 0 ; 
   ; 
  while  ( sentence [ index1 ]  != '\0' )  index1++ ; 
  while  ( index1 > 0 )   { 
    reversedSentence [ index2 ]  = sentence [ --index1 ]  ; 
    ++index2 ; 
   } 
  reversedSentence [ index2 ]  = '\0' ; 
   ; 
  index1 = 0 ; 
  while  ( reversedSentence [ index1 ]  != '\0' )   { 
    if  ( reversedSentence [ index1 + 1 ]  == ' ' ||
        reversedSentence [ index1 + 1 ]  == '\0' )   { 
      for  ( index2 = index1 ;  index2 >= 0 && reversedSentence [ index2 ]  != ' ' ; 
           index2-- )   { 
         ( *temptemp1 )  = reversedSentence [ index2 ]  ; 
         ; 
       }  ; 
     } 
    index1++ ; 
   } 
  return 0 ; 
 } 
