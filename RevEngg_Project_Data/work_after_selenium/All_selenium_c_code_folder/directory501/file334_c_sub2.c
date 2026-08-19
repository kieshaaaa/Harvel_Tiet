#include <stdio.h>

int main() {
    char str[100];
    int i = 0, j = 0;
    char lastChar = '\0';
    
    printf("Enter any string: ");
    scanf("%s", str);

    while (str[i] != '\0') {
        if (str[i] != lastChar) {
            str[j++] = str[i];
            lastChar = str[i];
        }
        i++;
    }
    str[j] = '\0';

    printf("String after removing characters: ");
    printf("%s\n", str);

    return 0;
}