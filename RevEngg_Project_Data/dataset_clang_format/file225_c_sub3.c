#include <stdio.h>

int counter = 5 ; 
void incrementCounter (  )  ; 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int localCounter = 10 ; 
  int anotherCounter = 15 ; 
   { 
     ( *temptemp1 )  = localCounter ; 
     ( *temptemp2 )  = anotherCounter ; 
     ; 
   } 
  incrementCounter (  )  ; 
   { 
     ( *temptemp3 )  = counter ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = anotherCounter ; 
     ; 
   } 
  return 0 ; 
 } 
void incrementCounter (  )   { 
  counter += 5 ; 
  int tempCounter = 20 ; 
   ; 
   ; 
 } 
