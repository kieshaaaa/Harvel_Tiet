#include <stdio.h>

int main() {
    int sides;
    float length;

    printf("Enter the number of sides: ");
    scanf("%d", &sides);

    printf("Enter the length of one side: ");
    scanf("%f", &length);

    printf("Perimeter of the polygon: ");
    printf("%.2f\n", sides * length);

    return 0;
}