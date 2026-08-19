#include <stdio.h>

int queue [ 50 ]  ; 
int rear = -1 ; 
int front = -1 ; 
void enqueue ( int value )   { 
  if  ( rear < 50 - 1 )   { 
    if  ( front == -1 )  front = 0 ; 
    rear++ ; 
    queue [ rear ]  = value ; 
     ; 
   }  else  { 
     ; 
   } 
 } 
void dequeue (  )   { 
  if  ( front == -1 || front > rear )   { 
     ; 
   }  else  { 
     ; 
    front++ ; 
   } 
 } 
void showQueue (  )   { 
  if  ( front == -1 )   { 
     ; 
   }  else  { 
     ; 
    for  ( int i = front ;  i <= rear ;  i++ )   { 
       ; 
     }  ; 
   } 
 } 
int entry_point ( int ( *choice )  ,  int ( *value )  )   { 
  do  { 
     ; 
    switch  (  ( *choice )  )   { 
      case 1: ; 
        enqueue (  ( *value )  )  ; 
        break ; 
      case 2:
        dequeue (  )  ; 
        break ; 
      case 3:
        showQueue (  )  ; 
        break ; 
      case 4: ; 
        break ; 
      default: ; 
     } 
   }  while  (  ( *choice )  != 4 )  ; 
  return 0 ; 
 } 
