#include <stdio.h>

int entry_point ( float ( *heightCm )  ,  float ( *weightKg )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  ,  int ( *temptemp6 )  ,  int ( *temptemp7 )  )   { 
  float bodyMassIndex ; 
  int category ; 
   ; 
   ; 
  float heightM =  ( *heightCm )  / 100 ; 
  bodyMassIndex =  ( *weightKg )  /  ( heightM * heightM )  ; 
  if  ( bodyMassIndex < 15 )   { 
    category =  ( int ) bodyMassIndex + 1 ; 
     { 
       ( *temptemp1 )  = category ; 
       ; 
     } 
   }  else if  ( bodyMassIndex >= 15.1 && bodyMassIndex <= 17.5 )   { 
    category =  ( int ) bodyMassIndex + 2 ; 
     { 
       ( *temptemp2 )  = category ; 
       ; 
     }  ; 
   }  else if  ( bodyMassIndex >= 17.6 && bodyMassIndex <= 18.5 )   { 
    category =  ( int ) bodyMassIndex + 3 ; 
     { 
       ( *temptemp3 )  = category ; 
       ; 
     }  ; 
   }  else if  ( bodyMassIndex >= 18.6 && bodyMassIndex <= 24.9 )   { 
    category =  ( int ) bodyMassIndex + 4 ; 
     { 
       ( *temptemp4 )  = category ; 
       ; 
     }  ; 
   }  else if  ( bodyMassIndex >= 25 && bodyMassIndex <= 29.9 )   { 
    category =  ( int ) bodyMassIndex + 5 ; 
     { 
       ( *temptemp5 )  = category ; 
       ; 
     }  ; 
   }  else if  ( bodyMassIndex >= 30 && bodyMassIndex <= 39.9 )   { 
    category =  ( int ) bodyMassIndex + 6 ; 
     { 
       ( *temptemp6 )  = category ; 
       ; 
     }  ; 
   }  else  { 
    category =  ( int ) bodyMassIndex + 7 ; 
     { 
       ( *temptemp7 )  = category ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
