#include <stdio.h>

int main() {
    int arr[10];
    int largest, smallest, i;

    printf("\nEnter 10 elements: \n");
    for (i = 0; i < 10; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
    }

    largest = smallest = arr[0];

    for (i = 1; i < 10; i++) {
        largest = (arr[i] > largest) ? arr[i] : largest;
        smallest = (arr[i] < smallest) ? arr[i] : smallest;
    }

    printf("\nLargest element: %d\n", largest);
    printf("Smallest element: %d\n", smallest);

    return 0;
}