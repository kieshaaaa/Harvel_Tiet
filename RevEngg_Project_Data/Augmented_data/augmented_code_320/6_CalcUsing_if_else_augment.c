//Write a C program to create a basic arithmetic calculator using switch statement. 

#include<stdio.h>
int main()
{

    char operation;
    int operand1, operand2, output = 0;

    printf("\nEnter your operation'+' '-' '*' '/' \n");
    scanf("%c",&operation);
    printf("\nEnter operand1 and operand2\n");
    scanf("%d %d",&operand1,&operand2);
    
    switch (operation)
    {
        case '+':
            output = operand1 + operand2;
            printf("\nThe sum is::%d\n", output);
            break;

        case '-':
            output = operand1 - operand2;
            printf("\nThe difference is::%d\n", output);
            break;

        case '*':
            output = operand1 * operand2;
            printf("\nThe product is::%d\n", output);
            break;

        case '/':
            if (operand2 == 0) {
                printf("\nDivision by zero is not allowed.\n");
                return 1; // Indicate an error
            }
            output = operand1 / operand2;
            printf("\nThe quotient is::%d\n", output);
            break;

        default:
            printf("\nThe entered operation is invalid\n");
    }
}