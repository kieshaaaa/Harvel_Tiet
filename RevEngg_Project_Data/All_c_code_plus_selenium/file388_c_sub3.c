#include<stdio.h>

int main() {
    int x, y, z, max, min;

    printf("ENTER FIRST NUMBER A :: ");
    scanf("%d", &x);
    max = min = x; // Initializing both max and min with the first number

    printf("\nENTER SECOND NUMBER B :: ");
    scanf("%d", &y);
    if (y > max) max = y;
    if (y < min) min = y;

    printf("\nENTER THIRD NUMBER C :: ");
    scanf("%d", &z);
    if (z > max) max = z;
    if (z < min) min = z;

    printf("\nTHE BIGGEST NUMBER IS :: %d", max);
    printf("\n\nTHE SMALLEST NUMBER IS :: %d", min);

    return 0;
}