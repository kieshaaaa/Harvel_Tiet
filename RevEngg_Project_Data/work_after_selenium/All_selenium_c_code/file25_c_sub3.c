#include <stdio.h>

int main() {
    int num1, num2;
    float result;
    char ch;
    
    printf("Enter first number: ");
    scanf("%d", &num1);
    printf("Enter second number: ");
    scanf("%d", &num2);
    
    printf("Choose operation to perform (+,-,*,/,%%): ");
    scanf(" %c", &ch);
    
    int isFloat = 0; // Flag to check if result is float
    
    switch(ch) {
        case '+':
            result = num1 + num2;
            break;
        case '-':
            result = num1 - num2;
            break;
        case '*':
            result = num1 * num2;
            break;
        case '/':
            if(num2 != 0) {
                result = (float)num1 / num2;
                isFloat = 1;
            } else {
                printf("Division by zero is not allowed.\n");
                return 0;
            }
            break;
        case '%':
            result = num1 % num2;
            break;
        default:
            printf("Invalid operation.\n");
            return 0;
    }
    
    if(isFloat) {
        printf("Result: %.2f\n", result);
    } else {
        printf("Result: %d\n", (int)result);
    }
    
    return 0;
}