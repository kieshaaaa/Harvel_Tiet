#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *search )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
   ; 
   ; 
  int i = 0 ; 
 }  ; 
int last =  ( *n )  - 1 ; 
int first = 0 ; 
int found = 0 ; 
while  ( first <= last )   { 
  int middle =  ( first + last )  / 2 ; 
  if  ( array [ middle ]  ==  ( *search )  )   { 
     { 
       ( *temptemp1 )  =  ( *search )  ; 
       ( *temptemp2 )  = middle + 1 ; 
       ; 
     } 
    found = 1 ; 
    break ; 
   }  else if  ( array [ middle ]  <  ( *search )  )   { 
    first = middle + 1 ; 
   }  else  { 
    last = middle - 1 ; 
   } 
 } 
if  ( !found )   { 
   { 
     ( *temptemp3 )  =  ( *search )  ; 
     ; 
   } 
 } 
return 0 ; 
 } 
