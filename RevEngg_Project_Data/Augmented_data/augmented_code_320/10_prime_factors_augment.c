// // Write a function to print all prime factors of a given number. For example, if the number is 36 then your result should be 2, 2, 3, 3. (TSRN)

// // Header Files
#include <stdio.h>


// // Function Declaration (Prototype)
void printPrimeFactors(int);

// // Main Function Start
int main()
{
    int number;
    int j;
    printf("\nEnter A Number to Print All Prime Factors of It => ");
    scanf("%d", &number);

    printf(">>>>>>> Prime Factors of %d  <<<<<<<\n", number);

    j = 2;
    while (j <= number) {
        while (number % j == 0) {
            printf("%d ", j);
            number /= j;
        }
        j++;
    }



    return 0;
}
// // Main Function End

// // Function Definition 👇👇

// // Function to Print First N Odd Natural Number