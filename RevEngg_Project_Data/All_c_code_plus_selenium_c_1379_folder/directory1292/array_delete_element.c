#include <stdio.h>

int main() {
    int arr[100], n, pos;
    int i,j;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

   

    printf("Enter the position of the element you want to delete: ");
    scanf("%d", &pos);

    // Deletion logic
    for (i = pos - 1; i < n - 1; i++) {
        arr[i] = arr[i + 1];
    }
    n--;

    printf("Array after deletion:\n");
    for (j = 0; j < n; j++) {
        printf("%d ", arr[j]);
    }

    return 0;
}
