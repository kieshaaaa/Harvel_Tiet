#include <stdio.h>

int main() {
    float pascals, bar;
    char decision;
    do {
        printf("Enter pressure in Pascals to convert to Bar: ");
        scanf("%f", &pascals);
        bar = pascals / 100000;
        printf("Converted: %f bar\n", bar);
        printf("Do you want to convert another pressure? (y/n): ");
        scanf(" %c", &decision); // Notice the space before %c to consume any leftover newline character
    } while(decision == 'y' || decision == 'Y');
    return 0;
}