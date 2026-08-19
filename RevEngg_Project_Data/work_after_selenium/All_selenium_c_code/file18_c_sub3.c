#include <stdio.h>

int main() {
    int x, y, z, largest;

    printf("Enter three numbers (separated by space): ");
    scanf("%d %d %d", &x, &y, &z);

    largest = (x > y) ? (x > z ? x : z) : (y > z ? y : z);

    printf("Largest number is = %d\n", largest);

    return 0;
}