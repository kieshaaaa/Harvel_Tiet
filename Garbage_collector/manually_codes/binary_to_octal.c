#include <stdio.h>
#include <string.h>

int main() {
    char binary[1000];
    int octal ;
    int temp = 0, power = 1, length, i;

    printf("Enter a binary number: ");
    scanf("%s", binary);

    length = strlen(binary) - 1;

    for (i = length; i >= 0; i--) {
        temp += (binary[i] - '0') * power;
        power *= 2;

        if (power == 8 || i == 0) {
            octal = octal * 10 + temp;
            temp = 0;
            power = 1;
        }
    }

    printf("Octal number: %d\n", octal);
    return 0;
}
