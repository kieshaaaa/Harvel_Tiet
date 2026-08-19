#include <stdio.h>
#include <math.h>

// Function to calculate the number of digits in a number
int countDigits(int n) {
    int count = 0;
    while(n != 0) {
        n /= 10;
        count++;
    }
    return count;
}

// Function to check if a number is an Armstrong number
int isArmstrong(int num) {
    int n = countDigits(num);
    int temp = num, sum = 0;
    while (temp != 0) {
        int remainder = temp % 10;
        sum += pow(remainder, n);
        temp /= 10;
    }
    return num == sum;
}

int main() {
    int n, count = 0, num = 1;
    printf("Enter the value of n to find the nth Armstrong number: ");
    scanf("%d", &n);

    while(1) {
        if(isArmstrong(num)) {
            count++;
            if(count == n) {
                printf("The %dth Armstrong number is: %d\n", n, num);
                break;
            }
        }
        num++;
    }

    return 0;
}
