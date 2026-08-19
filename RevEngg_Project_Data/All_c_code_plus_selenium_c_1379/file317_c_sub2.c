#include <stdio.h>

int main() {
    int arr[10];
    int sum = 0, product = 1, i = 0;

    printf("\nEnter elements:\n");
    do {
        printf("Enter arr[%d]: ", i);
        scanf("%d", &arr[i]);
        i++;
    } while(i < 10);

    i = 0;
    do {
        sum += arr[i];
        product *= arr[i];
        i++;
    } while(i < 10);

    printf("\nSum of array is: %d", sum);
    printf("\nProduct of array is: %d\n", product);

    return 0;
}