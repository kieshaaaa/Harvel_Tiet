/* Source: https://www.includehelp.com/c-programs/c-program-to-reverse-array-elements.aspx */
/*program to sort array elements in ascending order. */
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

/** funtion :   printArray() 
    input   :   arr ( array of integer ), size 
    to display ONE-D integer array on standard output device (moniter). 
**/
void printArray(int arr[], int size)
{
    int i = 0;

    printf("\nElements are : ");

    for (i = 0; i < size; i++) {
        printf("\n\tarr[%d] : %d", i, arr[i]);
    }
    printf("\n");
}

void sortArray(int arr[], int size)
{
    int i = 0, j = 0, temp;

    for (i = 0; i < size - 1; i++) {
        for (j = i + 1; j < size; j++) {
            if (arr[i] > arr[j]) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

int main()
{
    int arr[5];

    readArray(arr, 5);

    printf("\nBefore Sorting");
    printArray(arr, 5);

    sortArray(arr, 5);

    printf("\nAfter Sorting");
    printArray(arr, 5);

    return 0;
}
