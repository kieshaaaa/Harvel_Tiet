int entry_point ( float rad , int ( *temptemp1 ) , int ( *temptemp2 ) ) {
  double pi ;
  double rad_d ;
  double area_d ;
  float area_f ;

  rad_d = ( double ) rad ;
  pi = 3.1415926535897931 ;
  area_d = pi * rad_d * rad_d ;
  area_f = ( float ) area_d ;

  {
    ( * ( float * ) temptemp1 ) = area_f ;
    ;
  }
  {
    ( * ( float * ) temptemp2 ) = rad ;
    ;
  }
  
  return 0 ;
}