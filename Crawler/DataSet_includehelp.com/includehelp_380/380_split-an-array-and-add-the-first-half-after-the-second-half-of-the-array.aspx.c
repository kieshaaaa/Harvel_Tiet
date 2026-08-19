/* Source: https://www.includehelp.com/c-programs/split-an-array-and-add-the-first-half-after-the-second-half-of-the-array.aspx */
// C program to split an array and add the first half
// after the second half of the array

#include <stdio.h>

int main()
{
    int arr[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

    int i = 0;
    int j = 0;
    int p = 0;

    printf("Enter the position of the item to split the array: ");
    scanf("%d", &p);

    //Split the array and shift first half to the end of second half.
    for (int i = 0; i < p; i++) {
        int x = arr[0];
        for (j = 0; j < 9; ++j)
            arr[j] = arr[j + 1];
        arr[9] = x;
    }

    printf("Result is: ");
    for (i = 0; i <= 9; ++i)
        printf("%d ", arr[i]);

    printf("\n");

    return 0;
}
