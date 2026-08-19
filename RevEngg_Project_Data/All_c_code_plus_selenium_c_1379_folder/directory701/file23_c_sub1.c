#include <stdio.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    int i = 1, triangularNumber = 1;

    while (triangularNumber < lower) {
        i++;
        triangularNumber += i;
    }

    printf("Triangular numbers between %d and %d are:\n", lower, upper);

    while (triangularNumber <= upper) {
        printf("%d\n", triangularNumber);
        i++;
        triangularNumber += i;
    }

    return 0;
}