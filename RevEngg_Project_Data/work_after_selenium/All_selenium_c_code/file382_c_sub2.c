#include <stdio.h>

int main() {
    char str1[100], str2[100];
    int count = 0;

    printf("Enter string 1: ");
    scanf("%99[^\n]s", str1);

    for(count = 0; str1[count] != '\0'; count++) {
        str2[count] = str1[count];
    }
    str2[count] = '\0';

    printf("String 1: ");
    printf("%s", str1);
    printf(" \nString 2: ");
    printf("%s", str2);
    printf("\n");

    return 0;
}