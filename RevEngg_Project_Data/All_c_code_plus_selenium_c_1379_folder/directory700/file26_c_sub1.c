#include <stdio.h>

int main() {
    int limit, count = 0;
    int cube = 0, i = 1;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    while (cube <= limit) {
        cube = i * i * i;
        if (cube <= limit) {
            count++;
        }
        i++;
    }

    printf("The number of cube (perfect cube) numbers up to ");
    printf("%d", limit);
    printf(" is: ");
    printf("%d\n", count);
    return 0;
}