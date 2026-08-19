#include <stdio.h>

int main() {
    char operation;
    float num1, num2, result;
    
    printf("Operation (+, -, *, /): ");
    scanf(" %c", &operation);
    
    printf("First number: ");
    scanf("%f", &num1);
    printf("Second number: ");
    scanf("%f", &num2);
    
    switch (operation) {
        case '+':
            result = num1 + num2;
            printf("Sum: %.2f\n", result);
            break;
        case '-':
            result = num1 - num2;
            printf("Difference: %.2f\n", result);
            break;
        case '*':
            result = num1 * num2;
            printf("Product: %.2f\n", result);
            break;
        case '/':
            if (num2 != 0.0f) {
                result = num1 / num2;
                printf("Quotient: %.2f\n", result);
            } else {
                printf("Error: Cannot divide by zero.\n");
            }
            break;
        default:
            printf("Error: Invalid operation.\n");
    }
    
    return 0;
}