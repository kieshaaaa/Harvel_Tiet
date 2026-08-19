#include <stdio.h>

int main() {
    int arr[10], i, temp;

    printf("\nEnter 10 elements: \n");
    for (i = 0; i < 10; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
    }

    int largest = arr[0];
    int smallest = arr[0];

    for (i = 1; i < 10; i++) {
        temp = arr[i];
        if (temp > largest) {
            largest = temp;
        }
        if (temp < smallest) {
            smallest = temp;
        }
    }

    printf("\nLargest element: %d\n", largest);
    printf("Smallest element: %d\n", smallest);

    return 0;
}