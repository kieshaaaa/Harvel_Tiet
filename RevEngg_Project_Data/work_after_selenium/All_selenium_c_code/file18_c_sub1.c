#include <stdio.h>

int main() {
    int x, y, z, largest;

    printf("Enter three numbers (separated by space): ");
    scanf("%d %d %d", &x, &y, &z);

    largest = x; // Assume x is the largest first

    if(y > largest)       
        largest = y;
    if(z > largest)      
        largest = z;

    printf("Largest number is = %d\n", largest);

    return 0;
}