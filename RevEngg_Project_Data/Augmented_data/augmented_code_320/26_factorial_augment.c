// // C program to calculate factorial of a number

// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{

    int num;
    double factorial = 1;
    printf("\nEnter A Number to Find Factorial => ");
    scanf("%d", &num);

    // // 1st Approach (using while loop)
    int i = num;
    while (i > 1)
    {
       factorial *= i;
       i--;
    }
    // // 2nd Approach (using do-while loop)
    // // int i = 2;
    // // do
    // // {
    // //    fact *= i++;
    // // } while (i <= n);

    // // 3rd Approach (using for loop)
    // // for (int i = n; i > 1; i--)
    // // {
    // //    fact *= i;
    // // }

    printf("\nFactorial of %d (General Form ) => %lf\n", num, factorial);
    printf("\nFactorial of %d (Scientific Form )=> %e", num, factorial);


    return 0;
}
// // Main Function End