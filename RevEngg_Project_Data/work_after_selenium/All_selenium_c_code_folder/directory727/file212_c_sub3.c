#include <stdio.h>
#include <math.h>

int main() {
    int a, b, c;
    float discriminant, root1, root2;
    printf("Enter values of a, b, c: ");
    scanf("%d %d %d", &a, &b, &c);

    discriminant = b*b - 4*a*c;

    if (discriminant >= 0) {
        root1 = (-b + sqrt(discriminant)) / (2*a);
        root2 = (-b - sqrt(discriminant)) / (2*a);
        if (discriminant > 0) {
            printf("Two distinct real roots: %.2f and %.2f\n", root1, root2);
        } else {
            printf("Two equal and real roots: %.2f\n", root1);
        }
    } else {
        printf("No real roots, roots are imaginary.\n");
    }

    return 0;
}