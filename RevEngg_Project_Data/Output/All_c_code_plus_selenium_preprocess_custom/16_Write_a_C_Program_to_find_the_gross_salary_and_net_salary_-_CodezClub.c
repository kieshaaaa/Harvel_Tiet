#include<stdio.h>

int entry_point(char (*name), float (*basic), float (*temptemp1), float (*temptemp2))
{
float net;
float gross;
float pf;
float tax;
float hra;
float da;
;
;
 pf = 0.08 * (*basic);
 if ((*basic) < 5000)
 {
 da = 0.3 * (*basic);
 hra = 0.08 * (*basic);
 }
 else if (((*basic) >= 5000) && ((*basic) < 10000))
 {
 da = 0.4 * (*basic);
 hra = 0.1 * (*basic);
 }
 else
 {
 da = 0.5 * (*basic);
 hra = 0.2 * (*basic);
 }
 gross = (*basic) + da + hra;
 net = gross - tax + pf;
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
