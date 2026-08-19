int entry_point ( int number , int ( *temptemp1 ) , int ( *temptemp2 ) )  { 
  int sum_of_divisors ; 
  int i ; 
  sum_of_divisors = 0 ; 
    ; 
  for  ( i = 1 ;  i < number ;  i++ )  { 
    if  ( number % i == 0 )  { 
      sum_of_divisors = sum_of_divisors + i ; 
      } 
    } 
    { 
      ( *temptemp1 )  = sum_of_divisors ; 
      ; 
    } 
    { 
      ( *temptemp2 )  = number ; 
      ; 
    } 
  return 0 ; 
 }```