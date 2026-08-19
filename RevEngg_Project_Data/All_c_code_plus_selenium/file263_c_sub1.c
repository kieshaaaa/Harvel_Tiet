#include <stdio.h>
#define MAX_SIZE 100

int main() {
    int arr[MAX_SIZE];
    int n, sum = 0;

    printf("Enter size of the array: ");
    scanf("%d", &n);

    for(int i = 0; i < n; ++i) {
        printf("Element %d: ", i+1);
        scanf("%d", arr+i); // Direct access to the array element
    }

    for(int i = 0; i < n; ++i) {
        sum += arr[i];
    }

    printf("Sum of all elements: %d\n", sum);

    return 0;
}