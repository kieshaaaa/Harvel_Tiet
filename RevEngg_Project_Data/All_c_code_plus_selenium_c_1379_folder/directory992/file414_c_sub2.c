#include <stdio.h>

int main() {
    int inputNumber;
    int currentDigit;
    int totalSum = 0;
    int totalProduct = 1;
    
    printf("Input an integer: ");
    scanf("%d", &inputNumber);
    
    for (; inputNumber > 0; inputNumber /= 10) {
        currentDigit = inputNumber % 10;
        totalSum += currentDigit;
        totalProduct *= currentDigit;
    }
    
    printf("Sum of digits: %d\n", totalSum);
    printf("Product of digits: %d\n", totalProduct);
    
    return 0;
}