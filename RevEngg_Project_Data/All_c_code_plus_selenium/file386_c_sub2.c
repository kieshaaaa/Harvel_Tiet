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
        int n = num, digits = 0, sum = 0;

        // Determine the number of digits
        for (n = num; n != 0; n /= 10, digits++);

        // Calculate the sum of the nth powers of its digits
        for (n = num; n != 0; n /= 10) {
            int digit = n % 10;
            sum += pow(digit, digits);
        }

        if (sum == num) count++;
    }

    printf("Count of Armstrong numbers between is : %d \n", count);
    return 0;
}