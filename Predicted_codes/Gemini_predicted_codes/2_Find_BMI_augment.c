int entry_point ( float height_meters_i, float weight_kg, float ( *height_meters_o ) , float ( *temptemp1 ) )  { 
  float height_div_32 ; 
  float height_sq ; 
  float bmi ; 
   
  height_div_32 = height_meters_i / 32.0f ; 
   
  ( *height_meters_o )  = height_div_32 ; 
   
  height_sq = height_div_32 * height_div_32 ; 
   
  bmi = weight_kg / height_sq ; 
   
  ( *temptemp1 )  = bmi ; 
   
  return 0 ; 
 }```