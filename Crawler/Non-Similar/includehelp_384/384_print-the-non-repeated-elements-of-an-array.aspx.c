/* Source: https://www.includehelp.com/c-programs/print-the-non-repeated-elements-of-an-array.aspx */
// C program to print the non-repeated elements of an array

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int arr[] = { 1, 2, 3, 2, 2, 5, 6, 1 };

    int iLoop = 0;
    int jLoop = 0;

    printf("Non repeated elements are: ");
    for (iLoop = 0; iLoop < 8; iLoop++) {
        for (jLoop = 0; jLoop < 8; jLoop++) {
            if (arr[iLoop] == arr[jLoop] && iLoop != jLoop)
                break;
        }
        if (jLoop == 8) {
            printf("%d ", arr[iLoop]);
        }
    }
    printf("\n");

    return 0;
}
