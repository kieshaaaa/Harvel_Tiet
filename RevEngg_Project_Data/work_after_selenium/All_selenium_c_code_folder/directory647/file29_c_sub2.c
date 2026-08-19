#include <stdio.h>

int main() {
    float sum = 0;
    float temp;
    printf("Enter five numbers separated by spaces: ");
    for(int i = 0; i < 5; i++) {
        scanf("%f", &temp);
        sum += temp;
    }
    printf("The result of adding the numbers is: %.2f\n", sum);
    return 0;
}