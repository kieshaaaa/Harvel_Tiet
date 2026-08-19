#include <stdio.h>
#include <math.h>

int main() {
    int num1, num2, hcf = 1;
    printf("\nEnter Two Numbers to Find HCF => ");
    scanf("%d%d", &num1, &num2);

    num1 = fabs(num1);
    num2 = fabs(num2);
    int min = num1 < num2 ? num1 : num2;

    for(int i = 1; i <= min; i++) {
        if(num1 % i == 0 && num2 % i == 0) {
            hcf = i;
        }
    }

    printf("\nHCF => %d\n", hcf);
    return 0;
}