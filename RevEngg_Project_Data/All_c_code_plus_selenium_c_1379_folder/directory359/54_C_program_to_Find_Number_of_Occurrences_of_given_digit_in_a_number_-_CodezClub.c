/* Source: https://www.codezclub.com/write-a-c-program-to-count-occurrence-of-digit-in-number/ */
/*  C program to Find Number of Occurrences of given digit in a number  */

#include <stdio.h>

int main()
{
    int num,tNum,digit,cnt;
    int rem;

    printf("\nEnter any number :: ");
    scanf("%d",&num);
    printf("\nEnter any digit to Search :: ");
    scanf("%d",&digit);

    cnt=0;
    tNum=num;

    while(tNum>0)
    {
        rem=tNum%10;
        if(rem==digit)
            cnt++;
        tNum/=10;
    }

    printf("\nTotal occurrence of digit [ %d ] in Number [ %d ] is :: [ %d ].\n",digit,num,cnt);

    return 0;
}