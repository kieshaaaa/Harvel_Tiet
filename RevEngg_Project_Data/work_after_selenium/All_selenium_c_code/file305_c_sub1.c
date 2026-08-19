#include <stdio.h>
#include <ctype.h>

int main() {
    char ch;
    printf("Enter a character: ");
    scanf("%c", &ch);
    
    ch = tolower(ch); // Convert to lowercase to simplify the switch cases

    if(ch >= 'a' && ch <= 'z') {
        switch(ch) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                printf("%c is a VOWEL.\n", ch);
                break;
            default:
                printf("%c is a CONSONANT.\n", ch);
        }
    } else {
        printf("%c is not an alphabet.\n", ch);
    }
    return 0;
}