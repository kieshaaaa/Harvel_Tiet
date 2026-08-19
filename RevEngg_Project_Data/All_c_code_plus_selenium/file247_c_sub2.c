#include <stdio.h>
#include <math.h>

int main() {
    int num1, num2, min, gcd = 1;

    printf("\nEnter Two Numbers: ");
    scanf("%d%d", &num1, &num2);

    num1 = fabs(num1);
    num2 = fabs(num2);

    min = num1 < num2 ? num1 : num2;

    for (int i = 2; i <= min; i++) {
        if (num1 % i == 0 && num2 % i == 0) {
            gcd = i;
            break;
        }
    }

    if (gcd == 1)
        printf("%d and %d Are Co-Prime\n", num1, num2);
    else
        printf("%d and %d Are Not Co-Prime\n", num1, num2);

    return 0;
}