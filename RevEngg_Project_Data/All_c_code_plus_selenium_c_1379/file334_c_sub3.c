#include <stdio.h>

int main() {
    char str[100];
    int i, j;

    printf("Enter any string: ");
    scanf("%s", str);

    for (i = 0, j = 1; str[j] != '\0'; j++) {
        if (str[j] != str[i]) {
            i++;
            str[i] = str[j];
        }
    }
    str[i + 1] = '\0';

    printf("String after removing characters: ");
    printf("%s\n", str);

    return 0;
}