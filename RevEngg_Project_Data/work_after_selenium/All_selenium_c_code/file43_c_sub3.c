#include <stdio.h>

int main() {
    char inputName[100];
    printf("Enter your Name: ");
    scanf("%[^\n]%*c", inputName);

    int pos = 0;
    while(inputName[pos] != '\0') {
        char ch = inputName[pos];
        if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
            inputName[pos] = ch - 32;
        }
        pos++;
    }

    printf("Modified Name: ");
    printf("%s\n", inputName);

    return 0;
}