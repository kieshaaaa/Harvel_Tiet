#include <ctype.h>
#include <stdio.h>

int entry_point(char (*ch), char (*temptemp1), char (*temptemp2), char (*temptemp3)) {
;
 (*ch) = tolower((*ch));
 char vowels[] = {'a', 'e', 'i', 'o', 'u'};
int isVowel = 0;
 if((*ch) >= 'a' && (*ch) <= 'z') {
int i = 0;
 if((*ch) == vowels[i]) {
 isVowel = 1;
 break;
 }
 }
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
