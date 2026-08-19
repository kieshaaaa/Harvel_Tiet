#include <stdio.h>

int entry_point ( int ( *numElements )  ,  int ( *array )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int oddCount ; 
  int evenCount ; 
  int index ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *numElements )  ; 
     ; 
   } 
  index = 0 ; 
  while  ( index <  ( *numElements )  )   { 
     { 
       ( *temptemp2 )  = index + 1 ; 
       ; 
     } 
    index++ ; 
   } 
  evenCount = 0 ; 
  oddCount = 0 ; 
  index = 0 ; 
  while  ( index <  ( *numElements )  )   { 
    if  ( array [ index ]  % 2 == 0 )   { 
      evenCount++ ; 
     }  else  { 
      oddCount++ ; 
     } 
    index++ ; 
   } 
   { 
     ( *temptemp3 )  = evenCount ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = oddCount ; 
     ; 
   } 
  return 0 ; 
 } 