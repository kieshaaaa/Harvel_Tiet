/* Source: https://www.includehelp.com/c-programs/calculator-using-switch.aspx */
/*C program to design calculator with basic operations using switch.*/
 
#include <stdio.h>
 
int main()
{
    int a, b;
    float outcome;
    char operation;    //to store operator choice
     
    printf("Enter first number: ");
    scanf("%d",&a);
    printf("Enter second number: ");
    scanf("%d",&b);
     
    printf("Choose operation to perform (+,-,*,/,%): ");
    scanf(" %c",&operation);
     
    outcome = 0;
    switch(operation)    
    {
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
            outcome = (float)a / (float)b;
            break;
             
        case '%':
            outcome = a % b;
            break;
        default:
            printf("Invalid operation.\n");
    }
 
    printf("Result: %d %c %d = %f\n",a,operation,b,outcome);
    return 0;
}