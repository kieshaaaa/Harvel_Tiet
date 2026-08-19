#include <stdio.h>

int main() {
    float num, result = 1.0;
    int i;

    for (i = 1; i <= 4; i++) {
        printf("Enter number %d: ", i);
        scanf("%f", &num);
        result *= num;
        printf("Subtotal after multiplying %d number(s): %.2f\n", i, result);
    }

    printf("Final result: %.2f\n", result);

    return 0;
}