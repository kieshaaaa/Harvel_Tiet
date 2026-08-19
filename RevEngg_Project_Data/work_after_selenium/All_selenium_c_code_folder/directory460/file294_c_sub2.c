#include <stdio.h>

int main() {
    float length = 0.0f, width = 0.0f;
    printf("Please input the length: ");
    scanf("%f", &length);

    printf("Please input the width: ");
    scanf("%f", &width);

    float area = length * width;

    printf("The calculated area is: ");
    printf("%.2f\n", area);

    return 0;
}