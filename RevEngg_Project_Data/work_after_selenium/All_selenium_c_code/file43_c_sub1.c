#include <stdio.h>

int main() {
    char name[100];
    printf("Enter your Name: ");
    scanf("%[^\n]%*c", name);

    for(int i = 0; name[i] != '\0'; i++) {
        switch(name[i]) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                name[i] -= 32;
                break;
            case 'A':
            case 'E':
            case 'I':
            case 'O':
            case 'U':
                break;
            default:
                break;
        }
    }

    printf("Name with vowels in uppercase: ");
    printf("%s\n", name);

    return 0;
}