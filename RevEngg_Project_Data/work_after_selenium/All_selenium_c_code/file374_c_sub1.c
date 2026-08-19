#include<stdio.h>

int main() {
    int i = 10, j;
    char ch = '*';

    while(i >= 0) {
        j = 0;
        printf("\n");
        while(j < i) {
            printf("%c ", ch);
            j++;
        }
        i--;
    }
    return 0;
}