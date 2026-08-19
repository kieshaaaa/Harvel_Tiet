#include <stdio.h>

int entry_point ( int ( *n1 )  ,  int ( *n2 )  ,  int ( *n3 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                int ( *temptemp6 )  )   { 
   ; 
   ; 
   ; 
   ; 
  if  (  (  ( *n1 )  >  ( *n2 )  )  &&  (  ( *n1 )  >  ( *n3 )  )  )   { 
     ( *temptemp1 )  =  ( *n1 )  ; 
     ; 
   }  else if  (  ( *n2 )  >  ( *n3 )  )   { 
     ( *temptemp2 )  =  ( *n2 )  ; 
     ; 
   }  else  { 
     ( *temptemp3 )  =  ( *n3 )  ; 
     ; 
   }  ; 
  if  (  (  ( *n1 )  <  ( *n2 )  )  &&  (  ( *n1 )  <  ( *n3 )  )  )   { 
     ( *temptemp4 )  =  ( *n1 )  ; 
     ; 
   }  else if  (  ( *n2 )  <  ( *n3 )  )   { 
     ( *temptemp5 )  =  ( *n2 )  ; 
     ; 
   }  else  { 
     ( *temptemp6 )  =  ( *n3 )  ; 
     ; 
   } 
  return 0 ; 
 } 
