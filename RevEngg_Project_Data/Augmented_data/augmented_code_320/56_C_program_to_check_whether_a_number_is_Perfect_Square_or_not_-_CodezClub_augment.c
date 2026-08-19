/* Source: https://www.codezclub.com/c-check-whether-number-perfect-square-or-not/ */
/* C program to check whether a number is Perfect Square or not  */

#include <stdio.h>
#include <math.h>

int main()
{
    int number;
    int integerPart;
    float floatPart;

    printf("\nEnter any number :: ");
    scanf("%d",&number);

    floatPart=sqrt((double)number);
    integerPart=floatPart;

    if(integerPart==floatPart)
        printf("\nThe Entered Number [ %d ] is a Perfect Square.\n",number);
    else
        printf("\nThe Entered Number [ %d ] is not a Perfect Square.\n",number);

    return 0;
}