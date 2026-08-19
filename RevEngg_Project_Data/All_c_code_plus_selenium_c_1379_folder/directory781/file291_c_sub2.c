#include <stdio.h>
#include <math.h>

int main() {
    int num1, num2, temp1, temp2, remainder;
    printf("\nEnter Two Numbers to Find HCF => ");
    scanf("%d%d", &num1, &num2);

    num1 = fabs(num1);
    num2 = fabs(num2);
    temp1 = num1;
    temp2 = num2;

    while(temp2 != 0) {
        remainder = temp1 % temp2;
        temp1 = temp2;
        temp2 = remainder;
    }

    printf("\nHCF => %d\n", temp1);
    return 0;
}