#include <stdio.h>

int main() {
    int arr[10];
    int sum = 0, product = 1, i;

    printf("\nEnter elements:\n");
    for(i = 0; i < 10; i++) {
        printf("Enter arr[%d]: ", i);
        scanf("%d", &arr[i]);
        // Perform calculations while reading the input
        sum += arr[i];
        product *= arr[i];
    }

    printf("\nSum of array is: %d", sum);
    printf("\nProduct of array is: %d\n", product);

    return 0;
}