/* Source: https://www.includehelp.com/c-programs/find-the-total-of-non-repeated-elements-of-an-array.aspx */
// C program to find the total of
// non-repeated elements of an array

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int arr[] = { 1, 2, 3, 2, 2, 5, 6, 1 };

    int iLoop = 0;
    int jLoop = 0;
    int cnt = 0;

    for (iLoop = 0; iLoop < 8; iLoop++) {
        for (jLoop = 0; jLoop < 8; jLoop++) {
            if (arr[iLoop] == arr[jLoop] && iLoop != jLoop)
                break;
        }
        if (jLoop == 8) {
            cnt = cnt + 1;
        }
    }
    printf("Total non-repeated elements are: %d\n", cnt);

    return 0;
}
