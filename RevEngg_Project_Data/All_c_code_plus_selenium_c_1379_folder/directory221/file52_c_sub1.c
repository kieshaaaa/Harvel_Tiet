#include <stdio.h>

void convertToLowercase(char s[]);
void convertToUppercase(char s[]);

int main() {
    char str[100];

    printf("Enter any string : ");
    scanf("%[^\n]s", str);

    convertToLowercase(str);
    printf("String in lowercase : %s\n", str);

    convertToUppercase(str);
    printf("String in uppercase : %s\n", str);

    return 0;
}

void convertToLowercase(char s[]) {
    for(int i = 0; s[i] != '\0'; i++) {
        if(s[i] >= 'A' && s[i] <= 'Z') {
            s[i] += 'a' - 'A';
        }
    }
}

void convertToUppercase(char s[]) {
    for(int i = 0; s[i] != '\0'; i++) {
        if(s[i] >= 'a' && s[i] <= 'z') {
            s[i] -= 'a' - 'A';
        }
    }
}