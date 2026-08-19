#include <stdio.h>
#include <math.h>

int main() {
    int n, num = 1;
    printf("Enter the value of n to find the nth Armstrong number: ");
    scanf("%d", &n);

    for (int count = 0; count < n; num++) {
        int sum = 0, temp = num, digits = 0;
        // Inline digit counting and sum calculation
        for (int t = temp; t; t /= 10, digits++);
        for (int t = temp; t; t /= 10) {
            sum += pow(t % 10, digits);
        }
        // Checking and counting Armstrong number
        if (sum == num) {
            count++;
            if (count == n) {
                printf("The %dth Armstrong number is: %d\n", n, num);
                break;
            }
        }
    }

    return 0;
}