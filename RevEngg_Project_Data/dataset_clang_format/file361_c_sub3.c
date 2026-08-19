#include <stdio.h>

int queue [ 50 ]  ,  rear = -1 ,  front = -1 ; 
void insert ( int data )   { 
   ; 
  else  { 
    if  ( front == -1 )  front = 0 ; 
    queue [ ++rear ]  = data ; 
     ; 
   } 
 } 
void delete  (  )   { 
   ; 
   ; 
 } 
void display (  )   { 
   ; 
  else  { 
     ; 
     ; 
     ; 
   } 
 } 
int entry_point ( int ( *choice )  ,  int ( *data )  )   { 
  while  ( 1 )   { 
     ; 
    switch  (  ( *choice )  )   { 
      case 1: ; 
        insert (  ( *data )  )  ; 
        break ; 
      case 2:
        delete  (  )  ; 
        break ; 
      case 3:
        display (  )  ; 
        break ; 
      case 4: ; 
        return 0 ; 
      default: ; 
     } 
   } 
 } 
