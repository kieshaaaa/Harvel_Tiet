#include <stdio.h>
#include <math.h>

int main() {
    double x;
    double exp_pos;
    double exp_neg;
    double  sum;
    double difference;
    printf("Enter the value of x: ");
    scanf("%lf", &x); // Read the value for which to calculate the expressions

    exp_pos = exp(x); // Calculate e^x
    exp_neg = exp(-x); // Calculate e^(-x)

    sum = exp_pos + exp_neg; 
    difference = exp_pos - exp_neg;

    printf("%lf\n", sum); 
    printf(" %lf\n",  difference); 

    return 0;
}
