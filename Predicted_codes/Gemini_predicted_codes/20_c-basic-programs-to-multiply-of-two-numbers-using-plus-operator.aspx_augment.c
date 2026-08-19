int entry_point ( int num1 , int num2 , int ( *temptemp1 ) , int ( *temptemp2 ) , int ( *temptemp3 ) )  { 
    { 
      ( *temptemp1 ) = num1 ; 
      ; 
    } 
    { 
      ( *temptemp2 ) = num2 ; 
      ; 
    } 
    { 
      ( *temptemp3 ) = ( num2 > 0 ? num1 * ( num2 > 1 ? num2 : 1 ) : 0 ) ; 
      ; 
    } 
  return 0 ; 
 }```