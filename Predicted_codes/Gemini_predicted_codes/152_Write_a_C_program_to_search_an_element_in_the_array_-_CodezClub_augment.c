int entry_point ( int arraySize , int data , int searchValue , int ( *temptemp1 ) , int ( *temptemp2 ) , int ( *temptemp3 ) , int ( *temptemp4 ) )   { 
  if  ( arraySize > 0 )   { 
    ( *temptemp1 )  = arraySize ; 
    if  ( data == searchValue )   { 
      ( *temptemp2 )  = searchValue ; 
      ( *temptemp3 )  = 1 ; 
     }  else  { 
      ( *temptemp4 )  = searchValue ; 
     } 
   }  else  { 
    ( *temptemp4 )  = searchValue ; 
   } 
  return 0 ; 
 }