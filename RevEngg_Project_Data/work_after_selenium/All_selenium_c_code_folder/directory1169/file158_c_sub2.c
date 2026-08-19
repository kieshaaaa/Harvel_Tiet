#include <stdio.h>

int main() {
    int count, i;
    float numbers[10], swap;

    printf("\nHow many numbers? ");
    scanf("%d", &count);
    
    printf("\nEnter numbers for sorting: ");
    for (i = 0; i < count; i++) {
        scanf("%f", &numbers[i]);
    }

    i = 0;
    while (i < count) {
        if (i == 0 || numbers[i - 1] <= numbers[i]) {
            i++;
        } else {
            swap = numbers[i];
            numbers[i] = numbers[i - 1];
            numbers[i - 1] = swap;
            i--;
        }
    }

    printf("\nSorted Array: ");
    for (i = 0; i < count; i++) {
        printf("%.2f ", numbers[i]);
    }
    return 0;
}