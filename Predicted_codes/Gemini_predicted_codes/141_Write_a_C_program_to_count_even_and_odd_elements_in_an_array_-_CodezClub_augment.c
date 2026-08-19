int entry_point ( int numElements , int array_r , int ( *temptemp1 ) , int ( *temptemp2 ) , int ( *temptemp3 ) , int ( *temptemp4 ) ) {
  int evenCount ;
  int oddCount ;

  if ( numElements > 0 ) {
    if ( array_r & 1 ) {
      evenCount = 0 ;
      oddCount = numElements ;
    } else {
      evenCount = numElements ;
      oddCount = 0 ;
    }
  } else {
    evenCount = 0 ;
    oddCount = 0 ;
  }

  {
    ( *temptemp1 ) = numElements ;
    ;
  }
  {
    ( *temptemp2 ) = numElements ;
    ;
  }
  {
    ( *temptemp3 ) = evenCount ;
    ;
  }
  {
    ( *temptemp4 ) = oddCount ;
    ;
  }
  return 0 ;
}