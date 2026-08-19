#include <stdio.h>

int main() {
    int num;
    int digit;
    int sum = 0;
    int product = 1;
    
    printf("Enter an integer number: ");
    scanf("%d", &num);
    
    while (num > 0) {
        digit = num % 10;
        sum = sum + digit;
        product = product * digit;
        num = num / 10;
    }
    
    printf("SUM of all digits is: %d\n", sum);
    printf("PRODUCT of all digits: %d\n", product);
    
    return 0;
}