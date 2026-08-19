#include <stdio.h>

int entry_point ( int ( *totalSeconds )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int secondsInHour = 3600 ; 
  int secondsInMinute = 60 ; 
  int seconds ; 
  int minutes ; 
  int hours ; 
   ; 
  hours =  ( *totalSeconds )  / secondsInHour ; 
   ( *totalSeconds )  %= secondsInHour ; 
  minutes =  ( *totalSeconds )  / secondsInMinute ; 
  seconds =  ( *totalSeconds )  % secondsInMinute ; 
   { 
     ( *temptemp1 )  = hours ; 
     ( *temptemp2 )  = minutes ; 
     ( *temptemp3 )  = seconds ; 
     ; 
   } 
  return 0 ; 
 } 
