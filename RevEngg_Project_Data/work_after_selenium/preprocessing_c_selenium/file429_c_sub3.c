#include <stdio.h>

int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5)) {
char letter = 'D';
int number = 912;
float decimal = 1011.12f;
float largeDecimal = 5678.91f;
char phrase[] = "C Programming";
int sizeOfLetter = sizeof(letter);
int sizeOfNumber = sizeof(number);
int sizeOfDecimal = sizeof(decimal);
int sizeOfLargeDecimal = sizeof(largeDecimal);
int sizeOfPhrase = sizeof(phrase);
{
(*temptemp1) = sizeOfLetter ;
;
}
{
(*temptemp2) = sizeOfNumber ;
;
}
{
(*temptemp3) = sizeOfDecimal ;
;
}
{
(*temptemp4) = sizeOfLargeDecimal ;
;
}
{
(*temptemp5) = sizeOfPhrase ;
;
}
 return 0;
}
