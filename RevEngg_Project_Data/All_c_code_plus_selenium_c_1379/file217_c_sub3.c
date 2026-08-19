#include<stdio.h>

int main() {
    int base, multiplier, result;

    for (base = 1; base <= 10; base++) {
        for (multiplier = 1; multiplier <= base; multiplier++) {
            result = base * multiplier;
            printf("%d  ", result);
        }
        printf("\n");
    }
    return 0;
}