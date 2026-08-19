#include<stdio.h>

int main() {
    char str[20];
    int i = 0;
    printf("\nEnter the string: ");
    fgets(str, sizeof(str), stdin); // Safe way to read strings

    // Remove newline character if present
    while(str[i] != '\0') {
        if (str[i] == '\n') {
            str[i] = '\0';
            break;
        }
        i++;
    }

    // Reset i for count calculation
    i = 0;
    int count = 0;
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