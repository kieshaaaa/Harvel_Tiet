#include <stdio.h>

int queue [ 50 ]  ,  rear = -1 ,  front = -1 ; 
void add ( int item )   { 
   ; 
  else  { 
    if  ( front == -1 )  front = 0 ; 
    queue [ ++rear ]  = item ; 
     ; 
   } 
 } 
void removeItem (  )   { 
   ; 
   ; 
 } 
void printQueue (  )   { 
   ; 
  else  { 
     ; 
     ; 
     ; 
   } 
 } 
int entry_point ( int ( *choice )  ,  int ( *item )  )   { 
  while  ( 1 )   { 
     ; 
    switch  (  ( *choice )  )   { 
      case 1: ; 
        add (  ( *item )  )  ; 
        break ; 
      case 2:
        removeItem (  )  ; 
        break ; 
      case 3:
        printQueue (  )  ; 
        break ; 
      case 4:
        return 0 ; 
      default: ; 
     } 
   } 
 } 
