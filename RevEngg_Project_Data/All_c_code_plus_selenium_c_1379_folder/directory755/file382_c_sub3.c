#include <stdio.h>

int main() {
    char str1[100], str2[100];
    int index = 0;

    printf("Enter string 1: ");
    scanf("%99[^\n]s", str1);

    while(str1[index] != '\0') {
        str2[index] = str1[index];
        index++;
    }
    str2[index] = '\0';

    printf("String 1: ");
    printf("%s", str1);
    printf(" \nString 2: ");
    printf("%s", str2);
    printf("\n");

    return 0;
}