#include <stdio.h>

int main() {
    int limit, count = 0;
    int cube = 1;
    int i;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    for (i = 1; cube <= limit && cube > 0; i++) {
        cube = i * i * i; // Calculate cube of i
        if (cube <= limit && cube > 0) {
            count = count + 1;
        }
    }

    printf("The number of cube (perfect cube) numbers up to %d is: %d\n", limit, count);
    return 0;
}
