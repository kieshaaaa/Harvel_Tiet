/* Source: https://www.includehelp.com/c-programs/access-array-element-out-of-bounds.aspx */
// C program to access array element out of bounds

#include <stdio.h>
int main()
{
    int arr[] = { 10, 20, 30, 40, 50 };
    int i = 0;

    printf("Array elements: ");
    for (i = 0; i < 5; i++)
        printf("\n\tarr[%d] is: %d", i, arr[i]);

    printf("\nElement at out of bound of  Array is:  %d\n", arr[6]);
    return 0;
}
