#include <stdio.h>

int main() {
    float a, b, c, d, e, sum1, sum2, result;
    
    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);
    
    sum1 = a + b + c;
    sum2 = d + e;
    result = sum1 - sum2;
    
    printf("The result is: %.2f\n", result);

    return 0;
}