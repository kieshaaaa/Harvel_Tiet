#include <stdio.h>

int main() {
    int arr[100], n, pos, val;
    int i;

    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Enter the position where you want to insert the new element: ");
    scanf("%d", &pos);

    printf("Enter the value of the new element: ");
    scanf("%d", &val);

    for (i = n; i >= pos; --i) {
        arr[i] = arr[i - 1];
    }
    arr[pos - 1] = val;
    ++n;

    printf("Array after insertion:\n");
    for (i = 0; i < n; ++i) {
        printf("%d ", arr[i]);
    }

    return 0;
}