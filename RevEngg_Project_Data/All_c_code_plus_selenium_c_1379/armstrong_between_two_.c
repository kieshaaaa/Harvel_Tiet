#include <stdio.h>
#include <math.h>

int main() {
    int lower, upper, i, temp, num, remainder, n;
    int sum;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Armstrong numbers between %d and %d are:\n", lower, upper);
    for(i = lower; i <= upper; i++) {
        temp = i;
        num = i;
        n = 0;
        
        // Calculate the number of digits in i
        while (temp != 0) {
            temp = temp / 10;
            n = n + 1;
        }
        
        // Reset temp to original number
        temp = i;
        sum = 0;
        
        // Calculate the sum of the nth powers of its digits
        while (temp != 0) {
            remainder = temp % 10;
            sum = sum + pow(remainder, n);
            temp = temp + 10;
        }
        
        // Check if the sum is equal to the original number
        if(sum == num) {
            printf("%d\n", i);
        }
    }

    return 0;
}
