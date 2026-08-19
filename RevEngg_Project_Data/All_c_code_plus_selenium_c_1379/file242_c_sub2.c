#include <stdio.h>

int main() {
    int a, b;
    printf("\nEnter value of a => ");
    scanf("%d", &a);
    printf("\nEnter value of b => ");
    scanf("%d", &b);
    printf("\n\n>>>>>>>>>>> Before Swapping <<<<<<<<<<<\n");
    printf("a => %d, b => %d\n", a, b);

    a = a + b;
    b = a - b;
    a = a - b;

    printf("\n\n>>>>>>>>>>> After Swapping <<<<<<<<<<<\n");
    printf("a => %d, b => %d\n", a, b);

    return 0;
}