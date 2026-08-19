#include <stdio.h>

int main() {
    int arr[100], n, pos, val;
    int i = 0;

    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    while (i < n) {
        scanf("%d", &arr[i]);
        i++;
    }

    printf("Enter the position where you want to insert the new element: ");
    scanf("%d", &pos);

    printf("Enter the value of the new element: ");
    scanf("%d", &val);

    i = n;
    while (i >= pos) {
        arr[i] = arr[i - 1];
        i--;
    }
    arr[pos - 1] = val;
    n++;

    printf("Array after insertion:\n");
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}