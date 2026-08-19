// // Write a function to print all prime factors of a given number. For example, if the number is 36 then your result should be 2, 2, 3, 3. (TSRN)

// // Header Files
#include <stdio.h>


// // Function Declaration (Prototype)
void primeFactors(int);

// // Main Function Start
int main()
{
    int num;
    int i;
    printf("\nEnter A Number to Print All Prime Factors of It => ");
    scanf("%d", &num);

    printf(">>>>>>> Prime Factors of %d  <<<<<<<\n", num);

    for (i = 2; i <= num; i++)
    {
        while (num % i == 0)
        {
            printf("%d ", i);
            num /= i;
        }
    }



    return 0;
}
// // Main Function End

// // Function Definition 👇👇

// // Function to Print First N Odd Natural Number
