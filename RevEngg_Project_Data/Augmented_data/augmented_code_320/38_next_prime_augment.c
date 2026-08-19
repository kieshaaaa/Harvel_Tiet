// // C program to find next Prime number of a given number

// // Header Files
#include <stdio.h>

#include <math.h>
#include <stdlib.h>

// // Main Function Start
int main()
{

    int n;
    printf("\nEnter A Number to Find Next Prime Number => ");
    scanf("%d", &n);

    int number = n + 1, j, flag;

    while (1)
    {
        if (number < 2)
        {
            number++;
            continue;
        }

        flag = 1;
        j = 2;
        while (j <= sqrt(number))
        {
            if (number % j == 0)
            {
                flag = 0;
                break;
            }
            j++;
        }

        if (flag)
        {
            printf("\nNext Prime Number => %d", number);
            break;
        }

        number++;
    }

    printf("\n");

    return 0;
}
// // Main Function End