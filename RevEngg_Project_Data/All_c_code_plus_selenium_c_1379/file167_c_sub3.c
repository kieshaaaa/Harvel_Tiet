#include <stdio.h>

int main() {
    float a, b, c, d, e, result;
    
    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);
    
    result = a;
    result += b;
    result += c;
    result -= d;
    result -= e;
    
    printf("The result is: %.2f\n", result);

    return 0;
}