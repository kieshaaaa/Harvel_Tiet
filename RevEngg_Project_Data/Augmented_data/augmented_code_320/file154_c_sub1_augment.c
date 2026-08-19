#include <stdio.h>

int main() {
    char op;
    int a, b, outcome;
    printf("Choose operation (+, -, *, /): ");
    scanf(" %c", &op); 

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);
    
    switch(op) {
        case '+':
            outcome = a + b;
            printf("Result: %d\n", outcome);
            break;
        case '-':
            outcome = a - b;
            printf("Result: %d\n", outcome);
            break;
        case '*':
            outcome = a * b;
            printf("Result: %d\n", outcome);
            break;
        case '/':
            if (b != 0) {
                outcome = a / b;
                printf("Result: %d\n", outcome);
            } else {
                printf("Error: Division by zero!\n");
            }
            break;
        default:
            printf("Invalid operation!\n");
    }
    return 0;
}