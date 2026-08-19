#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int min ; 
  int max ; 
   ; 
  if  (  ( *size )  > 0 &&  ( *size )  <= 100 )   { 
    int i = 0 ; 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    if  ( i == 0 )   { 
      max = min = arr [ i ]  ; 
      continue ; 
     } 
    max =  ( arr [ i ]  > max )  ? arr [ i ]  : max ; 
    min =  ( arr [ i ]  < min )  ? arr [ i ]  : min ; 
   } 
   { 
     ( *temptemp2 )  = max ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = min ; 
     ; 
   } 
 } 
else  { 
   ; 
 } 
return 0 ; 
 } 
