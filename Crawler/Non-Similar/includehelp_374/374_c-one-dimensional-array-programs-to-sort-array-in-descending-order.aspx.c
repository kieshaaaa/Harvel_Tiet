/* Source: https://www.includehelp.com/c-programs/c-one-dimensional-array-programs-to-sort-array-in-descending-order.aspx */
/* C program to sort an one dimensional array 
in descending order.*/

#include <stdio.h>
#define MAX 100

int main()
{
    int arr[MAX], n, i, j;
    int temp;

    printf("Enter total number of elements: ");
    scanf("%d", &n);

    //read array elements
    printf("Enter array elements:\n");
    for (i = 0; i < n; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    //sort array
    for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (arr[i] < arr[j]) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    printf("\nArray elements after sorting:\n");
    for (i = 0; i < n; i++) {
        printf("%d\n", arr[i]);
    }
    return 0;
}
