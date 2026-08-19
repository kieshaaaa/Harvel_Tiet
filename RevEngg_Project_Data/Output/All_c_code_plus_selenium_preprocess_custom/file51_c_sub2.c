#include <stdio.h>
#include <math.h>

int entry_point(float (*base_side), float (*slant_h), float (*temptemp1)) {
float total_surface_area;
float triangle_area;
float square_area;
;
;
 square_area = (*base_side) * (*base_side);
 triangle_area = (*base_side) * (*slant_h);
 total_surface_area = square_area + 2 * triangle_area;
{
(*temptemp1) = total_surface_area ;
;
}
 return 0;
}
