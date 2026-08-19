#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *search )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
   ; 
   ; 
  int i = 0 ; 
 }  ; 
int middle ; 
int high =  ( *n )  - 1 ; 
int low = 0 ; 
while  ( low <= high )   { 
  middle = low +  ( high - low )  / 2 ; 
  if  ( array [ middle ]  ==  ( *search )  )   { 
     { 
       ( *temptemp1 )  =  ( *search )  ; 
       ( *temptemp2 )  = middle ; 
       ; 
     } 
    return 0 ; 
   }  else if  ( array [ middle ]  <  ( *search )  )   { 
    low = middle + 1 ; 
   }  else  { 
    high = middle - 1 ; 
   } 
 } 
 { 
   ( *temptemp3 )  =  ( *search )  ; 
   ; 
 } 
return 0 ; 
 } 
