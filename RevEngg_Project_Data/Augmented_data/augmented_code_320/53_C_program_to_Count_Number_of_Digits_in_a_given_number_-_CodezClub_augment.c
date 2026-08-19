/* Source: https://www.codezclub.com/c-count-number-of-digits-of-entered-number/ */
/* C program to Count Number of Digits in a given number  */

#include <stdio.h>

int main()
{
    int number, tempNumber, digitCount;

    printf("\nEnter any number :: ");
    scanf("%d",&number);

    digitCount=0;
    tempNumber=number;

    for(;tempNumber>0;){
        digitCount++;
        tempNumber/=10;
    }

    printf("\nNumber of digits in [ %d ] is :: [ %d ].\n" ,number,digitCount);

    return 0;
}