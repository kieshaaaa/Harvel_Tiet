#include <stdio.h>

void toLowercase(char s[]);
void toUppercase(char s[]);

int main() {
    char str[100];

    printf("Enter any string : ");
    scanf("%[^\n]s", str);

    toLowercase(str);
    printf("Lowercase string : %s\n", str);

    toUppercase(str);
    printf("Uppercase string : %s\n", str);

    return 0;
}

void toLowercase(char s[]) {
    int i = 0;
    while (s[i]) {
        s[i] = (s[i] >= 'A' && s[i] <= 'Z') ? (s[i] + 32) : s[i];
        i++;
    }
}

void toUppercase(char s[]) {
    int i = 0;
    while (s[i]) {
        s[i] = (s[i] >= 'a' && s[i] <= 'z') ? (s[i] - 32) : s[i];
        i++;
    }
}