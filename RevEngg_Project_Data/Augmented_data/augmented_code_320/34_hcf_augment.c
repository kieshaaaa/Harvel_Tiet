// // C program to calculate HCF of two numbers

// // Header Files
#include <stdio.h>
#include <math.h>

// // Main Function Start
int main()
{

    int a, b;
    printf("\nEnter Two Numbers to Find LCM => ");
    scanf("%d%d", &a, &b);

    a = fabs(a);
    b = fabs(b);
    int max_val = a > b ? a : b;
    int min_val = a < b ? a : b;

    // // 1st Approach
    int remainder, hcf_val;
    int iter = 1;
    while (iter)
    {
        remainder = a % b;
        a = b;
        b = remainder;
        if (remainder == 0) iter = 0;
    }

    hcf_val = a;
    printf("\nHCF => %d", hcf_val);

    // // 2nd Approach
    // // int hcf;
    // // if (max % min)
    // // {
    // //    if (max == min + 1 || max == min + 2)
    // //        hcf = 1;
    // //    else
    // //        for (int k = min / 2; k; k--)
    // //        {
    // //            if (num1 % k == 0 && num2 % k == 0)
    // //            {
    // //                hcf = k;
    // //                break;
    // //            }
    // //        }
    // // }
    // // else
    // //    hcf = min;

    // // printf("\nHCF => %d", hcf);

    // // 3rd Approach
    // // int lcm;
    // // for (int j = max; j <= num1 * num2; j += max)
    // // {
    // //    if (j % num1 == 0 && j % num2 == 0)
    // //    {
    // //        lcm = j;
    // //        break;
    // //    }
    // // }
    // // hcf = num1 * num2 / lcm;
    // // printf("\nHCF => %d", hcf);

    // // 4th Approach
    // // int lcm, hcf;
    // // for (int i = max; i <= num1 * num2; i += max)
    // // {
    // //    if (i % min == 0)
    // //    {
    // //        lcm = i;
    // //        break;
    // //    }
    // // }
    // // hcf = num1 * num2 / lcm;
    // // printf("\nHCF => %d", hcf);

    printf("\n");
    return 0;
}
// // Main Function End