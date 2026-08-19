#include <stdio.h>

int main() {
    char i = 'A';

    printf("Capital (upper) case characters:\n");
    while (i <= 'Z') {
        printf("%c ", i);
        i++;
    }

    printf("\n\nLower case characters:\n");
    i = 'a';
    while (i <= 'z') {
        printf("%c ", i);
        i++;
    }

    return 0;
}