#include <stdio.h>
#include <math.h>

int main() {
    int num;
    float root;

    printf("\nEnter any number :: ");
    scanf("%d", &num);

    root = sqrt((float)num);

    if (floor(root) == ceil(root))
        printf("\nThe Entered Number [ %d ] is a Perfect Square.\n", num);
    else
        printf("\nThe Entered Number [ %d ] is not a Perfect Square.\n", num);

    return 0;
}