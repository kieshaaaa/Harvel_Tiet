/* Source: https://www.codezclub.com/write-a-c-program-to-count-occurrence-of-digit-in-number/ */
/*  C program to Find Number of Occurrences of given digit in a number  */

#include <stdio.h>

int main()
{
    int number, tempNumber, digitToFind, count;
    int remainder;

    printf("\nEnter any number :: ");
    scanf("%d",&number);
    printf("\nEnter any digit to Search :: ");
    scanf("%d",&digitToFind);

    count=0;
    tempNumber=number;

    for(;tempNumber>0;)
    {
        remainder=tempNumber%10;
        if(remainder==digitToFind)
            count++;
        tempNumber/=10;
    }

    printf("\nTotal occurrence of digit [ %d ] in Number [ %d ] is :: [ %d ].\n",digitToFind,number,count);

    return 0;
}