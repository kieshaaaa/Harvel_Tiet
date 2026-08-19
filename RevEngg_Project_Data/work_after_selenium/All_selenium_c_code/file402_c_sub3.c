#include <stdio.h>

int main() {
    int limit;
    int count = 0;
    int cube;

    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    for (int i = 1; (cube = i * i * i) <= limit; i++) {
        count = i;
    }

    printf("The number of cube (perfect cube) numbers up to ");
    printf("%d is: %d\n", limit, count);
    return 0;
}