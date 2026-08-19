#include <stdio.h>

int main() {
    int arr[100], n, pos, val;
    int i = 0;

    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    do {
        scanf("%d", &arr[i]);
        i++;
    } while (i < n);

    printf("Enter the position where you want to insert the new element: ");
    scanf("%d", &pos);

    printf("Enter the value of the new element: ");
    scanf("%d", &val);

    for (i = n; i >= pos; i--) {
        arr[i] = arr[i - 1];
    }
    arr[pos - 1] = val;
    n++;

    printf("Array after insertion:\n");
    i = 0;
    while (i < n) {
        printf("%d ", arr[i]);
        i++;
    }

    return 0;
}