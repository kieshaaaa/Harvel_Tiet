#include <stdio.h>

int main() {
    float numbers[5], sum = 0;
    printf("Enter five numbers separated by spaces: ");
    for(int i = 0; i < 5; i++) {
        scanf("%f", &numbers[i]);
        sum += numbers[i];
    }
    printf("The result of adding the numbers is: %.2f\n", sum);
    return 0;
}