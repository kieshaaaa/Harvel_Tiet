#include <stdio.h>

int main() {
    float bs, hra, da, cv, gs;

    printf("Enter Basic Salary : ");
    scanf("%f", &bs);

    da = (bs >= 5000) ? 1.1 * bs : ((bs >= 3000) ? bs : 0.9 * bs);
    hra = (bs >= 5000) ? 0.2 * bs : ((bs >= 3000) ? 0.15 * bs : 0.1 * bs);
    cv = (bs >= 5000) ? 500 : ((bs >= 3000) ? 400 : 300);

    gs = bs + da + hra + cv;

    printf("Basic Salary   : %.f \n", bs);
    printf("DA             : %.f \n", da);
    printf("HRA            : %.f \n", hra);
    printf("Conveyance     : %.f \n", cv);
    printf("Gross Salary   : %.f \n", gs);

    return 0;
}