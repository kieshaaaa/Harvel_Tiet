/* Source: https://www.codezclub.com/c-to-sort-even-odd-elements-of-array-separately/ */
/*  C Program to sort even and odd elements of array separately  */

#include <stdio.h>
#include <limits.h> //Used for INT_MAX

#define MAX_SIZE 1000 //Maximum size of the array

void arrange(int arr[], int len, int evenIndex, int evenCount, int oddIndex, int oddCount);
void sort(int arr[], int start, int end);
void print(int arr[], int len);



int main()
{
    int arr[MAX_SIZE], i, n;
    int evenIndex, oddIndex, evenCount, oddCount, min;

    evenCount = oddCount = 0;
    min = INT_MAX; //Maximum value of integer

    printf("Enter size of the array :: ");
    scanf("%d", &n);
    printf("\nEnter elements in the array ::\n ");
    for(i=0; i<n; i++)
    {
        printf("\nEnter %d element in an array :: ",i+1);
        scanf("%d", &arr[i]);

        // Counts total number of even and odd elements
        if(arr[i] & 1)
            oddCount++;
        else
            evenCount++;

        //Checks for the minimum element
        if(arr[i] <= min)
            min = arr[i];
    }

    /*
     * Finds the first index of even and odd elements.
     * If minimum element is odd then put odd elements before even
     * elements otherwise put even elements first.
     */
    if(min & 1)
    {
        oddIndex = 0;
        evenIndex = oddCount;
    }
    else
    {
        evenIndex = 0;
        oddIndex = evenCount;
    }


    print(arr, n);

    //Arranges all even and odd elements sequentially
    arrange(arr, n, evenIndex, evenCount, oddIndex, oddCount);

    //Sorts even part of the array
    sort(arr, evenIndex, evenCount);

    //Sorts odd part of the array
    sort(arr, oddIndex, oddCount);

    //Prints the final sorted array
    printf("\nFinal array after sorting even and odd elements separately\n");
    print(arr, n);

    return 0;
}



/**
 * Arranges all even and odd elements of the array separately.
 */
void arrange(int arr[], int len, int evenIndex, int evenCount, int oddIndex, int oddCount)
{
    int i, j, temp;

    for(i=0; i<len; i++)
    {
        /*
         * If current element of array is odd put it into
         * odd element place
         */
        if(arr[i] & 1)
        {
            for(j=oddIndex; j<oddCount; j++)
            {
                //Look for an even element then swap with odd element
                if(!(arr[j] & 1))
                {
                    temp = arr[j];
                    arr[j] = arr[i];
                    arr[i] = temp;
                    break;
                }
            }
        }
        else //If current element is even
        {
            for(j=evenIndex; j<evenCount; j++)
            {
                //Look for an odd element then swap with even element
                if(arr[j] & 1)
                {
                    temp = arr[j];
                    arr[j] = arr[i];
                    arr[i] = temp;
                    break;
                }
            }
        }
    }
}



/**
 * Sorts the elements of array within a range
 */
void sort(int arr[], int start, int end)
{
    int i, j, temp;
    int len = start + end;

    for(i=start; i<len; i++)
    {
        for(j=i+1; j<len; j++)
        {
            if(arr[j] < arr[i])
            {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}



/**
 * Prints the entire integer array
 */
void print(int arr[], int len)
{
    int i;
    printf("\nElements in the array: ");
    for(i=0; i<len; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}