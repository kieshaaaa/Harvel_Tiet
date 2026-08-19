#include <stdio.h>

int main() {
    int decimal, temp, index = 0;
    int octal[30]; // Assuming the octal number won't exceed 30 digits

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);

    while (decimal > 0) {
        temp = decimal % 8;
        octal[index++] = temp;
        decimal /= 8;
    }

    printf("Octal value is: ");
    for (int i = index - 1; i >= 0; i--) {
        printf("%d", octal[i]);
    }

    return 0;
}