#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *search )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  )   { 
  int middle ; 
  int last ; 
  int first ; 
  int j ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  j = 0 ; 
  while  ( j <  ( *n )  )   { 
     { 
       ( *temptemp2 )  = j + 1 ; 
       ; 
     } 
    j++ ; 
   }  ; 
  first = 0 ; 
  last =  ( *n )  - 1 ; 
  middle =  ( first + last )  / 2 ; 
  while  ( first <= last )   { 
    if  ( arr [ middle ]  <  ( *search )  ) 
      first = middle + 1 ; 
    else if  ( arr [ middle ]  ==  ( *search )  )   { 
       { 
         ( *temptemp3 )  =  ( *search )  ; 
         ( *temptemp4 )  = middle + 1 ; 
         ; 
       } 
      break ; 
     }  else
      last = middle - 1 ; 
    middle =  ( first + last )  / 2 ; 
   } 
  if  ( first > last )   { 
     ( *temptemp5 )  =  ( *search )  ; 
     ; 
   } 
  return 0 ; 
 } 
