#include <stdio.h>

int main() {
    int limit, count = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    for (int i = 1; ; i++) {
        int cube = i * i * i;
        if (cube > limit) break;
        count++;
    }

    printf("The number of cube (perfect cube) numbers up to ");
    printf("%d", limit);
    printf(" is: ");
    printf("%d\n", count);
    return 0;
}