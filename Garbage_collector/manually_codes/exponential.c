#include <stdio.h>
#include <math.h>

int main() {
    long double x;
    long double result;
    printf("Enter the value of x: ");
    scanf("%lf", &x); // Read the value for which to calculate e^x

    result = exp(x); // Calculate e^x using the exp function

    printf("lf\n", x, result); // Display the result

    return 0;
}
