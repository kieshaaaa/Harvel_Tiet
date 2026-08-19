#include <stdio.h>

int main() {
    float b, sh, tsa;
    printf("Input base length: ");
    scanf("%f", &b);
    printf("Input slant height: ");
    scanf("%f", &sh);
    float ba = b * b;
    float la = 2 * b * sh;
    tsa = ba + la;
    printf("Surface Area: %.2f\n", tsa);
    return 0;
}