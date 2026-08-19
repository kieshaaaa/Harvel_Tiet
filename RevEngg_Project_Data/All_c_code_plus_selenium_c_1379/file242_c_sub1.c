#include <stdio.h>

int main() {
    int a, b, temp;
    printf("\nEnter value of a => ");
    scanf("%d", &a);
    printf("\nEnter value of b => ");
    scanf("%d", &b);
    printf("\n\n>>>>>>>>>>> Before Swapping <<<<<<<<<<<\n");
    printf("a => %d, b => %d\n", a, b);

    temp = a;
    a = b;
    b = temp;

    printf("\n\n>>>>>>>>>>> After Swapping <<<<<<<<<<<\n");
    printf("a => %d, b => %d\n", a, b);

    return 0;
}