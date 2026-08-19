#include <stdio.h>

int entry_point ( char ( *str )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int index ; 
  int other ; 
  int digit ; 
  int alpha ; 
  alpha = digit = other = index = 0 ; 
   ; 
  for  ( index = 0 ;  str [ index ]  != '\0' ;  index++ )   { 
    if  (  ( str [ index ]  >= 'a' && str [ index ]  <= 'z' )  ||
         ( str [ index ]  >= 'A' && str [ index ]  <= 'Z' )  )   { 
      alpha++ ; 
     }  else if  ( str [ index ]  >= '0' && str [ index ]  <= '9' )   { 
      digit++ ; 
     }  else  { 
      other++ ; 
     } 
   } 
   { 
     ( *temptemp1 )  = alpha ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = digit ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = other ; 
     ; 
   } 
  return 0 ; 
 } 
