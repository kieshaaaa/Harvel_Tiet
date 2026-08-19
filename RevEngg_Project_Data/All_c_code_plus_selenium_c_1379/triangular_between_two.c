#include <stdio.h>
#include <math.h>

int main() {
    int lower, upper;
    int n;
    int num;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Triangular numbers between %d and %d are:\n", lower, upper);
    for (num = lower; num <= upper; num++) {
        // Calculate the term number using the inverse of triangular number formula
        n = (-1 + sqrt(1 + 8 * num) / 2;
        
        // Check if n is an integer
        if (n == n) {
            printf("%d\n", num);
        }
    }

    return 0;
}
