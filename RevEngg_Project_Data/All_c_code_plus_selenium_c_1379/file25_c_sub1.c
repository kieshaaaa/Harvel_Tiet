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
    
    switch(ch) {
        case '+':
            result = num1 + num2;
            printf("Result: %d\n", (int)result);
            break;
        case '-':
            result = num1 - num2;
            printf("Result: %d\n", (int)result);
            break;
        case '*':
            result = num1 * num2;
            printf("Result: %d\n", (int)result);
            break;
        case '/':
            if(num2 != 0) {
                result = (float)num1 / (float)num2;
                printf("Result: %.2f\n", result);
            } else {
                printf("Division by zero is not allowed.\n");
            }
            break;
        case '%':
            if(num2 != 0) {
                result = num1 % num2;
                printf("Result: %d\n", (int)result);
            } else {
                printf("Division by zero is not allowed.\n");
            }
            break;
        default:
            printf("Invalid operation.\n");
    }
    return 0;
}