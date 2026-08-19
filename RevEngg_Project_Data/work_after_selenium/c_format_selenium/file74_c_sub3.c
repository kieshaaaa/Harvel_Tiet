#include <stdio.h>

int entry_point ( float ( *p )  ,  float ( *q )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *p )  ; 
     ( *temptemp2 )  =  ( *q )  ; 
     ; 
   } 
  if  (  ( *p )  != 0 &&  ( *q )  != 0 )   { 
     ( *p )  =  ( *p )  *  ( *q )  ; 
     ( *q )  =  ( *p )  /  ( *q )  ; 
     ( *p )  =  ( *p )  /  ( *q )  ; 
   }  else  { 
     ; 
   } 
   { 
     ( *temptemp3 )  =  ( *p )  ; 
     ( *temptemp4 )  =  ( *q )  ; 
     ; 
   } 
  return 0 ; 
 } 
