#include <stdio.h>

int main() {
    float bs, hra, da, cv, gs;
    int category;

    printf("Enter Basic Salary : ");
    scanf("%f", &bs);

    if(bs < 3000) category = 1;
    else if(bs >= 3000 && bs < 5000) category = 2;
    else category = 3;

    switch(category) {
        case 1:
            da = 0.9 * bs;
            hra = 0.1 * bs;
            cv = 300;
            break;
        case 2:
            da = bs;
            hra = 0.15 * bs;
            cv = 400;
            break;
        case 3:
            da = 1.1 * bs;
            hra = 0.2 * bs;
            cv = 500;
            break;
    }

    gs = bs + da + hra + cv;

    printf("Basic Salary   : %.f \n", bs);
    printf("DA             : %.f \n", da);
    printf("HRA            : %.f \n", hra);
    printf("Conveyance     : %.f \n", cv);
    printf("Gross Salary   : %.f \n", gs);

    return 0;
}