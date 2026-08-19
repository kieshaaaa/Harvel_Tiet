/* Source: https://www.includehelp.com/c-programs/c-one-dimensional-array-programs-to-find-occurrence-of-an-element.aspx */
/* C program to find occurrence of an element 
in one dimensional array.
*/

#include <stdio.h>
#define MAX 100

int main()
{
    int arr[MAX], n, i;
    int num, count;

    printf("Enter total number of elements: ");
    scanf("%d", &n);

    //read array elements
    printf("Enter array elements:\n");
    for (i = 0; i < n; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Enter number to find Occurrence: ");
    scanf("%d", &num);

    //count occurance of num
    count = 0;
    for (i = 0; i < n; i++) {
        if (arr[i] == num)
            count++;
    }
    printf("Occurrence of %d is: %d\n", num, count);
    return 0;
}
