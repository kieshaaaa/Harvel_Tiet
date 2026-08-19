#include <stdio.h>

int isValidDate ( int d ,  int m ,  int y )   { 
  if  ( y >= 1800 && y <= 2999 )   { 
    if  ( m >= 1 && m <= 12 )   { 
      if  ( d >= 1 && d <= 31 )   { 
        if  (  ( d >= 1 && d <= 30 )  &&  ( m == 4 || m == 6 || m == 9 || m == 11 )  ) 
          return 1 ; 
        else if  (  ( d >= 1 && d <= 30 )  &&  ( m == 1 || m == 3 || m == 5 || m == 7 ||
                                         m == 8 || m == 10 || m == 12 )  ) 
          return 1 ; 
        else if  (  ( d >= 1 && d <= 28 )  &&  ( m == 2 )  ) 
          return 1 ; 
        else if  ( d == 29 && m == 2 &&
                  (  ( y % 400 == 0 )  ||  ( y % 4 == 0 && y % 100 != 0 )  )  ) 
          return 1 ; 
        else
          return 0 ; 
       }  else  { 
        return 0 ; 
       } 
     }  else  { 
      return 0 ; 
     } 
   }  else  { 
    return 0 ; 
   } 
 } 
int getDayOfWeek ( int year ,  int month ,  int day )   { 
  int wday = 0 ; 
  wday =  ( day +  (  ( 153 *  ( month + 12 *  (  ( 14 - month )  / 12 )  - 3 )  + 2 )  / 5 )  +
           ( 365 *  ( year + 4800 -  (  ( 14 - month )  / 12 )  )  )  +
           (  ( year + 4800 -  (  ( 14 - month )  / 12 )  )  / 4 )  -
           (  ( year + 4800 -  (  ( 14 - month )  / 12 )  )  / 100 )  +
           (  ( year + 4800 -  (  ( 14 - month )  / 12 )  )  / 400 )  - 32045 )  %
         7 ; 
  return wday ; 
 } 
int entry_point ( int ( *day )  ,  int ( *month )  ,  int ( *year )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  char ( *temptemp4 )  )   { 
  int wDayNo = 0 ; 
  char dayNames [  ]  [ 12 ]  =  { "Monday" ,  "Tuesday" ,   "Wednesday" ,  "Thursday" , 
                         "Friday" ,  "Saturday" ,  "Sunday" }  ; 
   ; 
  if  ( isValidDate (  ( *day )  ,   ( *month )  ,   ( *year )  )  == 1 )   { 
     { 
       ( *temptemp1 )  =  ( *day )  ; 
       ( *temptemp2 )  =  ( *month )  ; 
       ( *temptemp3 )  =  ( *year )  ; 
       ; 
     } 
    wDayNo = getDayOfWeek (  ( *year )  ,   ( *month )  ,   ( *day )  )  ; 
     { 
       ( *temptemp4 )  = dayNames [ wDayNo ]  ; 
       ; 
     } 
   }  else
     ; 
  return 0 ; 
 } 
