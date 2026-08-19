#include <stdio.h>

int entry_point ( int ( *num )  ,  char ( *temptemp1 )  )   { 
   ; 
  if  (  ( *num )  == 0 )   { 
     ; 
    return 0 ; 
   } 
  char *words [ 10 ]  =  { "zero" ,  "one" ,  "two" ,    "three" ,  "four" , 
                     "five" ,  "six" ,  "seven" ,  "eight" ,  "nine" }  ; 
  int n =  ( *num )  ; 
  int reversed = 0 ; 
  while  ( n > 0 )   { 
    reversed = reversed * 10 + n % 10 ; 
    n /= 10 ; 
   } 
  while  ( reversed > 0 )   { 
     { 
       ( *temptemp1 )  = words [ reversed % 10 ]  ; 
       ; 
     } 
    reversed /= 10 ; 
   } 
  return 0 ; 
 } 
