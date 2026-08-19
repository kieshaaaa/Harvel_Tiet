#include <stdio.h>
#include <math.h>

int main() {
    int start, end;
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    int count = 0;
    for (int num = start; num <= end; num++) {
        int sum = 0, n = num;
        int digits = log10(num) + 1; // Inline calculation of digits using log10

        while (n > 0) {
            int digit = n % 10;
            sum += pow(digit, digits);
            n /= 10;
        }

        if (sum == num) count++;
    }

    printf("Count of Armstrong numbers between is : %d \n", count);
    return 0;
}