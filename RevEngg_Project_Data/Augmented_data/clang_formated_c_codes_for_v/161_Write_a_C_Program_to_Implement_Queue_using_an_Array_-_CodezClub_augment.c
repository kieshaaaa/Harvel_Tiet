#include <stdio.h>
#include <stdlib.h>

void enqueue (  )  ; 
void dequeue (  )  ; 
void show (  )  ; 
int queue_array [ 50 ]  ; 
int rear = -1 ; 
int front = -1 ; 
int entry_point ( int ( *choice )  )   { 
  int loop_counter = 1 ; 
  while  ( loop_counter )   { 
     ; 
     ; 
     ; 
     ; 
     ; 
    switch  (  ( *choice )  )   { 
      case 1:
        enqueue (  )  ; 
        break ; 
      case 2:
        dequeue (  )  ; 
        break ; 
      case 3:
        show (  )  ; 
        break ; 
      case 4:
        loop_counter = 0 ; 
        break ; 
      default: ; 
     } 
   } 
  return 0 ; 
 } 
void enqueue (  )   { 
  int add_item ; 
  if  ( rear == 50 - 1 ) 
     ; 
  else  { 
    if  ( front == -1 )  front = 0 ; 
     ; 
    rear = rear + 1 ; 
    queue_array [ rear ]  = add_item ; 
   } 
 } 
void dequeue (  )   { 
  if  ( front == -1 || front > rear )   { 
     ; 
    return ; 
   }  else  { 
     ; 
    front = front + 1 ; 
   } 
 } 
void show (  )   { 
  int i ; 
  if  ( front == -1 ) 
     ; 
  else  { 
     ; 
    for  ( i = front ;  i <= rear ;  i++ )  ; 
     ; 
   } 
 } 
