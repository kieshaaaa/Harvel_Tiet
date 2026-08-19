#include <stdio.h>

int main() {
    int lower, upper;
    int digit;
    int reversed;
    int temp, num;
    int originalNum;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for (num = lower; num <= upper; num++) {
        reversed = 0;
        originalNum = num;
        temp = num;

        // Reverse the current number
        while (temp != 0) {
            digit = temp % 10;
            reversed = reversed * 10 + digit;
            temp /= 10;
        }

        // Check if the number is palindromic
        if (originalNum == reversed) {
            printf("%d\n", originalNum);
        }
    }

    return 0;
}
