#include <stdio.h>
#include <math.h>

int main() {
    int num1, num2, a, b, temp;

    printf("\nEnter Two Numbers: ");
    scanf("%d%d", &num1, &num2);

    num1 = fabs(num1);
    num2 = fabs(num2);

    a = num1;
    b = num2;

    while (b != 0) {
        temp = b;
        b = a % b;
        a = temp;
    }

    if (a == 1)
        printf("%d and %d Are Co-Prime\n", num1, num2);
    else
        printf("%d and %d Are Not Co-Prime\n", num1, num2);

    return 0;
}