#include <math.h>
#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
   ; 
   ( *a )  = fabs (  ( *a )  )  ; 
   ( *b )  = fabs (  ( *b )  )  ; 
  int max_val =  ( *a )  >  ( *b )  ?  ( *a )  :  ( *b )  ; 
  int min_val =  ( *a )  <  ( *b )  ?  ( *a )  :  ( *b )  ; 
  int hcf ; 
  int lcm ; 
  int i = max_val ; 
  while  ( i <=  ( *a )  *  ( *b )  )   { 
    if  ( i % min_val == 0 )   { 
      lcm = i ; 
      break ; 
     } 
    i += max_val ; 
   } 
  hcf =  ( *a )  *  ( *b )  / lcm ; 
  if  ( hcf == 1 )   { 
     ( *temptemp1 )  = max_val ; 
     ( *temptemp2 )  = min_val ; 
     ; 
   }  else  { 
     ( *temptemp3 )  = max_val ; 
     ( *temptemp4 )  = min_val ; 
     ; 
   } 
  return 0 ; 
 } 
