#include <stdio.h>

int main() {
    int num, j;
    int nthCubic = 1; // Start with 1 because multiplying by 0 gives 0
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &num);

    if (num <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    j = 0;
    while (j < 3) {
        nthCubic *= num;
        j++;
    }

    printf("The %dth cubic number is: %d\n", num, nthCubic);
    return 0;
}