/* Source: https://www.includehelp.com/c-programs/find-the-sum-of-all-digits-in-the-alphanumeric-string.aspx */
// C program to find the sum of all digits
// in alphanumeric string

#include <stdio.h>

int main()
{
    char str[64];
    int i = 0;
    int sum = 0;

    printf("Enter alphanumeric string: ");
    scanf("%[^\n]s", str);

    while (str[i] != 0) {
        if ((str[i] >= '0') && (str[i] <= '9'))
            sum += (str[i] - 0x30);
        i++;
    }
    printf("Sum of all digits is: %d\n", sum);

    return 0;
}
