#include <stdio.h>
#include <math.h>

int main() {
    int i, flag = 1;
    int n;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &n);
    
    if (n <= 1) flag = 0;
    for (i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) {
            flag = 0;
            break;
        }
    }

    if (flag == 1)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", n);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", n);
    
    return 0;
}