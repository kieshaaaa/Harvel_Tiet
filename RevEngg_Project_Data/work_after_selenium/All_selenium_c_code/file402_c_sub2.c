#include <stdio.h>

int main() {
    int limit;
    int count = 0;
    int i = 1;

    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    while (i*i*i <= limit) {
        count++;
        i++;
    }

    printf("The number of cube (perfect cube) numbers up to ");
    printf("%d is: %d\n", limit, count);
    return 0;
}