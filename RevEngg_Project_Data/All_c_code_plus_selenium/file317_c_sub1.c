#include <stdio.h>

int main() {
    int arr[10];
    int sum = 0, product = 1, i = 0;

    printf("\nEnter elements:\n");
    while(i < 10) {
        printf("Enter arr[%d]: ", i);
        scanf("%d", &arr[i]);
        i++;
    }

    i = 0;
    while(i < 10) {
        sum += arr[i];
        product *= arr[i];
        i++;
    }

    printf("\nSum of array is: %d", sum);
    printf("\nProduct of array is: %d\n", product);

    return 0;
}