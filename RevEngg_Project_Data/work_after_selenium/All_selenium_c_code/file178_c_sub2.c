#include <stdio.h>

int main() {
    char str[100];
    char ch;
    int length = 0;
    int i = 0;
    while((ch = getchar()) != '\n' && ch != EOF) {
        str[i++] = ch;
    }
    str[i] = '\0'; // Ensure the string is properly terminated
    while(str[length] != '\0') {
        length++;
    }
    printf("The length of the string is: ");
    printf("%d\n", length);
    return 0;
}