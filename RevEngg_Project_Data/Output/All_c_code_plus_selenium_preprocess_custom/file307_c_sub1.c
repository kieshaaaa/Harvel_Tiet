#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5), float (*temptemp6), float (*temptemp7), float (*temptemp8), float (*temptemp9)) {
float imgPart;
float root2;
float root1;
float discriminant;
;
 if ((*a) == 0) {
;
 return 0;
 }
 discriminant = (*b) * (*b) - 4 * (*a) * (*c);
{
(*temptemp1) = discriminant ;
;
}
 if (discriminant > 0) {
 root1 = (-(*b) + sqrt(discriminant)) / (2 * (*a));
 root2 = (-(*b) - sqrt(discriminant)) / (2 * (*a));
{
(*temptemp2) = root1 ;
(*temptemp3) = root2 ;
;
}
 } else if (discriminant == 0) {
 root1 = -(*b) / (2 * (*a));
{
(*temptemp4) = root1 ;
(*temptemp5) = root1 ;
;
}
 } else {
 root1 = -(*b) / (2 * (*a));
 imgPart = sqrt(-discriminant) / (2 * (*a));
{
(*temptemp6) = root1 ;
(*temptemp7) = imgPart ;
(*temptemp8) = root1 ;
(*temptemp9) = imgPart ;
;
}
 }
 return 0;
}
