#include <stdio.h>

int main() {
    int arr[10], largest, smallest, i;
    
    printf("\nEnter 10 elements: \n");
    for (i = 0; i < 10; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
    }

    largest = smallest = arr[0];
    
    for (i = 1; i < 10; i++) {
        if (arr[i] > largest) {
            largest = arr[i];
        }
        if (arr[i] < smallest) {
            smallest = arr[i];
        }
    }

    printf("\nLargest element: %d\n", largest);
    printf("Smallest element: %d\n", smallest);

    return 0;
}