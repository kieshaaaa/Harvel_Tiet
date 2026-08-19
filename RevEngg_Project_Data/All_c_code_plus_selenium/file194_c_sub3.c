#include<stdio.h>

int main() {
    char line[150], ch;
    int i = 0, j = 0;
    printf("\nEnter a string: ");
    while((ch = getchar()) != '\n' && i < 149) {
        if((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
            line[j++] = ch;
        }
        i++;
    }
    line[j] = '\0';
    printf("\nOutput String :: ");
    printf("%s", line);
    printf("\n");
    return 0;
}