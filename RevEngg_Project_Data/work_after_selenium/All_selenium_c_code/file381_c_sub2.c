#include <stdio.h>

int main() {
    int number, index = 0;
    char hex[32];

    printf("Enter decimal number: ");
    scanf("%d", &number);

    while (number != 0) {
        int temp = 0;
        temp = number % 16;

        if(temp < 10) {
            hex[index] = temp + 48;
        } else {
            hex[index] = temp + 55;
        }

        number = number / 16;
        index++;
    }

    printf("Hexadecimal value is: ");
    for(int i = index - 1; i >= 0; i--) {
        printf("%c", hex[i]);
    }

    return 0;
}