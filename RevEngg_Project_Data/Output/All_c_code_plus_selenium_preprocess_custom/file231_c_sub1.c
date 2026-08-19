#include<stdio.h>

int entry_point(char (*ch), char (*temptemp1), char (*temptemp2)) {
;
 if ((*ch) == 'a' || (*ch) == 'e' || (*ch) == 'i' || (*ch) == 'o' || (*ch) == 'u' ||
 (*ch) == 'A' || (*ch) == 'E' || (*ch) == 'I' || (*ch) == 'O' || (*ch) == 'U') {
{
(*temptemp1) = (*ch) ;
;
}
 } else {
{
(*temptemp2) = (*ch) ;
;
}
 }
 return 0;
}
