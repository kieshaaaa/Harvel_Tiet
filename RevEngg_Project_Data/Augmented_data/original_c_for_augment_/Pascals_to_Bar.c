#include <stdio.h>

int main() {
    float pascals, bar;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pascals);
    bar = pascals / 100000;
    printf("Pa is %f bar.\n", bar);
    return 0;
}
