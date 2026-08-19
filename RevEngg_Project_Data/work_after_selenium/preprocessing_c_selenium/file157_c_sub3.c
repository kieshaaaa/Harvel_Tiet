#include <stdio.h>

int entry_point(int (*target), int (*temptemp1), int (*temptemp2)) {
int primeFlag;
int divisor;
int latestPrime = 2;
int currentNumber = 2;
int primeCount = 0;
;
 while (primeCount < (*target)) {
 primeFlag = 1;
 for (divisor = 2; divisor <= currentNumber / 2; divisor++) {
 if (currentNumber % divisor == 0) {
 primeFlag = 0;
 break;
 }
 }
 if (primeFlag) {
 latestPrime = currentNumber;
 primeCount++;
 }
 currentNumber++;
 }
{
(*temptemp1) = (*target) ;
(*temptemp2) = latestPrime ;
;
}
 return 0;
}
