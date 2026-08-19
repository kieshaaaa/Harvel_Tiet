#include <stdio.h>
#include <stdlib.h>

int main() {
    int sum = 0;
    for (int i = 8; i <= 400; i += 8) {
        sum++;
    }
    printf("The sum of the multiples of 8 is ");
    printf("%i\n", sum);
    return 0;
}