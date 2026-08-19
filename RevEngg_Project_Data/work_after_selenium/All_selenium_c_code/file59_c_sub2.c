#include <stdio.h>

int main() {
    int n, numbers[30], i, j;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Enter the elements:\n");
    for (i = 0; i < n; i++) {
        scanf("%d", &numbers[i]);
    }
    for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (numbers[i] > numbers[j]) {
                numbers[i] = numbers[i] + numbers[j];
                numbers[j] = numbers[i] - numbers[j];
                numbers[i] = numbers[i] - numbers[j];
            }
        }
    }
    printf("Sorted array in ascending order:\n");
    for (i = 0; i < n; i++) {
        printf("%d\n", numbers[i]);
    }
    return 0;
}