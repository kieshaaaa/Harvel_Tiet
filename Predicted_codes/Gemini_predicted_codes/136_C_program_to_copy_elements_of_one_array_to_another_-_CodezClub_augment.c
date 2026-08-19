int entry_point ( int arraySize , int arr1 , int ( *temptemp1 ) , int ( *temptemp2 ) , int ( *temptemp3 ) , int ( *temptemp4 ) ) {
    int arr2 [ 100 ] ;
    int i ;
    int limit ;

    ( *temptemp1 ) = arraySize ;
    ( *temptemp2 ) = arraySize ;
    ( *temptemp3 ) = arr1 ;

    if ( arraySize > 0 ) {
        limit = ( arraySize < 100 ) ? arraySize : 100 ;
        
        for ( i = 0 ; i < limit ; i++ ) {
            arr2 [ i ] = arr1 ;
        }
        
        ( *temptemp4 ) = arr2 [ limit - 1 ] ;
    }
    return 0 ;
}