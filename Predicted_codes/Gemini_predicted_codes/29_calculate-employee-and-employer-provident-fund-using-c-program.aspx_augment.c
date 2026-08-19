int entry_point ( int salary , int ( *temptemp1 ) , int ( *temptemp2 ) , int ( *temptemp3 ) )  { 
  float salary_f ; 
  float div_result ; 
  float temp2 ; 
  float temp3 ; 
    ; 
  salary_f = (float)salary ; 
  div_result = salary_f / 100.0f ; 
  temp2 = div_result * 10.0f ; 
  temp3 = div_result * 9.5f ; 
    { 
      ( *temptemp1 )  = salary ; 
      ; 
    } 
    { 
      ( *temptemp2 )  = (int)temp2 ; 
      ; 
    } 
    { 
      ( *temptemp3 )  = (int)temp3 ; 
      ; 
    } 
  return 0 ; 
 }```