/* Source: https://www.codezclub.com/c-to-put-even-odd-elements-in-separate-array/ */
/* C Program to separate odd and even elements of array in two separate arrays */

#include <stdio.h>

#define MAX_SIZE 1000 //Maximum size of the array

void printArray(int arr[], int len);



int main()
{
    int arr[MAX_SIZE], i, n;
    int even[MAX_SIZE], odd[MAX_SIZE], evenCount, oddCount;

    /*
     * Reads size and elements in the array
     */
    printf("Enter size of the array: ");
    scanf("%d", &n);
    printf("\nEnter elements in the array: \n");
    for(i=0; i<n; i++)
    {
        printf("\nEnter %d element in the array: ",i+1);
        scanf("%d", &arr[i]);
    }

    evenCount = oddCount = 0;
    for(i=0; i<n; i++)
    {
        // If arr[i] is odd
        if(arr[i] & 1)
        {
            odd[oddCount] = arr[i];
            oddCount++;
        }
        else
        {
            even[evenCount] = arr[i];
            evenCount++;
        }
    }

    printf("\nElements of even array: \n");
    printArray(even, evenCount);

    printf("\nElements of odd array: \n");
    printArray(odd, oddCount);

    return 0;
}



/**
 * Prints the entire integer array
 * @arr Integer array to be displayed or printed on screen
 * @len Length of the array
 */
void printArray(int arr[], int len)
{
    int i;
    printf("Elements in the array: ");
    for(i=0; i<len; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}