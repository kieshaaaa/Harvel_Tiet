#include <stdio.h>

int main() {
    int arr[100], n, position, i;

    printf("Enter size of the array (1-100): ");
    while (scanf("%d", &n) != 1 || n < 1 || n > 100) {
        printf("Invalid input. Please enter a number between 1 and 100: ");
        while(getchar() != '\n'); // Clear input buffer
    }

    printf("Enter the elements:\n");
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Enter position to delete (1-%d): ", n);
    while (scanf("%d", &position) != 1 || position < 1 || position > n) {
        printf("Invalid position. Enter a number between 1 and %d: ", n);
        while(getchar() != '\n'); // Clear input buffer
    }

    for (i = position - 1; i < n - 1; i++) {
        arr[i] = arr[i + 1];
    }

    printf("Array after deletion:\n");
    for (i = 0; i < n - 1; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}