#include <stdio.h>

int entry_point ( int ( *wDay )  ,  char ( *temptemp1 )  )   { 
   ; 
  char* weekdays [  ]  =  { "Sunday" ,    "Monday" ,  "Tuesday" ,  "Wednesday" , 
                      "Thursday" ,  "Friday" ,  "Saturday" }  ; 
  if  (  ( *wDay )  >= 0 &&  ( *wDay )  <= 6 )   { 
     { 
       ( *temptemp1 )  = weekdays [  ( *wDay )  ]  ; 
       ; 
     } 
   }  else  { 
     ; 
   }  ; 
  return 0 ; 
 } 
