int entry_point ( int arraySize , int data , int ( *temptemp1 ) , int ( *temptemp2 ) ) {
  int i ;
  int reversed [ 100 ] ;
  ;
  for  ( i = 0 ;  i < arraySize ;  i++ )   {
    reversed [ i ] = data ;
   }
  if  ( arraySize > 0 )   {
    {
      ( *temptemp1 ) = arraySize ;
      ;
    }
    {
      ( *temptemp2 ) = reversed [ arraySize - 1 ] ;
      ;
    }
   }
  return 0 ;
}