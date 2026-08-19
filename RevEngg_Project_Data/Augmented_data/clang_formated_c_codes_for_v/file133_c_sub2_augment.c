#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *begin )  ,  int ( *finish )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  ,  int ( *temptemp6 )  )   { 
  int counter ; 
   ; 
   ; 
   ; 
  if  (  ( *begin )  <=  ( *finish )  )   { 
    counter =  ( *begin )  ; 
    while  ( counter <=  ( *finish )  )   { 
      int product =  ( *number )  * counter ; 
       { 
         ( *temptemp1 )  =  ( *number )  ; 
         ( *temptemp2 )  = counter ; 
         ( *temptemp3 )  = product ; 
         ; 
       } 
      counter++ ; 
     } 
   }  else  { 
    counter =  ( *begin )  ; 
    while  ( counter >=  ( *finish )  )   { 
      int product =  ( *number )  * counter ; 
       { 
         ( *temptemp4 )  =  ( *number )  ; 
         ( *temptemp5 )  = counter ; 
         ( *temptemp6 )  = product ; 
         ; 
       } 
      counter-- ; 
     } 
   } 
  return 0 ; 
 } 
