#include <stdio.h>

int main() {
    int lower, upper, step;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for (int num = lower; num <= upper; num += step) {
        int temp = num, reversed = 0, digit;
        step = 1; // Reset step for each number
        while (temp != 0) {
            digit = temp % 10;
            reversed = reversed * 10 + digit;
            temp /= 10;
        }
        if (num == reversed) {
            printf("%d\n", num);
            step = 2; // Skip the next number, assuming it can't be a palindrome
        }
    }

    return 0;
}