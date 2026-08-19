#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *data )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int occurrences [ 100 ]  ; 
  int counter ; 
  int j ; 
  int i ; 
   ; 
   ; 
  i = 0 ; 
  while  ( i <  ( *n )  )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    occurrences [ i ]  = -1 ; 
    i++ ; 
   } 
  i = 0 ; 
  while  ( i <  ( *n )  )   { 
    counter = 1 ; 
    j = i + 1 ; 
    while  ( j <  ( *n )  )   { 
      if  ( data [ i ]  == data [ j ]  )   { 
        counter++ ; 
        occurrences [ j ]  = 0 ; 
       } 
      j++ ; 
     } 
    if  ( occurrences [ i ]  != 0 )   { 
      occurrences [ i ]  = counter ; 
     } 
    i++ ; 
   }  ; 
  i = 0 ; 
  while  ( i <  ( *n )  )   { 
    if  ( occurrences [ i ]  != 0 )   { 
       { 
         ( *temptemp2 )  = data [ i ]  ; 
         ( *temptemp3 )  = occurrences [ i ]  ; 
         ; 
       } 
     } 
    i++ ; 
   } 
  return 0 ; 
 } 
