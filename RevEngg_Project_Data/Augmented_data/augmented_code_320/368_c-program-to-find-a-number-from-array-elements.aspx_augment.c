/* Source: https://www.includehelp.com/c-programs/c-program-to-find-a-number-from-array-elements.aspx */
/*program to find a number from array elements.*/

#include <stdio.h>
#define MAX 20

/*  function    :   readArray() 
    to read array elements. 
*/

void readData(int arr[], int size)
{
    int i = 0;
    while (i < size) {
        printf("Enter %d element :", i + 1);
        scanf("%d", &arr[i]);
        i++;
    }
}

/*  function    : findElement(), 
    to find an item from array elements. 
    return      : -1 for fail, 
              position to success. 
*/
int locateElement(int arr[], int size, int item)
{
    int i = 0, pos = -1;
    while (i < size) {
        if (arr[i] == item) {
            pos = i;
            break;
        }
        i++;
    }
    return pos;
}

int main()
{
    int arr[MAX];
    int n, item, pos;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    printf("\nEnter elements of Array 1:\n");
    readData(arr, n);

    printf("Enter an item to find :");
    scanf("%d", &item);

    pos = locateElement(arr, n, item);
    if (pos == -1)
        printf("\n%d does not exists in array.\n", item);
    else
        printf("\n%d find @ %d position.\n", item, pos);

    printf("\n\n");
    return 0;
}