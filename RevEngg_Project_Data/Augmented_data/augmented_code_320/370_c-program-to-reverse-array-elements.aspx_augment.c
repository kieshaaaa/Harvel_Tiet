/* Source: https://www.includehelp.com/c-programs/c-program-to-reverse-array-elements.aspx */
/*program to sort array elements in ascending order. */
#include <stdio.h>

/** funtion :   inputArray() 
    input   :   data ( array of integer ), size 
    to read ONE-D integer array from standard input device (keyboard). 
**/
void inputArray(int data[], int size)
{
    int i = 0;

    printf("\nEnter elements : \n");

    while (i < size) {
        printf("Enter data[%d] : ", i);
        scanf("%d", &data[i]);
        i++;
    }
}

/** funtion :   displayArray() 
    input   :   data ( array of integer ), size 
    to display ONE-D integer array on standard output device (moniter). 
**/
void displayArray(int data[], int size)
{
    int i = 0;

    printf("\nElements are : ");

    while (i < size) {
        printf("\n\tdata[%d] : %d", i, data[i]);
        i++;
    }
    printf("\n");
}

void orderArray(int data[], int size)
{
    int i = 0, j = 0, temp;

    while (i < size - 1) {
        j = i + 1;
        while (j < size) {
            if (data[i] > data[j]) {
                temp = data[i];
                data[i] = data[j];
                data[j] = temp;
            }
            j++;
        }
        i++;
    }
}

int main()
{
    int arr[5];

    inputArray(arr, 5);

    printf("\nBefore Sorting");
    displayArray(arr, 5);

    orderArray(arr, 5);

    printf("\nAfter Sorting");
    displayArray(arr, 5);

    return 0;
}