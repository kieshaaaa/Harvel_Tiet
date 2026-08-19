#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *array )  ,  int ( *search )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
   ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = i + 1 ; 
     ; 
   } 
 }  ; 
int middle ; 
int last =  ( *n )  - 1 ; 
int first = 0 ; 
middle = first +  ( last - first )  / 2 ; 
if  ( array [ middle ]  ==  ( *search )  )   { 
   { 
     ( *temptemp2 )  =  ( *search )  ; 
     ( *temptemp3 )  = middle + 1 ; 
     ; 
   } 
  return 0 ; 
 } 
if  ( array [ middle ]  <  ( *search )  ) 
  first = middle + 1 ; 
else
  last = middle - 1 ; 
 } 
 { 
   ( *temptemp4 )  =  ( *search )  ; 
   ; 
 } 
return 0 ; 
 } 
