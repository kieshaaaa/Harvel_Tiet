/* Source: https://www.codezclub.com/c-find-sum-of-series-from-1-to-n/ */
/*  C program to find sum of Series : 1^2+2^2+3^2+4^2+....+N^2  */

#include<stdio.h>

int main()
{
    int counter, N;
    unsigned long total;

    /*read value of N*/
    printf("\nEnter the value of N :: ");
    scanf("%d",&N);

    /*set sum by 0*/
    total=0;
    counter = 1;

    /*calculate sum of the series*/
    while(counter <= N){
        total = total + (counter * counter);
        counter++;
    }

    /*print the sum*/

    printf("\nSum of the series is :: [ %ld ]\n",total);

    return 0;
}