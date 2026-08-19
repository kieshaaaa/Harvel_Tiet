#include <stdio.h>

int main() {
    int numbers[30], n, i, j, temp;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Enter the elements:\n");
    for (i = 0; i < n; i++) {
        scanf("%d", &numbers[i]);
    }
    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (numbers[j] > numbers[j + 1]) {
                temp = numbers[j];
                numbers[j] = numbers[j + 1];
                numbers[j + 1] = temp;
            }
        }
    }
    printf("Sorted array in ascending order:\n");
    for (i = 0; i < n; i++) {
        printf("%d\n", numbers[i]);
    }
    return 0;
}