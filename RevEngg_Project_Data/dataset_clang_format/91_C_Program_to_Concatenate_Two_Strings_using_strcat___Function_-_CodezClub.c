#include <stdio.h>
#include <string.h>

int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  ,  char ( *temptemp3 )  )   { 
  char ch1 [ 50 ]  = "Codez" ; 
  char ch2 [ 50 ]  = "Club" ; 
   { 
     ( *temptemp1 )  = ch1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = ch2 ; 
     ; 
   } 
  strcat ( ch1 ,  ch2 )  ; 
   { 
     ( *temptemp3 )  = ch1 ; 
     ; 
   } 
  return 0 ; 
 } 
