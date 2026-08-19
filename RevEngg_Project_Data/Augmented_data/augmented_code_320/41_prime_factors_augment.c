// // C program to find all Prime Factors of a given Number

// // Header Files
#include <stdio.h>
#include <stdlib.h>

// // Main Function Start
int main()
{

    int n;
    printf("\nEnter A Number to Find Its Prime Factors => ");
    scanf("%d", &n);

    // // Handling Invalid Input
    if (n <= 0)
    {
        printf("!!! Invalid Input...Please Enter Positive Number");
        exit(0);
    }
    else if (n == 1)
    {
        printf("\nThere is No Prime Factors of 1...\n1 is Neither Prime Nor Composite..");
        exit(0);
    }

    printf("\n>>>>>>>> Prime Factors of %d <<<<<<<<\n", n);

    int i = 2;
    while (i <= n) {
        while (n % i == 0) {
            printf("%d ", i);
            n /= i;
        }
        i++;
    }

    printf("\n");

    return 0;
}
// // Main Function End