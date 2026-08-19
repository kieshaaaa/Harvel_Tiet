#include <math.h>
#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4)) {
float imaginary;
float root2Real;
float root1Real;
float discriminant;
;
;
;
 discriminant = (*b)*(*b) - 4*(*a)*(*c);
 root1Real = root2Real = -(*b) / (2*(*a));
 imaginary = sqrt(fabs(discriminant)) / (2*(*a));
;
;
{
(*temptemp1) = root1Real ;
(*temptemp2) = imaginary ;
(*temptemp3) = root2Real ;
(*temptemp4) = imaginary) ;
;
}
 return 0;
}
