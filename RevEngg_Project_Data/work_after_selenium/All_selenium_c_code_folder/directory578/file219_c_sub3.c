#include <stdio.h>

int main() {
    int arr[100], size, i, num, count = 0;

    printf("Enter size of array: ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Search element: ");
    scanf("%d", &num);

    for(i = 0; i < size; i++) {
        if(arr[i] == num) {
            printf("%d found at position %d\n", num, i + 1);
            count++;
            break; // Remove this break to count all occurrences instead of just the first one.
        }
    }

    if(count == 0) {
        printf("%d not found\n", num);
    } else {
        printf("Total occurrences: %d\n", count);
    }

    return 0;
}