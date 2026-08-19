#include <stdio.h>

int main() {
    char operation;
    float num1, num2, result;
    
    printf("Enter operation (+, -, *, /): ");
    scanf(" %c", &operation);
    
    printf("Enter two operands: ");
    scanf("%f %f", &num1, &num2);
    
    switch(operation) {
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
            if(num2 == 0){
                printf("Cannot divide by zero.\n");
                return 0;
            } else {
                result = num1 / num2;
            }
            break;
        default:
            printf("Invalid operator.\n");
            return 0;
    }
    
    printf("Result: %.2f\n", result);
    return 0;
}