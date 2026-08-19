/* Source: https://www.codezclub.com/c-to-count-total-negative-elements-in-array/ */
/*  C program to count total number of negative elements in array  */

#include <stdio.h>

int main()
{
    int data[100]; //Declares an array of size 100
    int j, num, negCount=0;

    /*
     * Reads size and elements of array
     */
    printf("Enter size of the array : ");
    scanf("%d", &num);

    printf("\nEnter elements in array : \n");
    j = 0;
    while(j < num)
    {
        printf("\nEnter %d element in array : ",j+1);
        scanf("%d", &data[j]);
        j++;
    }

    /*
     * Counts total number of negative elements in array
     */
    j=0;
    while(j < num)
    {
        if(data[j]<0)
        {
            negCount++;
        }
        j++;
    }

    printf("\nTotal number of negative elements = %d", negCount);

    return 0;
}