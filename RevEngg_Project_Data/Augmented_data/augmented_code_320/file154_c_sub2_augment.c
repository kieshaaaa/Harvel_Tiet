#include <stdio.h>

int main() {
    char op;
    float a, b, outcome;
    
    printf("Enter operation (+, -, *, /): ");
    scanf(" %c", &op);
    
    printf("Enter two operands: ");
    scanf("%f %f", &a, &b);
    
    switch(op) {
        case '+':
            outcome = a + b;
            break;
        case '-':
            outcome = a - b;
            break;
        case '*':
            outcome = a * b;
            break;
        case '/':
            if(b == 0){
                printf("Cannot divide by zero.\n");
                return 0;
            } else {
                outcome = a / b;
            }
            break;
        default:
            printf("Invalid operator.\n");
            return 0;
    }
    
    printf("Result: %.2f\n", outcome);
    return 0;
}