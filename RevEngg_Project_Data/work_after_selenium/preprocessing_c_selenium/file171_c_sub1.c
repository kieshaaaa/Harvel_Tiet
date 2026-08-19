#include <math.h>
#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5), float (*temptemp6), float (*temptemp7)) {
float root2;
float root1;
float discriminant;
float imagPart;
float realPart;
;
;
;
 discriminant = (*b)*(*b) - 4*(*a)*(*c);
 if (discriminant > 0) {
 root1 = (-(*b) + sqrt(discriminant)) / (2*(*a));
 root2 = (-(*b) - sqrt(discriminant)) / (2*(*a));
{
(*temptemp1) = root1 ;
;
}
{
(*temptemp2) = root2 ;
;
}
 } else if (discriminant == 0) {
 root1 = root2 = -(*b) / (2*(*a));
{
(*temptemp3) = root1 ;
;
}
 } else {
 realPart = -(*b) / (2*(*a));
 imagPart = sqrt(-discriminant) / (2*(*a));
{
(*temptemp4) = realPart ;
(*temptemp5) = imagPart ;
;
}
{
(*temptemp6) = realPart ;
(*temptemp7) = imagPart ;
;
}
 }
 return 0;
}
