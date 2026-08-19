#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  char string [ 100 ]  ; 
  int others = 0 ; 
  int digits = 0 ; 
  int alphabets = 0 ; 
   ; 
  fgets ( string ,  100 ,  stdin )  ; 
  int i = 0 ; 
  if  (  ( string [ i ]  >= 'a' && string [ i ]  <= 'z' )  ||
       ( string [ i ]  >= 'A' && string [ i ]  <= 'Z' )  )   { 
    alphabets++ ; 
   }  else if  ( string [ i ]  >= '0' && string [ i ]  <= '9' )   { 
    digits++ ; 
   }  else  { 
    others++ ; 
   } 
 } 
int alphabetsResult = alphabets ; 
int digitsResult = digits ; 
int othersResult = others ; 
 { 
   ( *temptemp1 )  = alphabetsResult ; 
   ; 
 } 
 { 
   ( *temptemp2 )  = digitsResult ; 
   ; 
 } 
 { 
   ( *temptemp3 )  = othersResult ; 
   ; 
 } 
return 0 ; 
 } 
