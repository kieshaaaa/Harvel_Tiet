#include <stdio.h>

int main() {
    float number, product = 1.0;
    int counter;

    counter = 1;
    while (counter <= 4) {
        printf("Enter number %d: ", counter);
        scanf("%f", &number);
        product *= number;
        printf("Subtotal after multiplying %d number(s): %.2f\n", counter, product);
        counter++;
    }

    printf("Final result: %.2f\n", product);

    return 0;
}