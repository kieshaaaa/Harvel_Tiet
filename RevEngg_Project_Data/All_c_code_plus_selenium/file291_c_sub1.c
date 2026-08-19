#include <stdio.h>
#include <math.h>

int main() {
    int num1, num2;
    printf("\nEnter Two Numbers to Find HCF => ");
    scanf("%d%d", &num1, &num2);

    num1 = fabs(num1);
    num2 = fabs(num2);

    while(num1 != num2) {
        if(num1 > num2)
            num1 -= num2;
        else
            num2 -= num1;
    }

    printf("\nHCF => %d\n", num1);
    return 0;
}