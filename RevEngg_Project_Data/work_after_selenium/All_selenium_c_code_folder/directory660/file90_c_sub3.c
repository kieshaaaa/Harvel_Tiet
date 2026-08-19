#include <stdio.h>

int main() {
    int a, b, temp;
    printf("\nEnter value of a => ");
    scanf("%d", &a);
    printf("\nEnter value of b => ");
    scanf("%d", &b);

    // Using a Temporary Variable
    temp = a;
    a = b;
    b = temp;

    printf("a => %d, b => %d\n", a, b);

    return 0;
}