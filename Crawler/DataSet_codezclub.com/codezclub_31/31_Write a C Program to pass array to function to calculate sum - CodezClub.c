/* Source: https://www.codezclub.com/c-pass-array-function/ */
/* Program to pass array to function*/

#include<stdio.h>
void func(int val[]);
int main( )
{
        int i, arr[6];
        printf("Enter Contents of array : \n");
        for(i=0; i<6; i++)
        {
                scanf("%d", &arr[i]);
        }
        func(arr);

        printf("\nContents of array are now : ");
        for(i=0; i<6; i++)
                printf("%d ", arr[i]);
        printf("\n");

        return 0;
}

void func(int val[])
{
        int sum=0, i;
        for(i=0; i<6; i++)
        {
                val[i]=val[i]*val[i];
                sum+=val[i];
        }
        printf("\nThe sum of squares  =  %d\n", sum);
}