/* Source: https://www.includehelp.com/c-programs/convert-a-binary-number-to-gray-code.aspx */
// C program to convert binary number to Gray Code

#include <stdio.h>
#include <math.h>

int main()
{
    unsigned long long int binNum = 0;
    unsigned long long int gray = 0;

    int a = 0;
    int b = 0;
    int i = 0;

    printf("Enter a binary number: ");
    scanf("%llu", &binNum);

    while (binNum != 0) {
        a = binNum % 10;
        binNum = binNum / 10;
        b = binNum % 10;

        if ((a && !b) || (!a && b)) {
            gray = gray + pow(10, i);
        }

        i++;
    }

    printf("The gray code: %llu", gray);
    return 0;
}
