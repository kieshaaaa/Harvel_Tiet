#include <stdio.h>

int main() {
    int givenNumber;
    int extractedDigit;
    int digitsSum = 0;
    int digitsProduct = 1;
    
    printf("Enter number: ");
    scanf("%d", &givenNumber);
    
    for (; givenNumber != 0; givenNumber = givenNumber / 10) {
        extractedDigit = givenNumber % 10;
        digitsSum = digitsSum + extractedDigit;
        digitsProduct = digitsProduct * extractedDigit;
    }
    
    printf("Sum of the digits: %d\n", digitsSum);
    printf("Product of the digits: %d\n", digitsProduct);
    
    return 0;
}