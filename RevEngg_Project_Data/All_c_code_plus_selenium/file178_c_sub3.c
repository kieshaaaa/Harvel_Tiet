#include <stdio.h>

int main() {
    char str[100];
    int length = 0;
    while(scanf("%c", &str[length]) && str[length] != '\n') {
        length++;
    }
    str[length] = '\0'; // Null-terminate the string
    length = 0; // Reset length for reuse
    while(str[length] != '\0') {
        length++;
    }
    printf("The length of the string is: ");
    printf("%d\n", length);
    return 0;
}