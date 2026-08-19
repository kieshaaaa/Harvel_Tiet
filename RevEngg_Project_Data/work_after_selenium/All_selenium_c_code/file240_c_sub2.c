#include <stdio.h>
#include <math.h>

int main() {
    int n;
    printf("Enter the value of n to find the nth Armstrong number: ");
    scanf("%d", &n);

    for (int num = 1, count = 0;; num++) {
        int sum = 0, temp = num;
        float digits = 0;
        for (int t = temp; t; digits++, t /= 10);
        
        for (int t = temp; t; t /= 10) {
            sum += pow(t % 10, (int)digits);
        }
        
        if (sum == num) {
            if (++count == n) {
                printf("The %dth Armstrong number is: %d\n", n, num);
                break;
            }
        }
    }

    return 0;
}