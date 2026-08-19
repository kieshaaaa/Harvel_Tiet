#include <stdio.h>

int main() {
    int limit, counter = 0;
    int cubed = 1;
    int j;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    j = 1;
    while (cubed <= limit && cubed > 0) {
        cubed = j * j * j; // Calculate cube of j
        if (cubed <= limit && cubed > 0) {
            counter = counter + 1;
        }
        j++;
    }

    printf("The number of cube (perfect cube) numbers up to %d is: %d\n", limit, counter);
    return 0;
}