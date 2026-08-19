#include <stdio.h>

int main() {
    int num1, num2;
    float result;
    char ch;
    int validOperation = 0;
    
    printf("Enter first number: ");
    scanf("%d", &num1);
    printf("Enter second number: ");
    scanf("%d", &num2);
    
    while(!validOperation) {
        printf("Choose operation to perform (+,-,*,/,%%): ");
        scanf(" %c", &ch);
        
        switch(ch) {
            case '+':
            case '-':
            case '*':
            case '/':
            case '%':
                validOperation = 1;
                break;
            default:
                printf("Invalid operation. Please try again.\n");
        }
    }
    
    // Perform the calculation after a valid operation is chosen
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
            result = num2 != 0 ? (float)num1 / num2 : 0; // Avoid division by zero
            if(num2 == 0) printf("Division by zero error.\n");
            break;
        case '%':
            result = num2 != 0 ? num1 % num2 : 0; // Avoid division by zero
            if(num2 == 0) printf("Division by zero error.\n");
            break;
    }
    
    if(num2 != 0 || ch != '/' && ch != '%') {
        printf("Result: %f\n", result);
    }
    return 0;
}