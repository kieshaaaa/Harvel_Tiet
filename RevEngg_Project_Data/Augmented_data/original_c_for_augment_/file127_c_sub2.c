#include <stdio.h>

int main() {
    float numbers[4];
    float result = 1.0;
    int i;

    for (i = 0; i < 4; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &numbers[i]);
        result *= numbers[i];
    }

    printf("The result is: %.2f\n", result);

    return 0;
}