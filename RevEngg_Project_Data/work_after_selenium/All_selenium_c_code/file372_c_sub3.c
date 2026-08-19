#include <stdio.h>

int main() {
    int i;

    printf("Capital (upper) case characters:\n");
    for(i = 65; i <= 90; i++) {
        printf("%c ", i);
    }

    printf("\n\nLower case characters:\n");
    for(i = 97; i <= 122; i++) {
        printf("%c ", i);
    }
     
    return 0;
}