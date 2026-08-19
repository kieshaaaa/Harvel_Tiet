/* Source: https://www.codezclub.com/c-to-find-second-largest-number-in-an-array/ */
/* C program to find second largest number in an array  */

#include <stdio.h>
#include <limits.h> //For INT_MIN

#define MAX_SIZE 1000

int main()
{
    int arr[MAX_SIZE], N, i;
    int max1, max2;

    /*
     * Reads size and elements in the array
     */
    printf("Enter size of the array (1-1000): ");
    scanf("%d", &N);
    printf("\nEnter %d elements in the array: \n",N);
    for(i=0; i<N; i++)
    {
        printf("\nEnter %d element in an array: ",i+1);
        scanf("%d", &arr[i]);
    }

    max1 = max2 = INT_MIN;

    /*
     * Checks for first largest and second largest till N
     */
    for(i=0; i<N; i++)
    {
        if(arr[i] > max1)
        {
            /*
             * If current element of the array is first largest
             * then make current max as second max
             * and then max as current array element
             */
            max2 = max1;
            max1 = arr[i];
        }
        else if(arr[i] > max2)
        {
            /*
             * If current array element is less than first largest
             * but is greater than second largest then make it
             * second largest
             */
            max2 = arr[i];
        }
    }

    printf("\nFirst largest = %d\n", max1);
    printf("\nSecond largest = %d", max2);

    return 0;
}