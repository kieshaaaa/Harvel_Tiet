#include <stdio.h>
#include <math.h>

int main() {
    int n;
    float l, a;

    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &l);

    a = (n * l * l) / (4.0 * tan(M_PI / n));

    printf("Area of the polygon: ");
    printf("%.2f\n", a);

    return 0;
}