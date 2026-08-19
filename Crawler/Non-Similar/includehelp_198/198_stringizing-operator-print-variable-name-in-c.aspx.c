/* Source: https://www.includehelp.com/c-programs/stringizing-operator-print-variable-name-in-c.aspx */
/*
C program to demonstrate example of
Stringizing Operator
*/

#include <stdio.h>

#define getVariableName(x) #x

int main()
{
    int student_age = 21;

    printf("value of %s is = %d\n", getVariableName(student_age), student_age);

    return 0;
}
