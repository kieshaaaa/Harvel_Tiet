#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  char x = 'C' ; 
  int y = 678 ; 
  float z = 789.01f ; 
  float q = 4567.89f ; 
  char greeting [  ]  = "Hello ,  C!" ; 
  int size_x = sizeof ( x )  ; 
  int size_y = sizeof ( y )  ; 
  int size_z = sizeof ( z )  ; 
  int size_q = sizeof ( q )  ; 
  int size_greeting = sizeof ( greeting )  ; 
   { 
     ( *temptemp1 )  = size_x ; 
     ( *temptemp2 )  = size_y ; 
     ( *temptemp3 )  = size_z ; 
     ( *temptemp4 )  = size_q ; 
     ( *temptemp5 )  = size_greeting ; 
     ; 
   } 
  return 0 ; 
 } 
