#include <stdio.h>

int entry_point ( float ( *salary )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  )   { 
  float emplyrContrib ; 
  float empContrib ; 
   ; 
  empContrib =  (  ( *salary )  / 100 )  * 12.5f ; 
  emplyrContrib =  (  ( *salary )  / 100 )  * 12.0f ; 
   { 
     ( *temptemp1 )  =  ( *salary )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = empContrib ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = emplyrContrib ; 
     ; 
   } 
  return 0 ; 
 } 