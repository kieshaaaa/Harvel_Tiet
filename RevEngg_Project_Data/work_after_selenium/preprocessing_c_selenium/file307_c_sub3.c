#include <math.h>
#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1)) {
float discriminant;
;
 if ((*a) == 0) {
;
 return 0;
 }
 discriminant = (*b)*(*b) - 4*(*a)*(*c);
{
(*temptemp1) = discriminant ;
;
}
 if (discriminant > 0) {
;
 (-(*b) + sqrt(discriminant)) / (2*(*a)),
 (-(*b) - sqrt(discriminant)) / (2*(*a)));
 } else if (discriminant == 0) {
;
 -(*b) / (2*(*a)), -(*b) / (2*(*a)));
 } else {
;
 -(*b) / (2*(*a)), sqrt(-discriminant) / (2*(*a)),
 -(*b) / (2*(*a)), sqrt(-discriminant) / (2*(*a)));
 }
 return 0;
}
