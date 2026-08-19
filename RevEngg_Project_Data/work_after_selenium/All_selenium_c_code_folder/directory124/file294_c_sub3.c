#include <stdio.h>

int main() {
    float length;
    printf("Input length: ");
    scanf("%f", &length);

    float width;
    printf("Input width: ");
    scanf("%f", &width);

    float area = length * width;

    printf("Rectangle area: ");
    printf("%.2f\n", area);

    return 0;
}