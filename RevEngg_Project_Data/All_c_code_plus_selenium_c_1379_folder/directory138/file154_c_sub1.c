#include <stdio.h>

int main() {
    char operation;
    int num1, num2, result;
    printf("Choose operation (+, -, *, /): ");
    scanf(" %c", &operation); // Added a space before %c to catch any newline or space before the character.
    
    printf("Enter first number: ");
    scanf("%d", &num1);
    printf("Enter second number: ");
    scanf("%d", &num2);
    
    switch(operation) {
        case '+':
            result = num1 + num2;
            printf("Result: %d\n", result);
            break;
        case '-':
            result = num1 - num2;
            printf("Result: %d\n", result);
            break;
        case '*':
            result = num1 * num2;
            printf("Result: %d\n", result);
            break;
        case '/':
            if (num2 != 0) {
                result = num1 / num2;
                printf("Result: %d\n", result);
            } else {
                printf("Error: Division by zero!\n");
            }
            break;
        default:
            printf("Invalid operation!\n");
    }
    return 0;
}