#include <stdio.h>

int entry_point(int (*givenNumber), int (*temptemp1), int (*temptemp2)) {
int extractedDigit;
int digitsSum = 0;
int digitsProduct = 1;
;
 for (; (*givenNumber) != 0; (*givenNumber) = (*givenNumber) / 10) {
 extractedDigit = (*givenNumber) % 10;
 digitsSum = digitsSum + extractedDigit;
 digitsProduct = digitsProduct * extractedDigit;
 }
{
(*temptemp1) = digitsSum ;
;
}
{
(*temptemp2) = digitsProduct ;
;
}
 return 0;
}
