#include <stdio.h>
#include <string.h>

int main() {
    char str[100], rev[100];
    int len, i, start, end, count = 0;

    printf("\nEnter any Sentence :: ");
    fgets(str, sizeof(str), stdin);
    len = strlen(str);
    str[len - 1] = '\0'; // Remove newline character

    for (i = len - 1; i >= 0; i--) {
        if (str[i] == ' ' || i == 0) {
            if (i == 0) {
                start = i;
            } else {
                start = i + 1;
            }
            for (end = start; str[end] != ' ' && str[end] != '\0'; end++) {
                rev[count++] = str[end];
            }
            rev[count++] = ' ';
        }
    }
    rev[count - 1] = '\0'; // Remove extra space at the end
    printf("\nReversed Sentence :: %s\n", rev);

    return 0;
}