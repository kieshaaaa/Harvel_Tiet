#include <stdio.h>
#include <stdlib.h>

int main() {
    int sum = 0, i = 1;
    while (i <= 400) {
        if (i % 8 == 0) {
            sum++;
        }
        i++;
    }
    printf("The sum of the multiples of 8 is ");
    printf("%i\n", sum);
    return 0;
}