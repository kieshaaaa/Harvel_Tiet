#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
   ; 
  if  (  ( *number )  % 7 == 0 ||  ( *number )  % 3 == 0 )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  if  (  ( *number )  % 3 &&  ( *number )  % 2 )   { 
     ( *temptemp3 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp4 )  =  ( *number )  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
