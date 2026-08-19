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
        int temp = num, sum = 0, digits = 0;
        
        // Calculate the number of digits
        while (temp > 0) {
            digits++;
            temp /= 10;
        }

        temp = num;
        // Calculate the sum of the powers of its digits
        while (temp > 0) {
            int digit = temp % 10;
            sum += pow(digit, digits);
            temp /= 10;
        }

        if (sum == num) count++;
    }

    printf("Count of Armstrong numbers between is : %d \n", count);
    return 0;
}