int entry_point ( float side1 , float side2 , float side3 , int ( *temptemp1 ) , int ( *temptemp2 ) )  { 
  if ( ( side1 + side2 > side3 ) && ( side2 + side3 > side1 ) && ( side1 + side3 > side2 ) )  { 
    ( *temptemp1 ) = 1 ; 
    ; 
   }  else  { 
    ( *temptemp2 ) = 0 ; 
    ; 
   } 
  return 0 ; 
 }```