#include <stdio.h>

int main() {
    int n;
    float fact = 1;
    printf("\nEnter A Number to Find Factorial => ");
    scanf("%d", &n);

    int i = 1;
    do {
        fact *= i;
        i++;
    } while (i <= n);

    float factGeneral = fact;
    float factScientific = fact;
    printf("\nFactorial of %d (General Form ) => %f\n", n, factGeneral);
    printf("\nFactorial of %d (Scientific Form )=> %e", n, factScientific);

    return 0;
}