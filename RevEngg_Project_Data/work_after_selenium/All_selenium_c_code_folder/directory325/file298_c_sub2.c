#include<stdio.h>

int main() {
    char str[20];
    int count = 0;
    printf("\nEnter the string: ");
    scanf("%19[^\n]", str); // Using scanf with a limit for input size

    for (int i = 0; str[i] != '\0'; i++) {
        count++;
    }

    printf("\nLength of [ ");
    printf("%s", str);
    printf(" ] is [ ");
    printf("%d", count);
    printf(" ]\n");
    return 0;
}