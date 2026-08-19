int entry_point ( int num1 , int num2 , int num3 , int num4 , int num5 , int num6 , int ( *temptemp1 ) )  { 
  int add_term ; 
  int mul_div_term ; 
  int sub_term ; 
  int result ; 
  add_term = num1 + num2 ; 
  mul_div_term = num3 * add_term ; 
  mul_div_term = mul_div_term / num4 ; 
  sub_term = num5 - num6 ; 
  result = sub_term * mul_div_term ; 
    { 
      ( *temptemp1 ) = result ; 
      ; 
    } 
  return 0 ; 
 }```