/* Source: https://www.includehelp.com/c-programs/c-program-to-find-largest-and-smallest-element-among-array-elements.aspx */
/*Program to find largest & smallest element among all elements.*/

#include <stdio.h>

/** funtion :   readElements() 
    input   :   data ( array of integer ), size 
    to read ONE-D integer array from standard input device (keyboard). 
**/
void readElements(int data[], int size)
{
    int i = 0;

    printf("\nEnter elements : \n");

    while (i < size) {
        printf("Enter data[%d] : ", i);
        scanf("%d", &data[i]);
        i++;
    }
}

/** funtion :   findLargest() 
    input   :   data ( array of integer ), size 
    to get largest element of array. 
**/
int findLargest(int data[], int size)
{
    int i = 0, largest = 0;

    largest = data[0];

    while (i < size) {
        if (data[i] > largest)
            largest = data[i];
        i++;
    }

    return largest;
}

/** funtion :   findSmallest() 
    input   :   data ( array of integer ), size 
    to get smallest element of array. 
**/
int findSmallest(int data[], int size)
{
    int i = 0, smallest = 0;

    smallest = data[0];

    while (i < size) {
        if (data[i] < smallest)
            smallest = data[i];
        i++;
    }

    return smallest;
}

int main()
{
    int arr[10];

    readElements(arr, 10);

    printf("\nLargest  element of array is     : %d", findLargest(arr, 10));
    printf("\nSmallest element of array is     : %d\n", findSmallest(arr, 10));

    return 0;
}