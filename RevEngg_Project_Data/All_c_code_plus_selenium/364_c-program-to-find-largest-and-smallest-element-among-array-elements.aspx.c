/* Source: https://www.includehelp.com/c-programs/c-program-to-find-largest-and-smallest-element-among-array-elements.aspx */
/*Program to find largest & smallest element among all elements.*/

#include <stdio.h>

/** funtion :   readArray() 
    input   :   arr ( array of integer ), size 
    to read ONE-D integer array from standard input device (keyboard). 
**/
void readArray(int arr[], int size)
{
    int i = 0;

    printf("\nEnter elements : \n");

    for (i = 0; i < size; i++) {
        printf("Enter arr[%d] : ", i);
        scanf("%d", &arr[i]);
    }
}

/** funtion :   getLargest() 
    input   :   arr ( array of integer ), size 
    to get largest element of array. 
**/
int getLargest(int arr[], int size)
{
    int i = 0, largest = 0;

    largest = arr[0];

    for (i = 1; i < size; i++) {
        if (arr[i] > largest)
            largest = arr[i];
    }

    return largest;
}

/** funtion :   getSmallest() 
    input   :   arr ( array of integer ), size 
    to get smallest element of array. 
**/
int getSmallest(int arr[], int size)
{
    int i = 0, smallest = 0;

    smallest = arr[0];

    for (i = 1; i < size; i++) {
        if (arr[i] < smallest)
            smallest = arr[i];
    }

    return smallest;
}

int main()
{
    int arr[10];

    readArray(arr, 10);

    printf("\nLargest  element of array is     : %d", getLargest(arr, 10));
    printf("\nSmallest element of array is     : %d\n", getSmallest(arr, 10));

    return 0;
}
