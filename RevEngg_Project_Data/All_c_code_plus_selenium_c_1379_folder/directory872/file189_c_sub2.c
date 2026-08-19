#include <stdio.h>

int main() {
    float diag1, diag2, product, area;

    printf("Please enter the first diagonal length: ");
    scanf("%f", &diag1);
    printf("Please enter the second diagonal length: ");
    scanf("%f", &diag2);

    product = diag1 * diag2;
    area = product / 2;

    printf("Kite area: ");
    printf("%.2f\n", area);

    return 0;
}