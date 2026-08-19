#include <stdio.h>

int main() {
    int number, index = 0;
    char hex[32];
    char digits[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                     '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    printf("Enter decimal number: ");
    scanf("%d", &number);

    while (number != 0) {
        int rem = number % 16;
        hex[index++] = digits[rem];
        number /= 16;
    }

    printf("Hexadecimal value is: ");
    for (int i = index - 1; i >= 0; --i) {
        printf("%c", hex[i]);
    }

    return 0;
}