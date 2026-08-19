/* Source: https://www.includehelp.com/c-programs/find-the-size-of-the-array-using-macro.aspx */
// C program to find size of array using macro

#include <stdio.h>

#define SizeOfArray(arr) sizeof(arr) / sizeof(arr[0])

int main()
{
    int arr[] = { 1, 2, 3, 4, 5 };

    printf("Size of array 'arr' is: %ld\n", SizeOfArray(arr));

    return 0;
}
