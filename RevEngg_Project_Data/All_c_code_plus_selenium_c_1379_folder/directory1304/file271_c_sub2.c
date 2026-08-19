#include <stdio.h>

int main() {
    float a, b, c, d, sum_cd, mult_ab, result;
    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    sum_cd = c + d;
    if(sum_cd != 0) {
        mult_ab = a * b;
        result = mult_ab / sum_cd;
        printf("The result of the operation (a * b) / (c + d) is: ");
        printf("%.2f\n", result);
    } else {
        printf("Error: Division by zero due to c + d being zero.\n");
    }

    return 0;
}