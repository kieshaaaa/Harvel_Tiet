#include <stdio.h>

int main() {
    int arr[100], n, pos, val;
    int i, j;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);


    printf("Enter the position where you want to insert the new element: ");
    scanf("%d", &pos);

    printf("Enter the value of the new element: ");
    scanf("%d", &val);

    // Insertion logic
    for (i = n; i >= pos; i--) {
        arr[i] = arr[i - 1];
    }
    arr[pos - 1] = val;
    n++;

    printf("Array after insertion:\n");
    for (j = 0; j < n; j++) {
        printf("%d ", arr[j]);
    }

    return 0;
}
