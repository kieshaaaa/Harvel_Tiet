#include <stdio.h>
#define MAX_SIZE 100

int main() {
    int arr[MAX_SIZE];
    int n, sum = 0, i = 0;

    printf("Enter size of the array: ");
    scanf("%d", &n);

    while (i < n) {
        printf("Element %d: ", i+1);
        scanf("%d", &arr[i]);
        i++;
    }

    i = 0; // Resetting i for use in sum calculation
    while (i < n) {
        sum += arr[i];
        i++;
    }

    printf("Sum of all elements: %d\n", sum);

    return 0;
}