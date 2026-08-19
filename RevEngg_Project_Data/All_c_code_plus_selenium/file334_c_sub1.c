#include <stdio.h>

int main() {
    char str[100];
    int i, k = 0;

    printf("Enter any string: ");
    scanf("%s", str);

    for (i = 1; str[i] != '\0'; i++) {
        if (str[k] != str[i]) {
            k++;
            str[k] = str[i];
        }
    }
    str[k + 1] = '\0';

    printf("String after removing characters: ");
    printf("%s\n", str);

    return 0;
}