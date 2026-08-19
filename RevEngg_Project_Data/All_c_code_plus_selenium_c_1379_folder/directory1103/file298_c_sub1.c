#include<stdio.h>

int main() {
    char str[20];
    int i = 0, count = 0;
    printf("\nEnter the string: ");
    scanf("%19[^\n]", str); // Safe alternative to gets, limits input size, excludes newline

    while (str[i] != '\0') {
        count++;
        i++;
    }

    printf("\nLength of [ ");
    printf("%s", str);
    printf(" ] is [ ");
    printf("%d", count);
    printf(" ]\n");
    return 0;
}