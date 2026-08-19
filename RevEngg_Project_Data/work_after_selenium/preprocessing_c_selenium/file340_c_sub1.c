#include <stdio.h>

int entry_point(float (*basic), float (*hra), float (*da), char (*temptemp1), float (*temptemp2), float (*temptemp3), float (*temptemp4), float (*temptemp5), float (*temptemp6)) {
char name[30];
float pf;
float gross;
;
 fgets(name, 30, stdin);
;
;
;
 pf = (*basic) * 0.12;
 gross = (*basic) + (*hra) + (*da) + pf;
{
(*temptemp1) = name ;
;
}
{
(*temptemp2) = (*basic) ;
;
}
{
(*temptemp3) = (*hra) ;
;
}
{
(*temptemp4) = (*da) ;
;
}
{
(*temptemp5) = pf ;
;
}
{
(*temptemp6) = gross ;
;
}
 return 0;
}
