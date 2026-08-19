#include <stdio.h>

int entry_point(char (*ch), char (*temptemp1), char (*temptemp2), char (*temptemp3)) {
;
 if(((*ch) >= 'A' && (*ch) <= 'Z') || ((*ch) >= 'a' && (*ch) <= 'z')) {
char isVowel = ((*ch) == 'A' || (*ch) == 'E' || (*ch) == 'I' || (*ch) == 'O' || (*ch) == 'U' ||
 (*ch) == 'a' || (*ch) == 'e' || (*ch) == 'i' || (*ch) == 'o' || (*ch) == 'u');
 (*ch) == 'a' || (*ch) == 'e' || (*ch) == 'i' || (*ch) == 'o' || (*ch) == 'u');
 if(isVowel) {
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
 } else {
{
(*temptemp3) = (*ch) ;
;
}
 }
 return 0;
}
