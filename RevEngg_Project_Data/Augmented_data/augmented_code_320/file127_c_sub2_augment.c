#include <stdio.h>

int main() {
    float nums[4];
    float product = 1.0;
    int i = 0;

    while (i < 4) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &nums[i]);
        product *= nums[i];
        i++;
    }

    printf("The result is: %.2f\n", product);

    return 0;
}