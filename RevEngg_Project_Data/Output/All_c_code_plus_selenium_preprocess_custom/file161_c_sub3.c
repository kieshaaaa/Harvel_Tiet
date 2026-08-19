#include<stdio.h>

int entry_point(char (*name), float (*basic), float (*temptemp1), float (*temptemp2)) {
float tax;
float net;
float gross;
float pf;
float hra;
float da;
;
;
 pf = 0.08 * (*basic);
 da = ((*basic) >= 10000) ? 0.5 * (*basic) : (((*basic) >= 5000) ? 0.4 * (*basic) : 0.3 * (*basic));
 hra = ((*basic) >= 10000) ? 0.2 * (*basic) : (((*basic) >= 5000) ? 0.1 * (*basic) : 0.08 * (*basic));
 gross = (*basic) + da + hra;
 tax = 0.07 * gross;
 net = gross - tax - pf;
{
(*temptemp1) = gross ;
;
}
{
(*temptemp2) = net ;
;
}
 return 0;
}
