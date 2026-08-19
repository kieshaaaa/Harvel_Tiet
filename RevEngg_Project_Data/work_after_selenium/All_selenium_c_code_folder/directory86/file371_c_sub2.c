#include <stdio.h>

void printUpperCase() {
    char ch = 'A';
    printf("Capital (upper) case characters:\n");
    while (ch <= 'Z') {
        printf("%c ", ch);
        ch++;
    }
    printf("\n");
}

void printLowerCase() {
    char ch = 'a';
    printf("Lower case characters:\n");
    while (ch <= 'z') {
        printf("%c ", ch);
        ch++;
    }
    printf("\n");
}

int main() {
    printUpperCase();
    printf("\n");
    printLowerCase();
    return 0;
}