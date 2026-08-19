#include<stdio.h>

int main() {
    char line[150];
    int i, j, len = 0;
    printf("\nEnter a string: ");
    scanf("%[^\n]%*c", line);

    for(i = 0; line[i] != '\0'; i++) {
        if((line[i] >= 'a' && line[i] <= 'z') || (line[i] >= 'A' && line[i] <= 'Z')) {
            line[len++] = line[i];
        }
    }
    line[len] = '\0';
    printf("\nOutput String :: ");
    printf("%s", line);
    printf("\n");
    return 0;
}