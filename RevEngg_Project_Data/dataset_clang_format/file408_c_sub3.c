#include <stdio.h>

int entry_point ( int ( *day )  ,  int ( *month )  ,  int ( *year )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  char ( *temptemp4 )  )   { 
   ; 
  if  (  (  ( *year )  >= 1800 &&  ( *year )  <= 2999 )  &&
       (  ( *month )  >= 1 &&  ( *month )  <= 12 )  &&
       (  ( *day )  >= 1 &&
        (  (  (  ( *month )  == 4 ||  ( *month )  == 6 ||  ( *month )  == 9 ||  ( *month )  == 11 )  &&
          ( *day )  <= 30 )  ||
         (  ( *month )  != 2 &&  ( *day )  <= 31 )  ||
         (  ( *month )  == 2 &&
          ( *day )  <= 28 +  (  (  ( *year )  % 4 == 0 &&
                           (  ( *year )  % 100 != 0 ||  ( *year )  % 400 == 0 )  ) 
                             ? 1
                             : 0 )  )  )  )  )   { 
     { 
       ( *temptemp1 )  =  ( *day )  ; 
       ( *temptemp2 )  =  ( *month )  ; 
       ( *temptemp3 )  =  ( *year )  ; 
       ; 
     } 
    char *dayNames [  ]  =  { "Sunday" ,    "Monday" ,  "Tuesday" ,  "Wednesday" , 
                        "Thursday" ,  "Friday" ,  "Saturday" }  ; 
    if  (  ( *month )  < 3 )   { 
       ( *month )  += 12 ; 
       ( *year )  -= 1 ; 
     } 
    int wDayNo =  (  ( *day )  + 2 *  ( *month )  + 3 *  (  ( *month )  + 1 )  / 5 +  ( *year )  +
                   ( *year )  / 4 -  ( *year )  / 100 +  ( *year )  / 400 )  %
                 7 ; 
     { 
       ( *temptemp4 )  = dayNames [ wDayNo ]  ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
