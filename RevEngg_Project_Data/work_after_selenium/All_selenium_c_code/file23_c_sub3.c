#include <stdio.h>

int main() {
    int lower, upper, triangularNumber = 0, i = 1;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Triangular numbers between %d and %d are:\n", lower, upper);

    while (triangularNumber <= upper) {
        triangularNumber = i * (i + 1) / 2;
        if (triangularNumber >= lower && triangularNumber <= upper) {
            printf("%d\n", triangularNumber);
        }
        i++;
    }

    return 0;
}