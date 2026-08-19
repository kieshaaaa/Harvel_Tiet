#include <stdio.h>

int main() {
    int arr[10];
    int i = 0;

    // Reading array elements using while loop
    while(i < 10) {
        printf("Enter element %d: ", i);
        scanf("%d", &arr[i]);
        i++;
    }

    i = 0; // Resetting the counter for printing
    printf("Array elements are:\n");
    while(i < 10) {
        printf("arr[%d]: %d\n", i, arr[i]);
        i++;
    }

    return 0;
}