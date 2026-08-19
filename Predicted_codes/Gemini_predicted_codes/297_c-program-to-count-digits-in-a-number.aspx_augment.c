int entry_point ( int number , int ( *temptemp1 ) , int ( *temptemp2 ) )  { 
  int tempNumber ; 
  int digitCount ; 
  tempNumber = number ; 
  digitCount = 0 ; 
    ; 
  for  ( ;  tempNumber > 0 ;  )  { 
    tempNumber = tempNumber / 10 ; 
    digitCount++ ; 
    } 
    { 
      ( *temptemp1 )  = digitCount ; 
      ; 
    } 
    { 
      ( *temptemp2 )  = number ; 
      ; 
    } 
  return 0 ; 
 }```