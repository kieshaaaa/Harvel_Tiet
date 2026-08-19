#include <stdio.h>
#include <math.h>

int main() {
    int n;
    float s;

    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &s);

    float area = (n * s * s) / (4 * tan(M_PI / n)); // Area calculation with M_PI and reduced scope for `area`

    printf("Area of the polygon: %.2f\n", area);

    return 0;
}