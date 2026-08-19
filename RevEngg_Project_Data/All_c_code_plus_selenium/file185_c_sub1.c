#include<stdio.h>

int main() {
    int numbers[10];
    int largest = 0; // Assuming all numbers will be positive. For negative numbers, initialize to INT_MIN from limits.h
    int currentNumber;

    printf("\nEnter 10 numbers below :: \n");
    for(int i = 0; i < 10; i++) {
        printf("\nEnter number %d :: ", i+1);
        scanf("%d", &currentNumber);
        if(i == 0 || currentNumber > largest) {
            largest = currentNumber;
        }
    }

    printf("\nThe largest number among 10 Numbers is :: [ %d ]\n", largest);

    return 0;
}