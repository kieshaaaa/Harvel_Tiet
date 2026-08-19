#include <stdio.h>
#include <math.h>

int main() {
    double val;
    double e_pos;
    double e_neg;
    double total;
    double diff;
    printf("Enter the value of x: ");
    scanf("%lf", &val); 

    e_pos = exp(val); 
    e_neg = exp(-val); 

    total = e_pos + e_neg; 
    diff = e_pos - e_neg;

    printf("%lf\n", total); 
    printf(" %lf\n",  diff); 

    return 0;
}