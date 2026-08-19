#include <stdio.h>

int main() {
    float in, ft;

    printf("Enter the length in inches: ");
    scanf("%f", &in);

    ft = in / 12.0;

    printf(" inches is equal to %.2f feet.\n", ft);

    return 0;
}