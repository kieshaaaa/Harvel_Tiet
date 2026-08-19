#include <stdio.h>

void makeLowercase(char s[]);
void makeUppercase(char s[]);

int main() {
    char str[100];

    printf("Enter any string : ");
    scanf("%[^\n]s", str);

    makeLowercase(str);
    printf("String in lowercase : %s\n", str);

    makeUppercase(str);
    printf("String in uppercase : %s\n", str);

    return 0;
}

void makeLowercase(char s[]) {
    for (int i = 0; s[i]; i++) {
        s[i] += (s[i] >= 'A' && s[i] <= 'Z') ? 32 : 0;
    }
}

void makeUppercase(char s[]) {
    for (int i = 0; s[i]; i++) {
        s[i] -= (s[i] >= 'a' && s[i] <= 'z') ? 32 : 0;
    }
}