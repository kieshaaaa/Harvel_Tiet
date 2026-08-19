#include <stdio.h>

int entry_point ( float ( *timeParts )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  const char *labels [  ]  =  { "hour  ( HH ) " ,  "minute  ( MM ) " ,  "second  ( SS ) " }  ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = labels [ i ]  ; 
     ; 
   } 
 } 
if  ( timeParts [ 0 ]  >= 0 && timeParts [ 0 ]  <= 23 && timeParts [ 1 ]  >= 0 &&
    timeParts [ 1 ]  <= 59 && timeParts [ 2 ]  >= 0 && timeParts [ 2 ]  <= 59 )   { 
   { 
     ( *temptemp2 )  =  ( int ) timeParts [ 0 ]  ; 
     ( *temptemp3 )  =  ( int ) timeParts [ 1 ]  ; 
     ( *temptemp4 )  =  ( int ) timeParts [ 2 ]  ; 
     ; 
   } 
 }  else  { 
   ; 
 } 
return 0 ; 
 } 
