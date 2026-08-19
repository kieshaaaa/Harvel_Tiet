/* Source: https://www.includehelp.com/c-programs/create-an-integer-array-and-store-the-even-and-odd-elements-in-a-different-array.aspx */
// C program to create an integer array and store
// the EVEN and ODD elements in a different array

#include <stdio.h>

int main()
{
    int arr[6];
    int evenArr[6];
    int oddArr[6];

    int i = 0, j = 0, k = 0;

    printf("Enter the array elements: ");
    for (i = 0; i < 6; i++)
        scanf("%d", &arr[i]);

    for (i = 0; i < 6; i++) {
        if (arr[i] % 2 == 0)
            evenArr[j++] = arr[i];
        else
            oddArr[k++] = arr[i];
    }

    printf("Even elements: ");
    for (i = 0; i < j; i++)
        printf("%d ", evenArr[i]);

    printf("\nOdd elements: ");
    for (i = 0; i < k; i++)
        printf("%d ", oddArr[i]);

    printf("\n");
    return 0;
}
