/* Source: https://www.codezclub.com/c-find-sum-of-series-from-1-to-n/ */
/*  C program to find sum of Series : 1^2+2^2+3^2+4^2+....+N^2  */

#include<stdio.h>

int main()
{
    int i,N;
    unsigned long sum;

    /*read value of N*/
    printf("\nEnter the value of N :: ");
    scanf("%d",&N);

    /*set sum by 0*/
    sum=0;

    /*calculate sum of the series*/
    for(i=1;i<=N;i++)
        sum= sum+ (i*i);

    /*print the sum*/

    printf("\nSum of the series is :: [ %ld ]\n",sum);

    return 0;
}