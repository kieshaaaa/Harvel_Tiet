#include <stdio.h>

int entry_point(float (*a), float (*b), float (*c), float (*d), float (*e), float (*temptemp1)) {
float max;
;
 max = (*a);
 if ((*b) > max) max = (*b);
 if ((*c) > max) max = (*c);
 if ((*d) > max) max = (*d);
 if ((*e) > max) max = (*e);
{
(*temptemp1) = max ;
;
}
 return 0;
}
