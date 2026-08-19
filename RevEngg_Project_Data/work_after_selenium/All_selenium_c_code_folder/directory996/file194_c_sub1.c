#include<stdio.h>

int main() {
    char line[150];
    int i, j;
    printf("\nEnter a string: ");
    scanf("%[^\n]%*c", line);

    for(i = 0, j = 0; line[i] != '\0'; i++) {
        if((line[i] >= 'a' && line[i] <= 'z') || (line[i] >= 'A' && line[i] <= 'Z')) {
            line[j++] = line[i];
        }
    }
    line[j] = '\0';
    printf("\nOutput String :: ");
    printf("%s", line);
    printf("\n");
    return 0;
}